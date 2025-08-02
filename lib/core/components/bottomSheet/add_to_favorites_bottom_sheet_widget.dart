// import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
// import 'package:fashion_shoping/core/components/widgets/buttons/core_flat_button.dart';
// import 'package:fashion_shoping/core/utils/design_utils.dart';
// import 'package:fashion_shoping/features/home/presentation/models/item_response_model.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class AddToFavoritesBottomSheetWidget extends StatelessWidget {
//   final ItemDataModel item;
//   final List<CommonResponseModelForIdName> sizeList;
//   const AddToFavoritesBottomSheetWidget({
//     super.key,
//     required this.item,
//     required this.sizeList,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return OrientationBuilder(
//         builder: (context,orientation) {
//           return Container(
//               width: Get.width,
//               height: (Get.height * 0.5),
//               decoration: const BoxDecoration(
//                   color: scaffoldBackgroundColor,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(25),
//                     topRight: Radius.circular(25),
//                   )
//               ),
//               child:  ListView(
//                 shrinkWrap: true,
//                 padding: const EdgeInsets.all(15),
//                 children: [
//                   Center(
//                     child: Container(
//                       width: 100,
//                       height: 10,
//                       decoration: BoxDecoration(
//                         color: primaryColor,
//                         borderRadius: BorderRadius.circular(75),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 15,),
//                   Text(
//                     "Select Size",
//                     textAlign: TextAlign.center,
//                     style: AppTextTheme.text22.copyWith(
//                     ),
//                   ),
//                   const SizedBox(height: 10,),
//                   SizedBox(
//                     height: (Get.height * 0.5) - 185,
//                     child: GridView.builder(
//                       padding: EdgeInsets.only(top: 10),
//                       physics: NeverScrollableScrollPhysics(),
//                       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                         maxCrossAxisExtent: Get.width * 0.35, // Maximum width of each item
//                         mainAxisSpacing: 10,
//                         crossAxisSpacing: 10,
//                         childAspectRatio: 0.8,
//                         mainAxisExtent: 50, // EXACT height for each item
//                       ),
//                       itemCount: sizeList.length,
//                       itemBuilder: (context, index) {
//                         return Container(
//                           padding: EdgeInsets.all(5),
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                               color: item.itemSize == sizeList[index].name ? primaryColor : cardColor,
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 1,
//                                 color: borderColor,
//                               )
//                           ),
//                           child: Text(
//                             sizeList[index].name ?? "",
//                             style: AppTextTheme.text18.copyWith(
//                               color: item.itemSize == sizeList[index].name ? whiteColor : primaryTextColor,
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   CoreFlatButton(
//                     onPressed: ()=> Get.back(),
//                     text: "Add To Favorites",
//                     isGradientBg: true,
//                   ),
//                   const SizedBox(
//                     height: 40,
//                   ),
//                 ],
//               )
//           );
//         }
//     );
//   }
// }
