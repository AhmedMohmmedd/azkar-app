import 'package:azkar/features/sepha/widgets/custom_text_filed.dart';
import 'package:azkar/features/sepha/widgets/tasph_list_view.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class SephaView extends StatefulWidget {
  const SephaView({super.key});

  @override
  State<SephaView> createState() => _SephaViewState();
}

class _SephaViewState extends State<SephaView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: kbackgroundColor,
      ),
      backgroundColor: kbackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_drop_up_outlined),
                const TasphListView(),
                const Icon(Icons.arrow_drop_down_outlined),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width * .6,
                  child: MaterialButton(
                    shape: const CircleBorder(),
                    color: kPrimaryColor,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 44),
                      child: Text(
                        '${index}',
                        style: AppStyles.styleReguler100(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () {
                      if (index < 99) {
                        index++;
                        setState(() {});
                      }
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: IconButton(
                          onPressed: () {
                            index = 0;
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.replay,
                            color: kPrimaryColor,
                            size: 32,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

