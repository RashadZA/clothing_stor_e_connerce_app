import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_button.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:flutter/material.dart';

class IconCustomButton extends StatelessWidget {
  final double? iconSize;
  final double? containerWidth;
  final double? containerHeight;
  final IconData iconData;
  final Color iconColor;
  final Color? backgroundColor;
  final void Function()? onPressed;

  const IconCustomButton({
    super.key,
    required this.iconData,
    required this.iconColor,
    this.onPressed,
    this.containerWidth,
    this.containerHeight,
    this.iconSize,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      onPressed: onPressed,
      child: Container(
        width: containerWidth ?? 50,
        height: containerHeight ?? 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? cardColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: Offset(0, 1),
              color: cardShadowColor,
            ),
            BoxShadow(
              blurRadius: 2,
              offset: Offset(0, 1),
              color: cardShadowColor,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            // selectedStatus ? Icons.favorite : Icons.favorite_border,
            iconData,
            size: iconSize ?? 25,
            color: iconColor,
            // color: selectedStatus ? primaryColor : blackColor,
          ),
        ),
      ),
    );
  }
}
