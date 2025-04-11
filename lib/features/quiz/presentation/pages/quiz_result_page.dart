


import 'package:flutter/material.dart';

class QuizResultPage extends StatelessWidget {
  const QuizResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const ScoreCircle(score: 85),
              const SizedBox(height: 20),
              const ResultMessage(message: "Excellent Work!"),
              const SubtitleMessage(message: "You're mastering this topic!"),
              const SizedBox(height: 20),
              const ScoreDetailsCard(
                correctAnswers: 17,
                totalQuestions: 20,
                timeInMinutes: 12,
                timeInSeconds: 45,
                accuracy: 85,
              ),
              const SizedBox(height: 20),
              const ActionButton(
                text: "View Detailed Analysis",
                isPrimary: true,
              ),
              const SizedBox(height: 10),
              const ActionButton(
                text: "Retake Quiz",
                isPrimary: false,
                isOutlined: true,
              ),
              const SizedBox(height: 10),
              const ActionButton(
                text: "Back to Home",
                isPrimary: false,
                isOutlined: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScoreCircle extends StatelessWidget {
  final int score;

  const ScoreCircle({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFF7E57C2),
        border: Border.all(color: Colors.blue.shade100, width: 2),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$score%",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              "Your Score",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultMessage extends StatelessWidget {
  final String message;

  const ResultMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}

class SubtitleMessage extends StatelessWidget {
  final String message;

  const SubtitleMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[600],
      ),
    );
  }
}

class ScoreDetailsCard extends StatelessWidget {
  final int correctAnswers;
  final int totalQuestions;
  final int timeInMinutes;
  final int timeInSeconds;
  final int accuracy;

  const ScoreDetailsCard({
    Key? key,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.timeInMinutes,
    required this.timeInSeconds,
    required this.accuracy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Score Details",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ScoreDetailItem(
                  icon: const Icon(Icons.check_circle, color: Colors.green),
                  value: "$correctAnswers/$totalQuestions",
                  label: "Correct",
                ),
                ScoreDetailItem(
                  icon: const Icon(Icons.access_time, color: Colors.purple),
                  value: "$timeInMinutes:$timeInSeconds",
                  label: "Time",
                ),
                ScoreDetailItem(
                  icon: Icon(Icons.bar_chart, color: Colors.blue[400]),
                  value: "$accuracy%",
                  label: "Accuracy",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreDetailItem extends StatelessWidget {
  final Icon icon;
  final String value;
  final String label;

  const ScoreDetailItem({
    Key? key,
    required this.icon,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final bool isOutlined;

  const ActionButton({
    Key? key,
    required this.text,
    this.isPrimary = false,
    this.isOutlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? const Color(0xFF7E57C2) : (isOutlined ? Colors.white : Colors.grey[200]),
          foregroundColor: isPrimary ? Colors.white : (isOutlined ? const Color(0xFF7E57C2) : Colors.black87),
          padding: const EdgeInsets.symmetric(vertical: 16),
          elevation: isPrimary ? 2 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: isOutlined
                ? const BorderSide(color: Color(0xFF7E57C2))
                : BorderSide.none,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}