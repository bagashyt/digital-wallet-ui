import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class SlideButton extends StatelessWidget {
  final String labelText;
  late double marginHorizontal;
  late double marginVertical;
  SlideButton(
      {Key? key,
      required this.labelText,
      this.marginHorizontal = 30,
      this.marginVertical = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: marginHorizontal, vertical: marginVertical),
      height: 65,
      width: double.infinity,
      child: SliderButton(
        width: MediaQuery.of(context).size.width - 60,
        shimmer: false,
        action: () {
          print('swiped');
        },
        label: Text(
          'SWIPE TO SEND',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        dismissible: false,
        alignLabel: const Alignment(0.2, 0),
        buttonSize: 50.0,
        buttonColor: Colors.white,
        icon: Icon(
          Icons.arrow_forward,
          color: Color(0xff525298),
        ),
        backgroundColor: Color(0xff525298),
      ),
    );
  }
}
