import 'package:azkar/features/home/widgets/category_item.dart';
import 'package:azkar/utils/image_strings.dart';
import 'package:flutter/material.dart';

class CategorysSection extends StatelessWidget {
  const CategorysSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem(
              image: CustomImages.saluh,
              text: 'الصلاة ',
            ),
            CategoryItem(
              image: CustomImages.azkar,
              text: 'أذكار',
            ),
            CategoryItem(
              image: CustomImages.doaa,
              text: 'دعاء ',
            ),
          ],
        ),
        SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem(
              image: CustomImages.hadeth,
              text: 'أحاديث  ',
            ),
            CategoryItem(
              image: CustomImages.ayat,
              text: 'آيات ',
            ),
            CategoryItem(
              image: CustomImages.sebha,
              text: 'السبحه  ',
            ),
          ],
        ),
      ],
    );
  }
}
