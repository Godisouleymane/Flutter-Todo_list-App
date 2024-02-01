import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_list/constants/app_style.dart';


class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({
    super.key,
    required this.iconSection,
    required this.textTitle,
    required this.valueText
  });

  final String textTitle;
  final String valueText;
  final IconData iconSection;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textTitle, style: AppStyle.headingOne,),
          Gap(6),
          Material(
            child: Ink(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
              ),
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                Icon(iconSection),
                Gap(12),
                Text(valueText)
                          ],
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

