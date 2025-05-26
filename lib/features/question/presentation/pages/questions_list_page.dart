import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/question_cubit.dart';
import '../../domain/entities/question_entity.dart';
import 'add_question_page.dart';
import 'edit_question_page.dart';

class QuestionsListPage extends StatefulWidget {
  const QuestionsListPage({Key? key}) : super(key: key);

  @override
  State<QuestionsListPage> createState() => _QuestionsListPageState();
}

class _QuestionsListPageState extends State<QuestionsListPage> {
  @override
  void initState() {
    super.initState();
    // Fetch questions when the page is first shown
    Future.microtask(() => context.read<QuestionCubit>().fetchQuestions());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Questions')),
      body: BlocBuilder<QuestionCubit, QuestionState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('No data loaded.')),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (msg) => Center(child: Text(msg)),
            loaded: (questions) {
              if (questions.isEmpty) {
                return const Center(child: Text('No questions found.'));
              }
              return ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: questions.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, index) {
                  final q = questions[index];
                  print(q.imageUrl);
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (q.imageUrl != null && q.imageUrl!.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                q.imageUrl!,
                                height: 120,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.broken_image,
                                        size: 60, color: Colors.grey),
                                loadingBuilder: (context, child, progress) {
                                  if (progress == null) return child;
                                  return SizedBox(
                                    height: 120,
                                    child: Center(
                                        child: CircularProgressIndicator(
                                            value: progress
                                                        .expectedTotalBytes !=
                                                    null
                                                ? progress
                                                        .cumulativeBytesLoaded /
                                                    (progress
                                                            .expectedTotalBytes ??
                                                        1)
                                                : null)),
                                  );
                                },
                              ),
                            ),
                          ),
                        Text(q.question,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...q.options.asMap().entries.map((entry) {
                          final isCorrect = entry.key == q.correctOptionIndex;
                          return Row(
                            children: [
                              Icon(
                                isCorrect ? Icons.check_circle : Icons.circle,
                                color: isCorrect ? Colors.green : Colors.grey,
                                size: 16,
                              ),
                              const SizedBox(width: 6),
                              Text(entry.value),
                            ],
                          );
                        }),
                        if (q.explanation != null && q.explanation!.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text('Hint: ${q.explanation!}',
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.grey)),
                          ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () async {
                            await Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => EditQuestionPage(question: q),
                              ),
                            );
                            // Always refresh after returning from edit
                            context.read<QuestionCubit>().fetchQuestions();
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () async {
                            final confirm = await showDialog<bool>(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Delete Question'),
                                content: const Text(
                                    'Are you sure you want to delete this question?'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(true),
                                    child: const Text('Delete',
                                        style: TextStyle(color: Colors.red)),
                                  ),
                                ],
                              ),
                            );
                            if (confirm == true) {
                              context.read<QuestionCubit>().deleteQuestion(q);
                            }
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const AddQuestionPage()),
          );
          // After returning, refresh the questions list
          context.read<QuestionCubit>().fetchQuestions();
        },
        child: const Icon(Icons.add),
        tooltip: 'Add Question',
      ),
    );
  }
}
