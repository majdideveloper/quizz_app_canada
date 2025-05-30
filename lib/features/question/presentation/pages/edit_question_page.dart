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

class EditQuestionPage extends StatefulWidget {
  final QuestionEntity question;
  const EditQuestionPage({Key? key, required this.question}) : super(key: key);

  @override
  State<EditQuestionPage> createState() => _EditQuestionPageState();
}

class _EditQuestionPageState extends State<EditQuestionPage> {
  late TextEditingController _questionController;
  late List<TextEditingController> _optionControllers;
  int? _correctOptionIndex;
  String? _category;
  String? _difficulty;
  late TextEditingController _explanationController;
  String? _imageUrl;
  Uint8List? _pickedImageBytes;
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    _questionController = TextEditingController(text: widget.question.question);
    _optionControllers = widget.question.options
        .map((o) => TextEditingController(text: o))
        .toList();
    _correctOptionIndex = widget.question.correctOptionIndex;
    _category = widget.question.categoryId;
    _difficulty = widget.question.difficulty;
    _explanationController =
        TextEditingController(text: widget.question.explanation);
    _imageUrl = widget.question.imageUrl;
  }

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
    if (_questionController.text.isEmpty ||
        _optionControllers.any((c) => c.text.isEmpty) ||
        _correctOptionIndex == null ||
        _category == null) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please fill all fields.')));
      return;
    }
    setState(() => _isSubmitting = true);
    String? imageUrl = _imageUrl;
    final updatedQuestion = QuestionEntity(
      id: widget.question.id,
      question: _questionController.text,
      options: _optionControllers.map((c) => c.text).toList(),
      correctOptionIndex: _correctOptionIndex!,
      imageUrl: imageUrl,
      categoryId: _category,
      difficulty: _difficulty,
      explanation: _explanationController.text,
    );
    await context.read<QuestionCubit>().updateQuestion(
          updatedQuestion,
          imageBytes: _pickedImageBytes,
          imageContentType: _pickedImageBytes != null ? 'image/png' : null,
        );
    setState(() => _isSubmitting = false);
    if (mounted) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const QuestionsListPage()),
        (route) => false,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Question updated successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Question')),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Form(
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
                          : (_imageUrl != null && _imageUrl!.isNotEmpty)
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(_imageUrl!,
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
                                onChanged: (val) =>
                                    setState(() => _correctOptionIndex = val),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: _optionControllers[i],
                                  decoration: InputDecoration(
                                    labelText:
                                        'Enter option ${String.fromCharCode(65 + i)}',
                                  ),
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
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text('Difficulty:'),
                      const SizedBox(width: 12),
                      ChoiceChip(
                        label: const Text('Easy'),
                        selected: _difficulty == 'Easy',
                        onSelected: (_) => setState(() => _difficulty = 'Easy'),
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
                        onSelected: (_) => setState(() => _difficulty = 'Hard'),
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
                    onPressed: _isSubmitting ? null : _submit,
                    child: _isSubmitting
                        ? const CircularProgressIndicator()
                        : const Text('Save Changes'),
                  ),
                ],
              ),
            ),
          ),
          if (_isSubmitting)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.3),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
