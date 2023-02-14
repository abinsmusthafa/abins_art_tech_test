import 'package:abins_art_tech_grp_task/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/const.dart';
import '../../widgets/container_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 40.h, right: 5, left: 5),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 10,
              left: 10,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          text: "My Cards (1)",
                          isShowUpperCase: false,
                          size: 20,
                          color: Colors.black.withOpacity(.4),
                          weight: FontWeight.w800,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(const Radius.circular(20)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.filter_alt,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
            top: 180,
            right: 10,
            left: 10,
            child: Container(
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                      child: Image.asset(
                        Assets.homeImage,
                        fit: BoxFit.fill,
                        width: 500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [1, 2, 3, 4]
                            .map((item) => Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: item == 1 ? Palette.primaryColor : Colors.black.withOpacity(0.4),
                                      borderRadius: const BorderRadius.all(const Radius.circular(15)),
                                    ),
                                    height: item == 1 ? 7 : 6,
                                    width: item == 1 ? 6 : 6,
                                  ),
                                ))
                            .toList()),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: const BorderRadius.all(const Radius.circular(15)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: const CustomText(
                              text: "Owner",
                              isShowUpperCase: false,
                              size: 16,
                              color: Colors.black,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                            width: 35,
                            height: 35,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                              topRight: const Radius.circular(50),
                              topLeft: Radius.circular(50),
                            )),
                            child: ClipRRect(
                                borderRadius: const BorderRadius.all(const Radius.circular(50)),
                                child: Image.asset(
                                  Assets.america,
                                  fit: BoxFit.fill,
                                  width: 500,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(0), topLeft: Radius.circular(0))),
              height: 0.4.sh,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 10,
            left: 10,
            child: Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 4.0,
                      spreadRadius: .50,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              height: 0.32.sh,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: "Groom Place",
                              isShowUpperCase: false,
                              size: 16,
                              color: Colors.black,
                              weight: FontWeight.w500,
                            ),
                            const CustomText(
                              text: "London | Sw1w",
                              isShowUpperCase: false,
                              size: 12,
                              color: Colors.black,
                              weight: FontWeight.w300,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const CustomText(
                                  text: "4",
                                  isShowUpperCase: false,
                                  size: 14,
                                  color: Colors.black,
                                  weight: FontWeight.w600,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                const Icon(Icons.bed),
                                SizedBox(
                                  width: 5.w,
                                ),
                                const CustomText(
                                  text: "|",
                                  isShowUpperCase: false,
                                  size: 12,
                                  color: Colors.black,
                                  weight: FontWeight.w700,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                const CustomText(
                                  text: "4",
                                  isShowUpperCase: false,
                                  size: 14,
                                  color: Colors.black,
                                  weight: FontWeight.w600,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                const Icon(Icons.shower_rounded),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.w,
                    ),
                    const ContainerText(
                      value1: "Let",
                      value2: "Sell",
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    const ContainerText(
                      value1: "Rent",
                      value2: "Utilities",
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    const ContainerText(
                      value1: "Inventory",
                      value2: "Documents",
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
