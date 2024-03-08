import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/features/azkar/widgets/azkar_msa2.dart';
import 'package:azkar/features/azkar/widgets/azkar_safar.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:azkar/features/azkar/views/azkar_view.dart';
import 'package:azkar/features/azkar/widgets/akar_spah.dart';
import 'package:azkar/features/azkar/widgets/azkar_view_body.dart';
import 'package:flutter/material.dart';

class AzkarList extends StatelessWidget {
  const AzkarList({super.key, required this.index});
  final int index;
static const azkarList = [
  AzkarSpahList(),
  AzkarMsa2List(),
  AzkarSafarList(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'أذكارك',),
      body: Container(
        decoration: BoxDecoration(
           image: DecorationImage(
          image: AssetImage(kBacGroundImage),
          fit: BoxFit.cover,
        ),
        ),
        child: azkarList[index]),
    );
  }
}