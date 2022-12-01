import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exampless/provider/model_class.dart';
import 'package:provider_exampless/provider/provider_function.dart';
import 'package:provider_exampless/widget/input_dat.dart';
import 'package:provider_exampless/widget/item.dart';

class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            InputData(),
            ItemShowcase(),
          ],
        ),
      )),
    );
  }
}
