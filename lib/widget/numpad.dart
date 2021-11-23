import 'package:flutter/material.dart';

class Numpad extends StatelessWidget {
  List<String> numList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '.',
    '0',
    '<',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 310.0,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: numList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 25 / 15),
                itemBuilder: (BuildContext context, int index) {
                  String itemKey = numList[index];
                  return NumberKey(numKey: itemKey);
                }),
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     NumberKey(numKey: '.'),
        //     NumberKey(numKey: '0'),
        //     NumberKey(numKey: '<'),
        //   ],
        // ),
      ],
    );
  }
}

class NumberKey extends StatelessWidget {
  final String numKey;
  NumberKey({Key? key, required this.numKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55.0, vertical: 27.0),
      child: Text(
        numKey,
        style: TextStyle(color: Color(0xff9494AD), fontSize: 25.0),
      ),
    );
  }
}
