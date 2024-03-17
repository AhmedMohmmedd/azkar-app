import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/features/saluh/views/widgets/saluh_times_view_body.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class SaluhTimesView extends StatelessWidget {
  const SaluhTimesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: const CustomAppBar(title: ''),
      body: const SaluhTimesViewBody(),
    );
  }
}
