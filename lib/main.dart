import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Domain/Dio/dio_get.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/about%20us/about%20as.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/social%20madiea/social%20madiea.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/team/team.dart';
import 'package:gdg_6_october/Presentation/Main_Screan/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/SignUp/SignUp.dart';
import 'package:gdg_6_october/Presentation/Tiket/badges/TixetForm.dart';
import 'package:gdg_6_october/Presentation/Tiket/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/blog/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/login/Login.dart';
import 'package:gdg_6_october/Presentation/login/base/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/login_check/login_check.dart';
import 'package:gdg_6_october/Presentation/welcome_badge/WelcomeBadge.dart';
import 'package:gdg_6_october/app/cache_helper/cache_helper.dart';
import 'package:gdg_6_october/app/main_cubt/cubt/cubt.dart';
import 'package:gdg_6_october/db/tiket/tiketlocalmodel.dart';
import 'Presentation/HomeBadge/events/events.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await DioHelper.init();
  await TiketDb.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>LoginCubt()),
        BlocProvider(create: (context)=>MainCubt()),
        BlocProvider(create: (context)=>TiketCubt()),
        BlocProvider(create: (context)=>HomeApiCubt()),
        BlocProvider(create: (context)=>BlogApiCubt()),
        BlocProvider(create: (context)=>NavBarCubt()),
      ],
      child: MaterialApp(
        theme: ThemeData(
        ),
        initialRoute: '/',
        routes: {
          '/s': (context) => const LoginCheck(),
          '/welcomeBadge': (context) => const WelcomeBadge(),
          '/Login': (context) => const LoginBadge(),
          '/SignUp': (context) => const SignUpBadge(),
          "/team":(context) => const Team(),
          "/socialMedia":(context) => const SocialMedia(),
          "/AboutAs":(context) => const AboutAs(),
          "/tiketform":(context) => const TiketFormMainBadge(),
          "/event":(context) => const Events(),
        },
        home: const LoginCheck(),
      ),
    );
  }
}