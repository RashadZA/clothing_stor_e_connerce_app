// import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
// import 'package:fashion_shoping/core/utils/design_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class SelectImageBottomSheetWidget extends StatelessWidget {
//   final Future<void> Function()? imageFromCameraFunction;
//   final Future<void> Function()? imageFromGalleryFunction;
//   const SelectImageBottomSheetWidget({
//     super.key,
//     this.imageFromCameraFunction,
//     this.imageFromGalleryFunction,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 180,
//       padding: const EdgeInsets.symmetric(
//           horizontal: 16,
//         vertical: 16,
//       ),
//       decoration: BoxDecoration(
//           color: cardColor,
//           borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
//       ),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             CoreButton(
//               onPressed: (){
//                 Get.back();
//                 if(imageFromCameraFunction != null){
//                   imageFromCameraFunction!();
//                 }
//               },
//               child: Card(
//                 color: Colors.grey.shade400,
//                 shadowColor: cardShadowColor,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10.0, right: 10,top: 15,bottom: 15),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Icon(
//                           Icons.camera,
//                         color: primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       Text(
//                           'Image From Camera',
//                         style: AppTextTheme.text16.copyWith(
//                           color: primaryTextColor,
//                           // fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             CoreButton(
//               onPressed: (){
//                 Get.back();
//                 if(imageFromGalleryFunction != null){
//                   imageFromGalleryFunction!();
//                 }
//               },
//               child: Card(
//                 color: Colors.grey.shade400,
//                 shadowColor: cardShadowColor,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10.0, right: 10,top: 15,bottom: 15),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Icon(
//                           Icons.image,
//                         color: primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       Text(
//                         'Image From Gallery',
//                         style: AppTextTheme.text16.copyWith(
//                           color: primaryTextColor,
//                           // fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
