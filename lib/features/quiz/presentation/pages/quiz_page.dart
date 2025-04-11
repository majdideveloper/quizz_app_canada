import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/constants/name_collections.dart';
import 'package:quizz_app_canada/core/extensions/option_response.dart';
import 'package:quizz_app_canada/core/extensions/question.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/models/option_response_model.dart';
import 'package:quizz_app_canada/features/quiz/data/models/question_model.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/quiz/quiz_cubit.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/quiz_result_page.dart';

class QuizPage extends StatefulWidget {
  final List<QuestionModel> questions;

  const QuizPage({super.key, required this.questions});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  OptionResponseModel? selectedOption;
  String? feedbackMessage;
  bool hasVerified = false; // Track if user has verified

  void _handleOptionSelected(OptionResponseModel option) {
    if (!hasVerified) {
      setState(() {
        selectedOption = option;
        feedbackMessage = null; // Reset feedback
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[currentQuestionIndex];
    double progress = (currentQuestionIndex + 1) / widget.questions.length;
    final imageUrl = widget.questions[currentQuestionIndex]
        .getImageUrl(BaseUrl.urlIos, NameCollections.questions);
    AppLogger.logger.d("current Question: ${currentQuestion}");
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display question text
              QuizHeader(
                current: currentQuestionIndex + 1,
                total: widget.questions.length,
                progress: progress,
                points: 12,
              ),

              if (imageUrl != null)
                QuestionImage(
                  imageUrl: imageUrl,
                ),

              QuestionText(
                text: currentQuestion.title,
              ),

              // Display options using our updated AnswerOption widget
              ...currentQuestion.options.map(
                (option) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: AnswerOption(
                    answer: option,
                    selectedOption: selectedOption,
                    onOptionSelected: _handleOptionSelected,
                    isDisabled: hasVerified,
                  ),
                ),
              ),

              if (feedbackMessage != null) ...[
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: feedbackMessage!.contains("✅")
                        ? Colors.green.shade50
                        : Colors.red.shade50,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: feedbackMessage!.contains("✅")
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                  child: Text(
                    feedbackMessage!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: feedbackMessage!.contains("✅")
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: !hasVerified
            ? ElevatedButton(
                onPressed: selectedOption == null
                    ? null
                    : () {
                        AppLogger.logger
                            .d("Selected option: ${selectedOption!.title}");
                        AppLogger.logger.d(
                            "Selected option from current question: ${currentQuestion.correctOption.title}");
                        bool isCorrect = selectedOption!.title ==
                            currentQuestion.correctOption.title;
                        setState(() {
                          hasVerified = true; // Hide verify button after this
                          feedbackMessage = isCorrect
                              ? "✅ Correct! ${currentQuestion.hintWrongAnswer}"
                              : "❌ Incorrect! Hint: ${currentQuestion.hintWrongAnswer}";
                        });
                      },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                ),
                child: const Text('Verify Answer'),
              )
            : ElevatedButton(
                onPressed: () {
                  if (currentQuestionIndex < widget.questions.length - 1) {
                    setState(() {
                      currentQuestionIndex++;
                      selectedOption = null;
                      feedbackMessage = null;
                      hasVerified =
                          false; // Reset verification for next question
                    });
                  } else {
                    // context.read<QuizCubit>().completeFreeQuiz();
                    // Show result page or navigate to another screen
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizResultPage(),
                    ),
                  );
                    // Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                ),
                child: Text(
                  currentQuestionIndex == widget.questions.length - 1
                      ? 'Finish Quiz'
                      : 'Next Question',
                  style: TextStyle(fontSize: 16),
                ),
              ),
      ),
    );
  }
}

class QuizHeader extends StatelessWidget {
  final int current;
  final int total;
  final int points;
  final double progress;

  const QuizHeader({
    super.key,
    required this.current,
    required this.total,
    required this.points,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopProgressBar(progress: progress),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Question $current/$total',
                style: Theme.of(context).textTheme.bodyMedium),
            Text('$points points',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}

class QuestionImage extends StatelessWidget {
  final String imageUrl;

  const QuestionImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child:
            Image.network(imageUrl, height: 200, width: 200, fit: BoxFit.cover),
      ),
    );
  }
}

class QuestionText extends StatelessWidget {
  final String text;

  const QuestionText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}

class _HintText extends StatelessWidget {
  final String description;

  const _HintText({required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style:
          Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
    );
  }
}



class AnswerOption extends StatelessWidget {
  final OptionResponseModel answer;
  final OptionResponseModel? selectedOption;
  final bool isDisabled;
  final Function(OptionResponseModel) onOptionSelected;

  const AnswerOption({
    super.key,
    required this.answer,
    required this.selectedOption,
    required this.onOptionSelected,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        answer.getImageUrl(BaseUrl.urlIos, NameCollections.optionsResponses);
    final isSelected = selectedOption == answer;

    return Card(
      elevation: isSelected ? 4 : 1,
      color: isSelected ? Colors.blue.shade50 : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: isSelected ? Colors.blue : Colors.grey.shade300,
          width: isSelected ? 2 : 1,
        ),
      ),
      child: ListTile(
        leading: imageUrl != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(imageUrl,
                    width: 40, height: 40, fit: BoxFit.cover),
              )
            : SizedBox.shrink(),
        title: Text(
          answer.title,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: isDisabled ? null : () => onOptionSelected(answer),
      ),
    );
  }
}

class TopProgressBar extends StatelessWidget {
  final double progress;
  const TopProgressBar({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progress,
    );
  }
}
