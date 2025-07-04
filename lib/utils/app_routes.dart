import 'package:get/get.dart';
import 'package:practice_apis/utils/routes_name.dart';
import 'package:practice_apis/views/Home_Content.dart';
import 'package:practice_apis/views/detailed_screen.dart';
import 'package:practice_apis/views/screens/cart.dart';
import 'package:practice_apis/views/screens/explore.dart';
import 'package:practice_apis/views/screens/home_screen.dart';
import 'package:practice_apis/views/screens/login_screen.dart';
import 'package:practice_apis/views/screens/profile.dart';
import 'package:practice_apis/views/screens/reset_password.dart';
import 'package:practice_apis/views/screens/signup_screen.dart';
import 'package:practice_apis/views/screens/splash_Screen.dart';
import 'package:practice_apis/views/screens/verify_otp.dart';

class AppRoutes {
static getAppRoutes()=>[
GetPage(name: RoutesName.signup, page: ()=>SignupScreen(),
transition: Transition.cupertino
)
,
GetPage(name: RoutesName.splashScreen, page: ()=>SplashScreen(),
transition: Transition.cupertino
),
GetPage(name: RoutesName.login, page: ()=>LoginScreen(),
transition: Transition.cupertino
),
GetPage(name: RoutesName.verifyotp, page: ()=>VerifyOtp(),
transition: Transition.cupertino
),
GetPage(name: RoutesName.homePage, page: ()=>HomeScreen(),
transition: Transition.cupertino
)
,GetPage(name: RoutesName.explorePage, page: ()=>Explore(),
transition: Transition.cupertino
),
GetPage(name: RoutesName.mycartPage, page: ()=>Mycart(),
transition: Transition.cupertino
),

GetPage(name: RoutesName.profilePage, page: ()=>Profile(),
transition: Transition.cupertino
),
GetPage(name: RoutesName.resetPage, page: ()=>ResetPassword(),
transition: Transition.cupertino
),

GetPage(name: RoutesName.Home_Content, page: ()=>HomeContent(),
transition: Transition.cupertino
),
];



}