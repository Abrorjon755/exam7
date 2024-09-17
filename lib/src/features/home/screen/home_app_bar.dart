import 'package:exam7/src/common/utils/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/style/app_icons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leadingWidth: 60,
      centerTitle: true,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: context.colors.primary,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const SizedBox.square(
              dimension: 40,
            ),
          ),
        ],
      ),
      actions: [
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: context.colors.primary.withOpacity(0.08),
                offset: const Offset(0, 6),
                blurRadius: 16,
              ),
            ],
            color: context.colors.onPrimary,
            borderRadius: BorderRadius.circular(40),
          ),
          child: SizedBox.square(
            dimension: 40,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                AppIcons.search,
                colorFilter: ColorFilter.mode(
                  context.colors.primary,
                  BlendMode.srcATop,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
      ],
      title: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.onSecondary,
          borderRadius: BorderRadius.circular(120),
        ),
        child: SizedBox(
          width: 72,
          height: 32,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 2; i++)
                CircleAvatar(
                  radius: 4,
                  backgroundColor: context.colors.onTertiary,
                ),
              CircleAvatar(
                radius: 4,
                backgroundColor: context.colors.tertiary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
