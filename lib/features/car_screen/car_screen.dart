import 'package:flutter/material.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // stops: [0.8, 0.2],
              colors: [ColorsManager.grayBlack, ColorsManager.grayLight],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          )
        ],
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.alarm),
        ),
      ),
    );
  }
}
