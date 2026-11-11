import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar: TBottomAddToCartWidget(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: .only(
                left: TSizes.defaultSpace,
                right: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating & Share Button
                  TRatingAndShare(),

                  /// -- Price, Title, Stock, & Brand
                  TProductMetaData(),

                  /// -- Attributes
                  TProductAttribute(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// -- Description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                 const ReadMoreText(
                    "This is a Product description for Blue Nike Sleeve less vest.  There are more things that can be added but i am just practicing and nothing else",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show more",
                    trimExpandedText: " Less",
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  /// -- Reviews
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Row(       children: [
                      TSectionHeading(title: 'Review(199)', showActionButton: false,),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
