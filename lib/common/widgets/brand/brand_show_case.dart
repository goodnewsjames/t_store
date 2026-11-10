import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brand/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: .all(TSizes.md),
      backgroundColor: Colors.transparent,
      margin: const .only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brands with Products Count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// Brands Top 3 Product Images
          Row(
            children: images
                .map(
                  (image) => brandTopProductImageWidget(
                    image,
                    context,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.light,
      margin: const .only(right: TSizes.sm),
      padding: const .all(TSizes.md),
      child: Image(fit: .contain, image: AssetImage(image)),
    ),
  );
}
