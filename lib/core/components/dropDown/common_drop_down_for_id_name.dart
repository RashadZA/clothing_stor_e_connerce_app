import 'package:clothing_stor_e_connerce_app/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:clothing_stor_e_connerce_app/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CommonDropDownForIdName extends StatelessWidget {
  final bool disableBorders;
  final CommonResponseModelForIdName selectedItem;
  final String? labelText;
  final TextStyle? labelTextStyle;
  final String hintText;
  final double? popUpContainerHeight;
  final double? height;
  final bool? hideTitle;
  final bool? notRequireTitle;
  final Function(CommonResponseModelForIdName? item) onChanged;
  final double? borderRadius;
  final Color? fillColor;
  final bool isDark;
  final Future<List<CommonResponseModelForIdName>>  Function(String filter) asyncItems;

  const CommonDropDownForIdName({
    super.key,
    this.disableBorders = false,
    required this.selectedItem,
    required this.hintText,
    required this.onChanged,
    this.labelText,
    this.isDark = false,
    this.popUpContainerHeight,
    this.labelTextStyle,
    this.hideTitle,
    this.notRequireTitle,
    this.height,
    this.borderRadius,
    this.fillColor,
    required this.asyncItems,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint("popUpContainerHeight: ${popUpContainerHeight ?? 300}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        hideTitle == true ? const SizedBox(height: 0,width: 0,) : notRequireTitle == true ? Text(
          labelText ?? "Select",
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

        DropdownSearch<CommonResponseModelForIdName>(
          items: (String filter, LoadProps? loadProps) => asyncItems(filter),
          onChanged: (CommonResponseModelForIdName? item) => onChanged(item),
          filterFn: (CommonResponseModelForIdName item, String filter) {
            return (item.name ?? "").toLowerCase().contains(filter.toLowerCase());
          },
          compareFn: (a, b) => a.id == b.id,
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
                  maxHeight: 45.0,
                  minHeight: 45.0// Set the maximum height
              ),
            ),
          ),
          dropdownBuilder: (context, selectedItem) {
            return Text(
              selectedItem?.name ?? hintText,
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
            constraints: BoxConstraints(
              minHeight: 150,
              maxHeight: popUpContainerHeight ?? 300,
            ),
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
                  item.name ?? "",
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
      ],
    );
  }
}
