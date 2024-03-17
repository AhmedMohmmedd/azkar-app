import 'package:azkar/features/home/data/controller/date_cubit/date_cubit.dart';
import 'package:azkar/features/saluh/data/controller/saluh_cubit/saluh_cubit.dart';
import 'package:azkar/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(const MyApp());
  SaluhCubit().getSaluhTime();
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => LocationCubit(
            
        //   )..getCuruntLocation(),
        // ),
        BlocProvider(
          create: (context) => SaluhCubit(
            
          )..getSaluhTime(),
        ),
        BlocProvider(
          create: (context) => DateCubit(
            
          )..getHijiryDate(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: SplashView(),
      ),
    );
  }
}
