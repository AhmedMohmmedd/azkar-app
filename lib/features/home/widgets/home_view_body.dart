import 'package:azkar/features/azkar/views/azkar_view.dart';
import 'package:azkar/features/home/data/controller/location_cubit/location_cubit.dart';
import 'package:azkar/features/home/widgets/category_container.dart';
import 'package:azkar/features/saluh/saluh_times_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisExtent: 180,
        mainAxisSpacing: 10,
      ),
      children: [
        CategryContainer(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SaluhTimesView(
              );
            }));
          },
          image: 'assets/images/6670952.gif',
          text: 'أحاديث',
        ),
        CategryContainer(
          image: 'assets/images/51238261.png',
          text: 'الأذكار',
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AzkarView();
            }));
          },
        ),
        CategryContainer(
          image: 'assets/images/5123826.png',
          text: 'الأدعية',
        ),
        CategryContainer(
          image: 'assets/images/6668724.gif',
          text: 'السبحة الإلكترونية',
        ),
        CategryContainer(
          image: 'assets/images/kaaba.png',
          text: 'أسماء الله الحسنى',
        ),
      ],
    );
  }
}
