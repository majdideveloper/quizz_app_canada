import 'package:flutter/material.dart';
import 'package:quizz_app_canada/features/quiz/data/models/option_response_model.dart';
import 'package:quizz_app_canada/features/quiz/data/models/question_model.dart';

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

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[currentQuestionIndex];
    double progress = (currentQuestionIndex + 1) / widget.questions.length;

    return Scaffold(
      appBar: AppBar(title:  LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
            ),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
    
            // Display question text
            Text(
              currentQuestion.title,
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
    
            // Display options using RadioListTile<OptionResponseModel>
            ...currentQuestion.options.map(
              (option) => RadioListTile<OptionResponseModel>(
                title: Text(option.title),
                value: option,
                groupValue: selectedOption,
                onChanged: hasVerified
                    ? null // Disable selection after verifying
                    : (value) {
                        setState(() {
                          selectedOption = value;
                          feedbackMessage = null; // Reset feedback
                        });
                      },
              ),
            ),
            const SizedBox(height: 20),
    
            // Show "Verify Answer" button only if not verified yet
            if (!hasVerified)
              ElevatedButton(
                onPressed: () {
                  if (selectedOption != null) {
                    bool isCorrect = selectedOption! == currentQuestion.correctOption;
                    setState(() {
                      hasVerified = true; // Hide verify button after this
                      feedbackMessage = isCorrect
                          ? "✅ Correct! ${currentQuestion.hintWrongAnswer}"
                          : "❌ Incorrect! Hint: ${currentQuestion.hintWrongAnswer}";
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please select an answer')),
                    );
                  }
                },
                child: const Text('Verify Answer'),
              ),
    
            // Show feedback message
            if (feedbackMessage != null) ...[
              const SizedBox(height: 20),
              Text(
                feedbackMessage!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: feedbackMessage!.contains("✅") ? Colors.green : Colors.red,
                ),
              ),
            ],
    
            const SizedBox(height: 20),
    
            // "Next Question" button (only appears after verifying)
            if (hasVerified)
              ElevatedButton(
                onPressed: () {
                  if (currentQuestionIndex < widget.questions.length - 1) {
                    setState(() {
                      currentQuestionIndex++;
                      selectedOption = null;
                      feedbackMessage = null;
                      hasVerified = false; // Reset verification for next question
                    });
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Text(currentQuestionIndex == widget.questions.length - 1
                    ? 'Finish Quiz'
                    : 'Next Question'),
              ),
          ],
        ),
      ),
    );
  }
}


