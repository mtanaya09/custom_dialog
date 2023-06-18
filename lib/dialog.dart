import 'package:dialog_test/generic_dialog.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Dialog In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            // showDialog(context: context,
            //   builder: (BuildContext context){
            //   return CustomDialogBox(
            //     title: "Custom Dialog Demo",
            //     descriptions: "We found a patient in your list containing similar information. Click Continue, to create another dictation. Otherwise, click Clear to enter the information again.",
            //     text: "Yes",
            //   );
            //   }
            // );
            final buttonClicked = await showGenericDialog(context, "Hospital number already exists!");
            if (buttonClicked) {
              print('continue pressed');
            } else {
              print('clear pressed');
            }
          },
          child: const Text("Custom Dialog"),
        ),
      ),
    );
  }
}
