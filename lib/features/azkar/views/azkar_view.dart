import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/features/azkar/widgets/akar_spah.dart';
import 'package:azkar/features/azkar/widgets/azkar_msa2.dart';
import 'package:azkar/features/azkar/widgets/azkar_nom.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:azkar/features/azkar/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AzkarView extends StatefulWidget {
  const AzkarView({super.key});

  @override
  State<AzkarView> createState() => _AzkarViewState();
}

class _AzkarViewState extends State<AzkarView> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: kbackgroundColor,
        appBar: AppBar(
          leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          )),
          title: Text('ألا بذكر اللَّه تطمئِن القلوب' , style: AppStyles.styleReguler18(context),),
         centerTitle: true,
          backgroundColor: kPrimaryColor,
          bottom: TabBar(
            
            indicatorColor: Colors.white,
            tabs: [
              Tab(
             child:  Text(
                'أذكار الصباح',
                style: AppStyles.styleReguler18(context),
              ),
             ),
              Text(
                'أذكار المساء',
                style: AppStyles.styleReguler18(context),
              ),
              Text(
                'أذكار النوم',
               style: AppStyles.styleReguler18(context),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          child: TabBarView(
            children: [
             AzkarSpahList() ,
             AzkarMsa2List() ,
             AzkarNomList() ,
             
            ],
          ),
        ),
      ),
    );
  }
}
