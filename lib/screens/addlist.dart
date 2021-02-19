import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class AddTaskModal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff2a2a2e), fontSize: 26),
            ),
            TextField(
              cursorColor:Color(0xff2a2a2e),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTask = newValue;
              },
            ),
            SizedBox(height: 20,),
            FlatButton(
              color: Color(0xff2a2a2e),
              child: Text('Add',style: TextStyle(color: Colors.white),),
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).addNewTask(newTask);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
