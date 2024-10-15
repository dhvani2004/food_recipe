import 'package:flutter/material.dart';
import 'package:food_recipe/constant/colorconstant.dart';
import 'package:food_recipe/project_spicific/text_theme.dart';

class EnjoyDeliciousFoodDetails extends StatelessWidget {
  final bool isSelected;
  final String image;
  final String name;
  final String desc;
  final VoidCallback onPress;

  const EnjoyDeliciousFoodDetails({
    super.key,
    required this.isSelected,
    required this.image,
    required this.name,
    required this.desc,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final double cardHeight = 210;
    final double cardWidth = 350;
    final double imageHeight = 140;
    final double ratingContainerHeight = 35;
    final double ratingContainerWidth = 70;

    return GestureDetector(
      onTap: onPress,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                child: Image.asset(
                  image,
                  height: imageHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          name,
                          style: AppTextTheme.semibold.copyWith(
                            fontSize: 18,
                            color: ColorConstant.blackColor,
                          ),
                        ),
                        Text(
                          desc,
                          style: AppTextTheme.regular.copyWith(
                            fontSize: 14,
                            color: ColorConstant.greyColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: ratingContainerHeight,
                      width: ratingContainerWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: ColorConstant.greenColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "4.5",
                            style: AppTextTheme.bold.copyWith(
                              fontSize: 14,
                              color: ColorConstant.whiteColor,
                            ),
                          ),
                          const SizedBox(width: 2),
                          const Icon(
                            Icons.star,
                            color: ColorConstant.whiteColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
