import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_list/constants/app_style.dart';

class AddNewTaskModal extends StatelessWidget {
  const AddNewTaskModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      height: MediaQuery.of(context).size.height * 0.70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            child:Text('New Task Todo', 
            textAlign: TextAlign.center, style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          Divider(
            thickness: 1.2,
            color: Colors.grey.shade200,
          ),
          const Gap(12),
          const Text("Title Task", style: AppStyle.headingOne),
          const Gap(6),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8)
            ),
            child: TextField(
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none
              ),
            )
            ),
        ],
      ),
  
    );
  }
}