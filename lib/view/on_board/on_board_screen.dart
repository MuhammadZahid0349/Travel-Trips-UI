import 'package:flutter/material.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/on_board.dart';
import 'package:travel_point/view/home/home_screen.dart';

import 'widgets/on_board_content.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void goToHomeScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const HomeScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () => goToHomeScreen(),
            child: const Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'NunitoSans',
                color: grey,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) => setState(() {
                  currentIndex = value;
                }),
                itemCount: onBoardList.length,
                itemBuilder: (context, index) =>
                    OnBoardContent(onBoard: onBoardList[index]),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardList.length,
                      (index) => _dotPage(index: index),
                    ),
                  ),
                  const Spacer(flex: 3),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: const Size.fromHeight(40.0),
                        backgroundColor: blue,
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                      onPressed: () {
                        if (currentIndex == onBoardList.length - 1) {
                          goToHomeScreen();
                        } else {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease);
                        }
                      },
                      child: Text(
                        currentIndex == onBoardList.length - 1
                            ? 'Get Started'
                            : 'Next',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dotPage({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? blue : lightBlue,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
