import 'package:azkar/features/azkar/widgets/azkar_list.dart';
import 'package:azkar/features/azkar/widgets/custom_container.dart';
import 'package:azkar/features/azkar/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const AzkarList(index: 0);
            }));
          },
          text: 'أذكار الصباح',
        ),
        CustomListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AzkarList(index: 1);
            }));
          },
          text: 'أذكار المساء',
        ),
        CustomListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AzkarList(index: 2);
            }));
          },
          text: 'أذكار السفر',
        ),
      ],
    );
  }
}

