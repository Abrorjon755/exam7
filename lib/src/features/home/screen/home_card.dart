import 'package:exam7/src/common/style/app_icons.dart';
import 'package:exam7/src/common/utils/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.text,
    required this.percent,
    required this.plus,
    required this.color1,
    required this.color2,
  });

  final String text;
  final String percent;
  final String plus;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        margin: const EdgeInsets.only(top: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: context.colors.onPrimary,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  overflow: TextOverflow.clip,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: context.colors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: context.colors.inversePrimary,
                        borderRadius: BorderRadius.circular(120),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 6,
                        ),
                        child: Text(
                          percent,
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: context.colors.surfaceTint,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      context.lang.perYear,
                      style: context.textTheme.bodyLarge?.copyWith(
                          color: context.colors.onSecondaryContainer),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 32,
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: context.colors.onPrimary,
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(AppIcons.miniIcon3),
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const SizedBox.square(
                                dimension: 28,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 16,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: context.colors.onPrimary,
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(AppIcons.miniIcon2),
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const SizedBox.square(
                                dimension: 28,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: context.colors.onPrimary,
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(AppIcons.miniIcon1),
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const SizedBox.square(
                                dimension: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      plus,
                      style: context.textTheme.labelLarge?.copyWith(
                        color: context.colors.onSecondaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
