import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/question_entity.dart';
import '../cubit/question_cubit.dart';
import 'questions_list_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quizz_app_canada/core/storage/storage_service.dart';
import 'package:quizz_app_canada/service_locator.dart';
import 'dart:typed_data';
import 'package:uuid/uuid.dart';

class AddQuestionPage extends StatefulWidget {
  const AddQuestionPage({Key? key}) : super(key: key);

  @override
  State<AddQuestionPage> createState() => _AddQuestionPageState();
}

class _AddQuestionPageState extends State<AddQuestionPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _questionController = TextEditingController();
  final List<TextEditingController> _optionControllers =
      List.generate(4, (_) => TextEditingController());
  int? _correctOptionIndex;
  String? _category;
  String? _difficulty = 'Easy';
  final TextEditingController _explanationController = TextEditingController();
  String? _imageUrl;
  Uint8List? _pickedImageBytes;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _questionController.dispose();
    _explanationController.dispose();
    for (final c in _optionControllers) {
      c.dispose();
    }
    super.dispose();
  }

  void _submit() async {
    if (_formKey.currentState?.validate() ?? false) {
      if (_correctOptionIndex == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select the correct answer.')),
        );
        return;
      }
      setState(() => _isSubmitting = true);
      final uuid = Uuid();
      final questionId = uuid.v4();
      final question = QuestionEntity(
        id: questionId,
        question: _questionController.text,
        options: _optionControllers.map((c) => c.text).toList(),
        correctOptionIndex: _correctOptionIndex!,
        imageUrl: null, // Will be set after upload
        categoryId: _category,
        difficulty: _difficulty,
        explanation: _explanationController.text,
      );
      final cubit = context.read<QuestionCubit>();
      final resultId = await cubit.addQuestion(
        question,
        imageBytes: _pickedImageBytes,
        imageContentType: _pickedImageBytes != null ? 'image/png' : null,
      );
      setState(() => _isSubmitting = false);
      if (resultId != null) {
        await cubit.fetchQuestions();
        if (mounted) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const QuestionsListPage()),
            (route) => false,
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Question added successfully!')),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Question'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            tooltip: 'Go to Questions List',
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const QuestionsListPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: BlocConsumer<QuestionCubit, QuestionState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (_) {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const QuestionsListPage()),
                (route) => false,
              );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Question added successfully!')),
              );
            },
            error: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg)),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading =
              state.maybeWhen(loading: () => true, orElse: () => false);
          return Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final picker = ImagePicker();
                          final picked = await picker.pickImage(
                              source: ImageSource.gallery, imageQuality: 80);
                          if (picked != null) {
                            final bytes = await picked.readAsBytes();
                            setState(() {
                              _pickedImageBytes = bytes;
                            });
                          }
                        },
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade100,
                          ),
                          child: _pickedImageBytes != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.memory(_pickedImageBytes!,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 120),
                                )
                              : const Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.image_outlined,
                                          size: 40, color: Colors.grey),
                                      SizedBox(height: 8),
                                      Text('Upload Image',
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _questionController,
                        decoration: const InputDecoration(
                          labelText: 'Enter your question here',
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) =>
                            v == null || v.isEmpty ? 'Required' : null,
                      ),
                      const SizedBox(height: 24),
                      const Text('Answer Options',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      ...List.generate(
                          4,
                          (i) => Row(
                                children: [
                                  Radio<int>(
                                    value: i,
                                    groupValue: _correctOptionIndex,
                                    onChanged: (val) => setState(
                                        () => _correctOptionIndex = val),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: _optionControllers[i],
                                      decoration: InputDecoration(
                                        labelText:
                                            'Enter option ${String.fromCharCode(65 + i)}',
                                      ),
                                      validator: (v) => v == null || v.isEmpty
                                          ? 'Required'
                                          : null,
                                    ),
                                  ),
                                ],
                              )),
                      const SizedBox(height: 24),
                      const Text('Question Details',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      DropdownButtonFormField<String>(
                        value: _category,
                        decoration:
                            const InputDecoration(labelText: 'Select category'),
                        items: const [
                          DropdownMenuItem(
                              value: '6cd9e356-677b-418e-baaa-f215df26a311',
                              child: Text('Category A')),
                          DropdownMenuItem(
                              value: '1b7e69ba-b316-4ef7-a8b9-f986433c62f8',
                              child: Text('Category B')),
                          DropdownMenuItem(
                              value: 'afe91b85-570c-4050-9340-feb0b950251a',
                              child: Text('Category C')),
                          DropdownMenuItem(
                              value: '82853684-b450-4b66-b357-9fb053bc0df9',
                              child: Text('Category D')),
                        ],
                        onChanged: (val) => setState(() => _category = val),
                        validator: (v) => v == null ? 'Required' : null,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Text('Difficulty:'),
                          const SizedBox(width: 12),
                          ChoiceChip(
                            label: const Text('Easy'),
                            selected: _difficulty == 'Easy',
                            onSelected: (_) =>
                                setState(() => _difficulty = 'Easy'),
                          ),
                          const SizedBox(width: 8),
                          ChoiceChip(
                            label: const Text('Medium'),
                            selected: _difficulty == 'Medium',
                            onSelected: (_) =>
                                setState(() => _difficulty = 'Medium'),
                          ),
                          const SizedBox(width: 8),
                          ChoiceChip(
                            label: const Text('Hard'),
                            selected: _difficulty == 'Hard',
                            onSelected: (_) =>
                                setState(() => _difficulty = 'Hard'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _explanationController,
                        decoration: const InputDecoration(
                          labelText: 'Explanation or hint',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: isLoading || _isSubmitting ? null : _submit,
                        child: isLoading || _isSubmitting
                            ? const CircularProgressIndicator()
                            : const Text('Submit Question'),
                      ),
                    ],
                  ),
                ),
              ),
              if (isLoading || _isSubmitting)
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
