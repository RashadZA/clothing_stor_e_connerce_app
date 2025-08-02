import 'package:clothing_stor_e_connerce_app/core/components/widgets/buttons/core_button.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:flutter/material.dart';

class AddImageButton extends StatelessWidget {
  final void Function()? onPressed;
  const AddImageButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      onPressed: onPressed,
      child: SizedBox(
        width: 120,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.camera_alt,
                  color: whiteColor,
                  size: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Add your photos",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextTheme.text14,
            )
          ],
        ),
      ),
    );
  }
}
