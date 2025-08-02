// import 'package:fashion_shoping/core/components/dataModels/short_by_item_response_model.dart';
// import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
// import 'package:fashion_shoping/core/utils/design_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ShortByBottomSheetWidget extends StatelessWidget {
//   final List<ShortByItemDataModel> itemList;
//   final ShortByItemDataModel selectedItem;
//   final Future<void> Function(ShortByItemDataModel item) onPressed;
//   const ShortByBottomSheetWidget({
//     super.key,
//     required this.itemList,
//     required this.selectedItem,
//     required this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return OrientationBuilder(
//         builder: (context,orientation) {
//           return Container(
//               width: Get.width,
//               height: (Get.height * 0.5),
//               padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 0,),
//               decoration: const BoxDecoration(
//                   color: scaffoldBackgroundColor,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(25),
//                     topRight: Radius.circular(25),
//                   )
//               ),
//               child:  Column(
//                 // shrinkWrap: true,
//                 // padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 0,),
//                 children: [
//                   // const SizedBox(height: 15,),
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
//                     "Short By",
//                     textAlign: TextAlign.center,
//                     style: AppTextTheme.text22.copyWith(
//                     ),
//                   ),
//                   const SizedBox(height: 10,),
//                   Expanded(
//                     // height: (Get.height * 0.5) - 100,
//                     child: ListView.separated(
//                       padding: EdgeInsets.only(top: 10,bottom: 40),
//                       // physics: NeverScrollableScrollPhysics(),
//                       itemCount: itemList.length,
//                       separatorBuilder: (context, index) => const SizedBox(height: 10,),
//                       itemBuilder: (context, index) {
//                         return CoreButton(
//                           onPressed:()=> onPressed(itemList[index]),
//                           child: Container(
//                             padding: EdgeInsets.symmetric( horizontal: 15, vertical:  10),
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                                 color: selectedItem.id == itemList[index].id ? primaryColor : cardColor,
//                                 borderRadius: BorderRadius.circular(10),
//                                 border: Border.all(
//                                   width: 1,
//                                   color: borderColor,
//                                 )
//                             ),
//                             child: Text(
//                               itemList[index].name ?? "",
//                               style: AppTextTheme.text18.copyWith(
//                                 color: selectedItem.id == itemList[index].id ? whiteColor : primaryTextColor,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   )
//                 ],
//               )
//           );
//         }
//     );
//   }
// }
