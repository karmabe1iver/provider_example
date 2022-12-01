import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/model_class.dart';
import '../provider/provider_function.dart';

class InputData extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemData>(builder: (context, data, child) {
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 30,
          width: double.infinity,
          color: Colors.grey.shade300,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter Item',
              // border: InputBorder.none,
            ),
          ),
        ),
       ElevatedButton(
          onPressed:() =>data.add(Item(item: controller.text.toString())),
          style: ButtonStyle(
            elevation: MaterialStatePropertyAll(4.0),
            backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
          ),
          child: Text('SUBMIT'),
        ),
      ]);
    }
    );
  }
}
