import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:under25/constants.dart';
import 'package:under25/models/top_dentist.dart';
import 'package:under25/widgets/custom_button.dart';

class DentistProfile extends StatelessWidget {
  final TopDentist? topDentist;
  const DentistProfile({Key? key, this.topDentist}) : super(key: key);

  PreferredSizeWidget _appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 70),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: customButton(
                child: const FaIcon(
                  FontAwesomeIcons.chevronLeft,
                  color: primaryColor,
                ),
              ),
            ),
            const FaIcon(
              FontAwesomeIcons.stopwatch,
              color: primaryColor,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(context),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Doctor Profile',
                  style: titleTextStyle,
                ),
              ),
              Center(
                child: Text(
                  'Timing 10:00 am - 12:00 pm',
                  style: titleTextStyle.copyWith(
                      color: Colors.grey.shade400, fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                      topDentist?.image as String,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  topDentist?.name as String,
                  style: bigTitleTextStyle,
                ),
              ),
              const Center(
                child: Text(
                  'MBBS, MD, MSc',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  const FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  const FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  const FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.grey.shade300,
                    size: 18,
                  ),
                ],
              ),
              const Center(
                child: Text(
                  '4.0 out of 5.0',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
              Center(
                child: Text(
                  '280 patient revies',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 45,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xffE0F5F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.video,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xffC5F6E5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Stack(
                        children: const [
                          Positioned(
                            left: 1.0,
                            top: 2.0,
                            child: Icon(
                              Icons.call_end,
                              color: Colors.black26,
                              size: 30,
                            ),
                          ),
                          Icon(
                            Icons.call_end,
                            size: 30,
                            color: Color(0xff79D2B4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xffE0F5F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.solidCommentDots,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  primary: true,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      margin: const EdgeInsets.all(25),
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: const Offset(2.0, 2.0),
                              blurRadius: 5),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.hospital,
                            color: primaryColor,
                            size: 70,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Hospital',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(25),
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: const Offset(2.0, 2.0),
                              blurRadius: 5),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.hospital,
                            color: primaryColor,
                            size: 70,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Hospital',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(25),
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: const Offset(2.0, 2.0),
                              blurRadius: 5),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.hospital,
                            color: primaryColor,
                            size: 70,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Hospital',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(25),
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: const Offset(2.0, 2.0),
                              blurRadius: 5),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.hospital,
                            color: primaryColor,
                            size: 70,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Hospital',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
