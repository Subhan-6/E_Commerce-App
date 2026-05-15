import 'package:e_commerce/common/widgets/Brand_Card/brand_card.dart';
import 'package:e_commerce/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/features/authentication/shop/screen/store/widgets/category_tab.dart';
import 'package:e_commerce/features/authentication/shop/screen/store/widgets/store_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 340,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      UStorePrimaryHeader(dark: dark),
                      SizedBox(height: USizes.spaceBtwSections),
                      // store categories
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: USizes.defaultSpace),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Brands Section Heading
                            USectionHeading(title: 'Brands', onPressed: () {}),
                            //Brands containear
                            SizedBox(
                              height: 70.0,
                              child: ListView.separated(
                                itemCount: 10,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => SizedBox(
                                        width: USizes.brandCardWidth,
                                  child: UBrandCard()),
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: USizes.spaceBtwItems / 2),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                bottom: UTabBar(tabs: [
                  Tab(
                    child: Text('Sports'),
                  ),
                  Tab(
                    child: Text('Furniture'),
                  ),
                  Tab(
                    child: Text('Electronics'),
                  ),
                  Tab(
                    child: Text('Cosmetics'),
                  ),
                  Tab(
                    child: Text('Clothes'),
                  )
                ]),
              ),
            ];
          },
          body: TabBarView(children: [
            UCategoryTab(dark: dark),
            UCategoryTab(dark: dark),
            UCategoryTab(dark: dark),
            UCategoryTab(dark: dark),
            UCategoryTab(dark: dark),
          
          ]),
        
        ),
      ),
    );
  }
}
