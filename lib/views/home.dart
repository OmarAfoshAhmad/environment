import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/Components/button_component.dart';
import 'package:test_flutter/Components/field_component.dart';
import 'package:test_flutter/Core/GeneralController.dart';
import 'package:test_flutter/Core/ThemeClass.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    GeneralController controller = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: const Text("data"),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        body: Column(children: [
          TextFieldComponent(controller: name),
          TextFieldComponent(
            controller: name,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              child: ListTile(
                leading: Text("ssss"),
              ),
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // ButtonComponent(backcolor: ThemeClass.darkTheme.colorScheme.primary),
          ButtonComponent(
              backcolor: Theme.of(context).colorScheme.primary,
              textStyle: Theme.of(context).textTheme.bodyLarge),
          TextButton(
              onPressed: () {
                controller.changeMode();
              },
              child: const Text("Change Theme"))
        ]));
  }
}
