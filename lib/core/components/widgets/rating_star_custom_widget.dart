import 'package:flutter/material.dart';

class RatingStarCustomWidget extends StatelessWidget {
  final double rating;
  final double width;
  final double iconSize;
  final double gapeBetweenIcons;
  final bool emptyStarWillShow;
  const RatingStarCustomWidget({
    super.key,
    required this.rating,
     this.width = 100,
     this.iconSize = 20,
     this.gapeBetweenIcons = 0.0,
     this.emptyStarWillShow = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        children: List.generate(5, (index) {
          if (index < rating.floor()) {
            // Fully filled star
            return Padding(
              padding: EdgeInsets.only(right: gapeBetweenIcons),
              child: Icon(
                Icons.star,
                color: Colors.amber,
                size: iconSize
              ),
            );
          } else if (index == rating.floor() && rating % 1 != 0) {
            // Half-filled star
            return Padding(
              padding: EdgeInsets.only(right: gapeBetweenIcons),
              child: Icon(
                Icons.star_half,
                color: Colors.amber,
                size: iconSize,
              ),
            );
          } else {
            // Empty star
            return emptyStarWillShow ? Icon(
              Icons.star_border,
              color: Colors.amber,
              size: iconSize,
            ) : Container();
          }
        }),
      ),
    );
  }
}
