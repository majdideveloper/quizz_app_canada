import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/widgets/secondry_button.dart';
import '../../domain/entities/faq_entity.dart';

class FaqList extends StatefulWidget {
  final List<FaqEntity> faqs;
  final VoidCallback? onViewAllPressed;
  final bool isPage;

  const FaqList({
    super.key,
    required this.faqs,
    this.onViewAllPressed,
    required this.isPage,
  });

  @override
  State<FaqList> createState() => _FaqListState();
}

class _FaqListState extends State<FaqList> {
  final Map<String, bool> _expandedMap = {};

  @override
  Widget build(BuildContext context) {
    final visibleFaqs = widget.faqs.where((f) => f.visible).toList();
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Frequently Asked Questions',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          'Answers to the most common questions from students',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
        ...visibleFaqs.map(_buildFaqItem),
        const SizedBox(height: 16),
        if(!widget.isPage)
        SecondryButton(
          text: 'View All FAQs',
          color: theme.colorScheme.primary,
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/fags_list_page',
              arguments: visibleFaqs,
            );
          },
        )
      ],
    );
  }

//!  change this to a class widget
  Widget _buildFaqItem(FaqEntity faq) {
    final isExpanded = _expandedMap[faq.id] ?? true;
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.surface),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: theme.colorScheme.surface,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            setState(() {
              _expandedMap[faq.id] = !isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        faq.question,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.orange,
                    ),
                  ],
                ),
                AnimatedCrossFade(
                  firstChild: const SizedBox.shrink(),
                  secondChild: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      faq.answer,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 200),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
