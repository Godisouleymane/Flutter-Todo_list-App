import 'package:flutter/material.dart';

class AddNewTaskModal extends StatelessWidget {
  const AddNewTaskModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
    );
  }
}