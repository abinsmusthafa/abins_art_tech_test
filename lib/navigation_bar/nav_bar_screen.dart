import 'package:abins_art_tech_grp_task/module/home/home_screen.dart';
import 'package:abins_art_tech_grp_task/utils/const.dart';
import 'package:abins_art_tech_grp_task/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model/nav_bar_model.dart';
import 'nav_bloc/nav_bloc.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  Color colors = Palette.addLocationScreenHeadingTextColor;

  List<NavBarModel> navItems = [];

  @override
  void initState() {
    navItems = [
      NavBarModel(
          Icon(
            Icons.explore,
            color: colors,
          ),
           Container(color: Colors.red,),
          "Explore"),
      NavBarModel(
          Icon(
            Icons.card_travel_sharp,
            color: colors,
          ),
          const HomeScreen(),
          "My Cards"),
      NavBarModel(
          Icon(
            Icons.account_balance_wallet,
            color: colors,
          ),
          Container(color:Palette.primaryColor),
          "Wallet"),
    ];

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NavBloc()..add(UpdateTabEvent(index: 1)),
        child: BlocListener<NavBloc, NavState>(
          listener: (context, state) {
            if (state is UpdateTabState) {
              _currentIndex = state.index.toInt();
            }
          },
          child: BlocBuilder<NavBloc, NavState>(builder: (context, state) {
            return Scaffold(
                backgroundColor: Colors.white,
                resizeToAvoidBottomInset: false,
                bottomNavigationBar: Container(
                  height: 75,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            4.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  child: ClipRRect(
                    child: BottomAppBar(
                      shape: const CircularNotchedRectangle(),
                      //shape of notch
                      notchMargin: 0,

                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: navItems
                              .map((e) => Visibility(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Visibility(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: navItems.indexOf(e) == _currentIndex ? Palette.black.withOpacity(0.6) : Colors.transparent,
                                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(2.r), bottomLeft: Radius.circular(2.r))),
                                            height: 4.h,
                                            width: 50.w,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            int index = navItems.indexOf(e);
                                            BlocProvider.of<NavBloc>(context).add(UpdateTabEvent(index: navItems.indexOf(e)));
                                          },
                                          child: Column(
                                            children: [
                                              e.title,
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              CustomText(
                                                text: e.heading,
                                                isShowUpperCase: false,
                                                size: 12,
                                                color: navItems.indexOf(e) == _currentIndex
                                                    ? Palette.black.withOpacity(0.6)
                                                    : Palette.addLocationScreenHeadingTextColor,
                                                weight: navItems.indexOf(e) == _currentIndex ? FontWeight.w500 : FontWeight.w400,
                                              ),
                                            ],
                                          ),
                                        ),

                                        Container(
                                          color: Colors.transparent,
                                          height: 4.h,
                                          width: 30.w,
                                        ),

                                        // SizedBox(
                                        //   height: 2.h,
                                        // ),
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                body: navItems[_currentIndex].correspondingWidget);
          }),
        ));
  }
}
