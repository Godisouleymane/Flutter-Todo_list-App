import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/provider/radio_provider.dart';

class RadioWidget extends ConsumerWidget {
  const RadioWidget({
    super.key,
    required this.categColor,
    required this.titleRadio,
    required this.valueInput
  });

  final String titleRadio;
  final Color categColor;
  final valueInput;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radio = ref.watch(radioProvider);
    return Material(
      child: Theme(
        data: ThemeData(unselectedWidgetColor: categColor),
        child: RadioListTile(
          contentPadding: EdgeInsets.zero,
         title: Transform.translate(
           offset: const Offset(-22, 0),
           child: Text(titleRadio, style: TextStyle(
            color: categColor,
            fontWeight: FontWeight.w700
           ),)),
         value: valueInput,
         groupValue: 0, 
         onChanged: (value){
          print('Clicked');
         }),
      ),
    );
  }
}

