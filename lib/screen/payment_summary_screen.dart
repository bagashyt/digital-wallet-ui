import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/widget/custom_appbar.dart';
import 'package:digital_wallet/widget/slide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentSummaryScreen extends StatelessWidget {
  const PaymentSummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Payment Summary',
        icon: Icons.arrow_back,
        color: kBodyColor,
      ),
      backgroundColor: kBodyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30,
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: PaymentTopClipper(),
                          child: Container(
                            margin: const EdgeInsets.only(top: 30),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 45.0,
                                vertical: 60.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Simple Package',
                                      style: fontPoppin.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400)),
                                  const SizedBox(height: 10),
                                  const Text(
                                    '14 GB Internet + 2 GB Streaming, Active Period 30 days',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: kLiteColor,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'images/topup_icon.png',
                            height: 60.0,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: List.generate(20, (index) {
                          return Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                height: 3,
                                width: 10,
                                color: Colors.white,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    ClipPath(
                      clipper: PaymentBottomClipper(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                          child: Column(
                            children: [
                              Text(
                                'Thomas Wise',
                                style: fontPoppin.copyWith(fontSize: 18),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                '0821 - 7654 - 3210',
                                style: fontPoppin.copyWith(
                                    fontSize: 15, color: kLiteColor),
                              ),
                              const SizedBox(height: 25),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  hintText: 'Promo Code',
                                  prefixIcon: const Icon(
                                    Icons.bookmark,
                                  ),
                                  suffixIcon: const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(
                                      'APPLY',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  suffixIconConstraints: const BoxConstraints(
                                      minWidth: 0, minHeight: 0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Total',
                              style: fontPoppin.copyWith(fontSize: 16),
                            )),
                            Expanded(
                                child: Text(
                              'Rp 50.000',
                              style: fontPoppin.copyWith(fontSize: 22),
                            ))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SlideButton(
                      labelText: 'SWIPE TO PAY',
                      marginHorizontal: 0,
                      marginVertical: 0,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        color: Colors.white,
                        child: Image.asset(
                          'images/rose_hope.png',
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentBottomClipper extends CustomClipper<Path> {
  double radius = 15;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, radius);
    path.quadraticBezierTo(size.width - radius, radius, size.width - radius, 0);
    path.lineTo(radius, 0);
    path.quadraticBezierTo(radius, radius, 0, radius);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class PaymentTopClipper extends CustomClipper<Path> {
  double radius = 15;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - radius);
    path.quadraticBezierTo(radius, size.height - radius, radius, size.height);
    path.lineTo(size.width - radius, size.height);
    path.quadraticBezierTo(size.width - radius, size.height - radius,
        size.width, size.height - radius);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
