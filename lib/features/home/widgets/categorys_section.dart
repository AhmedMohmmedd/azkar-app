import 'package:azkar/features/ahadeth/views/ahadeth_view.dart';
import 'package:azkar/features/ayat/views/ayat_view.dart';
import 'package:azkar/features/azkar/views/azkar_view.dart';
import 'package:azkar/features/doa/views/doa_view.dart';
import 'package:azkar/features/home/widgets/category_item.dart';
import 'package:azkar/features/saluh/views/saluh_times_view.dart';
import 'package:azkar/features/sepha/views/sepha_view.dart';
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SaluhTimesView();
                }));
              },
            ),
            CategoryItem(
              image: CustomImages.azkar,
              text: 'أذكار',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const AzkarView();
                }));
              },
            ),
            CategoryItem(
              image: CustomImages.doaa,
              text: 'دعاء ',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const DoaView();
                }));
              },
            ),
          ],
        ),
      const  SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem(
              image: CustomImages.hadeth,
              text: 'أحاديث  ',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const AhadethView();
                }));
              },
            ),
            CategoryItem(
              image: CustomImages.ayat,
              text: 'آيات ',
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const AyatView();
                }));
              },
            ),
            CategoryItem(
              image: CustomImages.sebha,
              text: 'السبحه  ',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SephaView();
                }));
              },
            ),
          ],
        ),
      ],
    );
  }
}
