import 'package:flutter/material.dart';
import 'package:nlw_dev_quiz/core/app_colors.dart';
import 'package:nlw_dev_quiz/core/app_text_styles.dart';
import 'package:nlw_dev_quiz/shared/widgets/progress-indicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final String image;
  final double percent;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.image,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.border,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            child: Image.asset(image),
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  completed,
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 4,
                child: ProgressIndicatorWidget(value: percent),
              ),
            ],
          )
        ],
      ),
    );
  }
}
