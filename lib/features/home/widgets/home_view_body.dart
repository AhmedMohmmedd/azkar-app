import 'package:azkar/features/azkar/views/azkar_view.dart';
import 'package:azkar/features/home/data/controller/location_cubit/location_cubit.dart';
import 'package:azkar/features/home/widgets/calinder_container.dart';
import 'package:azkar/features/home/widgets/category_container.dart';
import 'package:azkar/features/home/widgets/category_item.dart';
import 'package:azkar/features/home/widgets/categorys_section.dart';
import 'package:azkar/features/saluh/saluh_times_view.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:azkar/utils/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          ClenderContainer(),
          SizedBox(height: 20,),
          CategorysSection(),
        ],
      ),
    );
  }
}


