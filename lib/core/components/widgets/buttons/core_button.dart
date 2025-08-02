import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:flutter/cupertino.dart';

class CoreButton extends CupertinoButton {
  const CoreButton({
    super.key,
    super.color,
    required super.child,
    super.onPressed,
    super.alignment,
    super.padding = EdgeInsets.zero,
    super.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
  }) : super(
    minimumSize: Size.zero,
    disabledColor: transparentColor,
    pressedOpacity: 0.6,
  );
}
