import 'package:flutter/material.dart';
import 'package:nlw_dev_quiz/core/app_text_styles.dart';
import 'package:nlw_dev_quiz/shared/widgets/progress-indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão 04",
                style: AppTextStyles.body,
              ),
              Text(
                "de 10",
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: 0.7),
        ],
      ),
    );
  }
}
