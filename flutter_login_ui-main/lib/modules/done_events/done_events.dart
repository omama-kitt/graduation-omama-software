import 'package:flutter/material.dart';
import 'package:flutter_login_ui/layout/todo_layoutcontroller.dart';
import 'package:flutter_login_ui/shared/componets/componets.dart';
import 'package:get/get.dart';


class DoneEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoLayoutController>(
      init: Get.find<TodoLayoutController>(),
      builder: (todoController) => eventsBuilder(
          tasks: todoController.doneeventList,
          message: "No Finished Events",
          svgimage: "assets/done_task_svg.svg",
          context: context),
    );
  }
}
