import 'package:flutter/material.dart';

Future showGenericDialog(
  BuildContext context,
  title,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        title: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -70,
              right: 20,
              left: 20,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(45)),
                    child: Image.asset("assets/warning-sign.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        contentPadding: const EdgeInsets.only(top: 25, bottom: 30, left: 15, right: 15),
        content: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(color: Colors.black, height: 1.5),
            children: [
              TextSpan(
                  text:
                      "We found a patient in your list containing similar information. Click"),
              TextSpan(
                text: " Continue ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: "to create another dictation. Otherwise, click"),
              TextSpan(
                text: " Clear ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: "to enter the information again."),
            ],
          ),
        ),
        actionsPadding: EdgeInsets.zero,
        actions: [
          const Divider(
            height: 0,
            color: Colors.grey,
            thickness: 1.5,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextButton(
                    child: const Text(
                      "Clear",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                ),
                const VerticalDivider(
                  thickness: 1.5,
                  color: Colors.grey,
                ),
                TextButton(
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
