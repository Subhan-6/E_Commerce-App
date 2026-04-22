import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class privacy_policy_checkbox extends StatelessWidget {
  const privacy_policy_checkbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: UText.iagree,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextSpan(
                  text: UText.privacypolicy,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(
                        color: dark ? UColors.white : UColors.primary,
                        decorationColor:  dark ? UColors.white : UColors.primary ,
                        decoration: TextDecoration.underline),
                ),
                TextSpan(
                  text: UText.and,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextSpan(
                  text: UText.Terms,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(
                        color: dark ? UColors.white : UColors.primary ,
                        decorationColor:  dark ? UColors.white : UColors.primary ,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}