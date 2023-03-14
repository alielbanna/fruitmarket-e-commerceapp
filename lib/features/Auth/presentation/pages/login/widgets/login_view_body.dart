import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitmarket/core/constants.dart';
import 'package:fruitmarket/core/utils/size_config.dart';
import 'package:fruitmarket/core/widgets/custom_buttons.dart';
import 'package:fruitmarket/core/widgets/space_widget.dart';
import 'package:fruitmarket/features/Auth/presentation/pages/complete_information/complete_information_view.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset(kLogo),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 51,
              color: kMainColor,
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Row(
          children: [
            const Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(right: 18, left: 18),
                child: CustomButtonWithIcon(
                  color: Colors.blue,
                  iconData: FontAwesomeIcons.google,
                  text: 'Log in with ',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 18),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(() => const CompleteInformationView(),
                        duration: const Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  color: const Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebook,
                  text: 'Log in with ',
                ),
              ),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
