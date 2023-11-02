import 'package:cookies_ui/colors.dart';
import 'package:cookies_ui/models/cookies.dart';
import 'package:cookies_ui/screens/widgets/bottom_nav_bar.dart';
import 'package:cookies_ui/screens/widgets/shoping_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/Offer_card.dart';
import 'widgets/avatar.dart';
import 'widgets/biscuits_bar.dart';
import 'widgets/cookie_card.dart';
import 'widgets/offers_bar.dart';
import 'widgets/user_info.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required String title});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 54),
          child: Column(
            children: [
              const Row(
                children: [
                  Avatar(),
                  SizedBox(
                    width: 10,
                  ),
                  UserInfo(),
                  Spacer(),
                  SopingCard(),
                ],
              ),
              const CookieBar(),
              SizedBox(
                height: size.height * 0.13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: cookies
                    .map(
                      (e) => CookieCard(cookie: e),
                    )
                    .toList(),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              OffersBar(),
              SizedBox(
                height: size.height * 0.009,
              ),
              SizedBox(
                height: size.height * 0.15,
                child: PageView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: biscuits.length,
                  itemBuilder: (context, index) {
                    return OfferCard(biscuit: biscuits[index]);
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.009,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: biscuits.length,
                effect: JumpingDotEffect(
                    dotColor: buttonColor,
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: morange,
                    spacing: 50),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
