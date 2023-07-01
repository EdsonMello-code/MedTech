import 'package:commons/main.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/app/pages/widgets/onboarding_tile_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController pageController;
  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
    pages = [
      OnboardingTileWidget(
        image: CommonImage.onboarding(),
        title: 'View and buy Medicine online',
        description:
            'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
      ),
      OnboardingTileWidget(
        image: CommonImage.onboarding2(),
        title: 'Online medical & Healthcare',
        description:
            'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
      ),
      OnboardingTileWidget(
        image: CommonImage.onboarding3(),
        title: 'Get Delivery on time',
        description:
            'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.screenSize.height,
        width: context.screenSize.width,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: pages,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.0.w,
                right: 24.0.w,
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0.h),
                child: AnimatedBuilder(
                    animation: pageController,
                    builder: (context, _) {
                      final page = (pageController.page?.floor()) ?? 0;
                      final isLastPage = pages.length == (page + 1);

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonTextButton(
                            'Previous',
                            onPressed: page == 0
                                ? null
                                : () {
                                    pageController.previousPage(
                                      duration: const Duration(
                                        milliseconds: 600,
                                      ),
                                      curve: Curves.decelerate,
                                    );
                                  },
                          ),
                          CommonDots(
                            dotsLenght: pages.length,
                            currentIndexDot: page,
                          ),
                          CommonTextButton(
                            'Next',
                            onPressed: () {
                              if (isLastPage) {
                              } else {
                                pageController.nextPage(
                                  duration: const Duration(
                                    milliseconds: 600,
                                  ),
                                  curve: Curves.decelerate,
                                );
                              }
                            },
                          )
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
