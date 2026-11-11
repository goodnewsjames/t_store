import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBottomAddToCartWidget extends StatelessWidget {
  const TBottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: .symmetric(
        horizontal: TSizes.defaultSpace,
        vertical: TSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                backgroundColor: TColors.darkGrey,
                color: TColors.white,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(
                '2',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              TCircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                backgroundColor: TColors.black,
                color: TColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const .all(TSizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
