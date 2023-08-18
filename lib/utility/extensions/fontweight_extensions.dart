import 'package:flutter/material.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';

extension FontWeightExtension on Fontweights {
  FontWeight value() {
    return switch (this) {
      Fontweights.light => FontWeight.w300,
      Fontweights.regular => FontWeight.w400,
      Fontweights.medium => FontWeight.w500,
      Fontweights.semiBold => FontWeight.w600,
      Fontweights.bold => FontWeight.w700,
      Fontweights.extraBold => FontWeight.w800,
    };
  }
}
