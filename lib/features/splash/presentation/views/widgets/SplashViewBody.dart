import 'package:ebook/core/utils/assets.dart';
import 'package:ebook/features/splash/presentation/views/widgets/sliding_animation.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; //0-1
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween(begin: const Offset(0, 7), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        //rebulding just the animatiom section (live listening)
        SlidingAnimation(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
