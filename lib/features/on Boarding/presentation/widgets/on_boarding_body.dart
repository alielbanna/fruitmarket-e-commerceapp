import 'package:flutter/material.dart';
import 'package:fruitmarket/core/utils/size_config.dart';
import 'package:fruitmarket/core/widgets/custom_buttons.dart';
import 'package:fruitmarket/features/Auth/presentation/pages/login/login_view.dart';
import 'package:fruitmarket/features/on%20Boarding/presentation/widgets/custom_indicator.dart';
import 'package:fruitmarket/features/on%20Boarding/presentation/widgets/custom_page_view.dart';
import 'package:get/get.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 24,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: TextButton(
              onPressed: () {
                Get.to(() => const LoginView(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500));
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 15,
          right: SizeConfig.defaultSize! * 15,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              } else {
                Get.to(() => const LoginView(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500));
              }
            },
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}
