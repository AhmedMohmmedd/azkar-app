import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/features/doa/views/widgets/custom_titel_container.dart';
import 'package:azkar/features/doa/views/widgets/doa_body.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class DoaView extends StatelessWidget {
  const DoaView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: const CustomAppBar(title: 'أدعية مختارة'),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTitelContainer(
                title: 'دعاء السفر',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DoaBody(index: 0,);
                  }));
                },
              ),
              CustomTitelContainer(
                title: 'دعاء الاستخارة',
                 onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DoaBody(index: 1,);
                  }));
                },
              ),
              CustomTitelContainer(
                title: 'دعاء الصائم عند الإفطار',
                 onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DoaBody(index: 2,);
                  }));
                },
                
              ),
              CustomTitelContainer(
                title: 'فضل الصلاة على النبي ',
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DoaBody(index: 3,);
                  }));
                },
              ),
             CustomTitelContainer(
                title:'دعاء ليلة القدر',
                 onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DoaBody(index: 4,);
                  }));
                },
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
