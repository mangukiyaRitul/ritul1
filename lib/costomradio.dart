import 'package:flutter/material.dart';

  class costomradio extends StatelessWidget {
    final dynamic value,groupValue;
    final ValueChanged<dynamic> onChanged;
    final Widget? title;
    final String? titlesting;
    const costomradio({Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
      this.title,
      this.titlesting,

  }) :   assert(
    !(title != null && titlesting != null),
    "ErrorMsg : onliy one use ",
    ),super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Row(
        children: [
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
        ),

          if(titlesting != null)...[
            Text("$titlesting"),
          ],
          if(title != null)...[
            title!,
          ]
      ]
      ),
    );
  }
}
