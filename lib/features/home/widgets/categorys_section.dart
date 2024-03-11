import 'package:azkar/ahadeth/views/ahadeth_view.dart';
import 'package:azkar/features/doa/views/doa_view.dart';
import 'package:azkar/features/home/widgets/category_item.dart';
import 'package:azkar/utils/image_strings.dart';
import 'package:flutter/material.dart';

class CategorysSection extends StatelessWidget {
  const CategorysSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DoaView();
                }));
              },
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AhadethView();
                }));
              },
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
