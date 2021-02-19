import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallBack;
  final Function deleteCallBack;

  TaskTile({this.isChecked,this.title,this.checkBoxCallBack,this.deleteCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallBack,
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Color(0xff2a2a2e),
          value: isChecked,
          onChanged: checkBoxCallBack
      ),);
  }
}

//void checkBoxCallBack(bool newCheckValue) {
//  setState(() {
//    isChecked = newCheckValue;
//  });
//}


