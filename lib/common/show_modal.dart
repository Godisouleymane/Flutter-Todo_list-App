import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_list/constants/app_style.dart';
import 'package:todo_list/widget/dateTime_widget.dart';
import 'package:todo_list/widget/radio_widget.dart';
import 'package:todo_list/widget/textField_widget.dart';

class AddNewTaskModal extends StatelessWidget {
  const AddNewTaskModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      height: MediaQuery.of(context).size.height * 0.70,
      child: SingleChildScrollView(
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
           TextFieldWidget(hintText: 'Add Task Name', maxLine: 1),
           Gap(12),
           Text('Description', style: AppStyle.headingOne,),
           Gap(6),
           TextFieldWidget(hintText: 'Add Descriptions', maxLine: 5),
           Gap(12),
           Text('Category', style: AppStyle.headingOne,),
           Row(
            children: [
              Expanded(
                child:  RadioWidget(categColor: Colors.green, titleRadio: 'LRN')
                ),
              Expanded(
                child:  RadioWidget(categColor: Colors.blue.shade700, titleRadio: 'WEK')
                ),
              Expanded(
                child:  RadioWidget(categColor: Colors.amberAccent.shade700, titleRadio: 'GEN')
                ),
            ],
           ),
        
           const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            DateTimeWidget(iconSection: CupertinoIcons.calendar, textTitle: 'Date', valueText: 'dd/mm/yy'),
              Gap(22),
             DateTimeWidget(iconSection: CupertinoIcons.clock, textTitle: 'Time', valueText: 'hh : mm'),
            ],
           ),
          Gap(12),
           Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade800,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    side: BorderSide(
                      color: Colors.blue.shade800
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14)
                  ),
                  onPressed: (){},
                   child: Text('Cancel'))
                ),
                Gap(20),
              Expanded(
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14)
                  ),
                  onPressed: (){},
                   child: Text('Create'))
                ),
            ],
           )
          ],
        ),
      ),
  
    );
  }
}
