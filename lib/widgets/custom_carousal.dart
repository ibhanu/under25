import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:under25/constants.dart';
import 'package:under25/models/top_dentist.dart';
import 'package:under25/screens/dentist_profile/dentist_profile.dart';

class TopDentistCarousal extends StatefulWidget {
  const TopDentistCarousal({
    Key? key,
    @required this.topDentist,
  }) : super(key: key);

  final List<TopDentist>? topDentist;

  @override
  _TopDentistCarousalState createState() => _TopDentistCarousalState();
}

class _TopDentistCarousalState extends State<TopDentistCarousal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: CarouselSlider.builder(
        itemCount: widget.topDentist?.length,
        options: CarouselOptions(
          height: 300,
          viewportFraction: 1,
          autoPlay: true,
          enableInfiniteScroll: false,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (context, i, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DentistProfile(
                            topDentist: widget.topDentist?[i],
                          )));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 200,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width / 4.3,
                              width: MediaQuery.of(context).size.width / 4.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      widget.topDentist?[i].image as String),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.topDentist?[i].name as String,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  'Dentist',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const Text(
                                  'Bengaluru',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const Text(
                                  '+91 XXXXX XXXXX',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Center(
                                child: FaIcon(
                              FontAwesomeIcons.phoneVolume,
                              color: primaryColor,
                            )))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.solidClock,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Friday, Feb 21, 10:00 am - 12:00 pm',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
