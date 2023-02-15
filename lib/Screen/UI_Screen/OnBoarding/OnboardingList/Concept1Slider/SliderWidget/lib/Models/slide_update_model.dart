// model for slide update

import 'package:crypto_template/Screen/UI_Screen/OnBoarding/OnboardingList/Concept1Slider/SliderWidget/lib/Constants/constants.dart';

class SlideUpdate {
  final UpdateType updateType;
  final SlideDirection? direction;
  final double? slidePercent;

  SlideUpdate(
    this.direction,
    this.slidePercent,
    this.updateType,
  );
}
