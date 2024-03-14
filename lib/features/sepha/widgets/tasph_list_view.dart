import 'package:azkar/features/sepha/widgets/tasph_list_view_item.dart';
import 'package:flutter/material.dart';

class TasphListView extends StatelessWidget {
  const TasphListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Center(
        child: ListView(
          children: const [
            TasphListViewItem(
              text: 'سبحان الله',
            ),
            TasphListViewItem(
              text: 'الحمد لله',
            ),
            TasphListViewItem(
              text: 'لا إله إلا الله',
            ),
            TasphListViewItem(
              text: 'الله اكبر',
            ),
            TasphListViewItem(
              text: 'لا حول ولا قوة إلا بالله',
            ),
            TasphListViewItem(
              text: ' أستغفر الله',
            ),
          ],
        ),
      ),
    );
  }
}
