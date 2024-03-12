import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  CustomContainer({
    super.key,
    required this.text,
    required this.countNum,
  });
  final String text;
  int countNum;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.countNum > 0) {
          widget.countNum--;
          setState(() {});
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xfff4f4fe),
            border: Border.all(
              color: const Color(0xffc4c6f3),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Text(
                  widget.text,
                  textAlign: TextAlign.right,
                  style: AppStyles.styleBold18(context),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: kPrimaryColor,
                      ),
                      child: Center(
                          child: widget.countNum == 0
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  '${widget.countNum}',
                                  style: AppStyles.styleBold15(context),
                                )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
