import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String title;

  const CommonButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Text(title),
        ),
        style: ElevatedButton.styleFrom(
            primary: Color(0xff525298),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
