import 'package:dropdown_search/dropdown_search.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:flutter/material.dart';

class CustomStringDataTypeDropDown extends StatelessWidget {
  final bool disableBorders;
  final List<String> item;
  final String selectedItem;
  final String labelText;
  final TextStyle? labelTextStyle;
  final String hintText;
  final double? popUpContainerHeight;
  final double? height;
  final bool? hideTitle;
  final bool? notRequireTitle;
  final Function(String? item) onChanged;
  final double? borderRadius;
  final Color? fillColor;
  final bool isDark;
  final Future<List<String>>  Function(String filter) asyncItems;


  const CustomStringDataTypeDropDown({
    super.key,
    required this.item,
    this.disableBorders = false,
    required this.selectedItem,
    required this.hintText,
    required this.onChanged,
    required this.labelText,
    this.popUpContainerHeight,
    this.labelTextStyle,
    this.hideTitle,
    this.notRequireTitle,
    this.height,
    this.borderRadius,
    this.isDark = false,
    this.fillColor,
    required this.asyncItems,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        hideTitle == true ? const SizedBox(height: 0,width: 0,) : notRequireTitle == true ? Text(
          labelText,
          style: labelTextStyle ?? AppTextTheme.text16.copyWith(
            color: isDark ? coreTextFieldTitleColorForDarkMode : coreTextFieldTitleColorForLightMode,
            // fontWeight: FontWeight.bold,
          ),
        ) : RichText(
          text: TextSpan(
              text: labelText,
              style: labelTextStyle ?? AppTextTheme.text16.copyWith(
                color: isDark ? coreTextFieldTitleColorForDarkMode : coreTextFieldTitleColorForLightMode,
                // fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "*",
                  style: AppTextTheme.text16.copyWith(
                      color: redAccentColor
                  ),
                )
              ]),
        ),
        hideTitle == true ? const SizedBox(height: 0,width: 0,) : const SizedBox(height: 5,),
        Card(
          color: isDark ? buttonFillColorForDarkMode : buttonFillColorForLightMode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
          ),
          elevation: 4, // Adjust the elevation for shadow depth
          margin: EdgeInsets.zero,
          child: DropdownSearch<String>(
            items: (String filter, LoadProps? loadProps) => asyncItems(filter),
            onChanged: (String? item) => onChanged(item),
            filterFn: (String item, String filter) {
              return item.toLowerCase().contains(filter.toLowerCase());
            },
            compareFn: (a, b) => a == b,
            decoratorProps: DropDownDecoratorProps(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppTextTheme.text16.copyWith(
                  color: greyColor,
                ),
                labelStyle: AppTextTheme.text14.copyWith(
                  color: greyColor,
                ),
                filled: true,
                fillColor: isDark ? buttonFillColorForDarkMode : buttonFillColorForLightMode,
                focusedBorder: disableBorders ? defaultDisableBorder : defaultFocusedBorder,
                enabledBorder: disableBorders ? defaultDisableBorder : defaultEnabledBorder,
                focusedErrorBorder: disableBorders ? defaultDisableBorder : defaultFocusedErrorBorder,
                errorBorder: disableBorders ? defaultDisableBorder : defaultErrorBorder,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 15.0,
                ),
                constraints: BoxConstraints(
                    maxHeight: height ?? 48.0,
                    minHeight: height ?? 48.0// Set the maximum height
                ),
              ),
            ),
            dropdownBuilder: (context, selectedItem) {
              return Text(
                selectedItem ?? hintText,
                style: AppTextTheme.text16.copyWith(
                  fontWeight: FontWeight.normal,
                  color: isDark ? Colors.white54 : Colors.black87,
                ),
              );
            },
            selectedItem: selectedItem,
            popupProps: PopupProps.menu(
              showSearchBox: true,
              searchFieldProps: TextFieldProps(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: AppTextTheme.text15.copyWith(
                    color: isDark ? Colors.white54 : Colors.black87,
                  ),
                  filled: true,
                  fillColor: fillColor ?? (isDark ? buttonFillColorForDarkMode : buttonFillColorForLightMode),
                  focusedBorder: defaultFocusedBorder,
                  enabledBorder: defaultEnabledBorder,
                  focusedErrorBorder: defaultFocusedErrorBorder,
                  errorBorder: defaultErrorBorder,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  constraints: const BoxConstraints(
                    maxHeight: 50.0,
                    minHeight: 50.0,
                  ),
                ),
              ),
              constraints: BoxConstraints.tight( Size.fromHeight(popUpContainerHeight ?? 300)),
              menuProps:  MenuProps(
                backgroundColor: isDark ? popUpMenuButtonDarkModeColor : popUpMenuButtonLightModeColor,
                borderRadius: BorderRadius.circular(8),
              ),
              itemBuilder: (context, item, isSelected, _) {
                return Container(
                  padding: const EdgeInsets.only(left: 12.0,right: 12.0,top: 12,bottom: 0),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(25),
                  //   color: selectedItem == item ? AppColors.primaryColor : AppColors.cardColor,
                  // ),
                  child: Text(
                    item,
                    style: AppTextTheme.text16.copyWith(
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.visible,
                      color: isDark ? Colors.white54 : Colors.black87,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
