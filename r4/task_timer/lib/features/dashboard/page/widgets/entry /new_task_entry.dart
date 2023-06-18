import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/widgets/margins.dart';

import '../new_task_actions.dart';
import 'task_title_field.dart';

class NewTaskEntry extends StatefulWidget {
  final bool isVisible;

  const NewTaskEntry({super.key, required this.isVisible});

  @override
  State<NewTaskEntry> createState() => _NewTaskEntryState();
}

class _NewTaskEntryState extends State<NewTaskEntry> {
  final TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisible,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: TaskTitleField(textFieldController)),
          const HorizontalNormalMargin(),
          NewTaskActions(textFieldController)
        ],
      ),
    );
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }
}
