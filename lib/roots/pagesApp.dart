import 'package:eagle_eye/screens/Catergory/CatergoryBinding.dart';
import 'package:eagle_eye/screens/Catergory/CatergoryPage.dart';
import 'package:eagle_eye/screens/Dashboard/Dashboard.dart';
import 'package:eagle_eye/screens/Home/Home.dart';
import 'package:eagle_eye/screens/Items/Items.dart';
import 'package:eagle_eye/screens/Items/ItemsPage.dart';
import 'package:eagle_eye/screens/Map/MapBinding.dart';
import 'package:eagle_eye/screens/Map/MapPage.dart';
import 'package:eagle_eye/screens/Profile/Profile.dart';
import 'package:eagle_eye/screens/Profile/ProfilePage.dart';
import 'package:eagle_eye/screens/Registration/Registration.dart';
import 'package:eagle_eye/screens/log-in/logIn.dart';
import 'package:eagle_eye/screens/welcome/welcome.dart';
import 'package:get/get.dart';

import 'RouteApp.dart';

class PageApp {
  static final pages = [
    GetPage(
        name: RouteApp.welcome,
        page: () => WelcomePage(),
        binding:WelcomeBinding()),
       
         GetPage(
        name: RouteApp.login,
        page: () => LogInPage(),
        binding:LogInBinding()),
         
         GetPage(
        name: RouteApp.home,
        page: () => HomePage(),
        binding:HomeBinding()),

        GetPage(
        name: RouteApp.catergory,
        page: () => CatergoryPage(),
        binding:CatergoryBinding()),

         GetPage(
        name: RouteApp.items,
        page: () => ItemsPageNav(),
        binding:ItemsBinding()),
        
         GetPage(
        name: RouteApp.map,
        page: () => MapPage(),
        binding: MapBinging()),
       
         GetPage(
        name: RouteApp.map,
        page: () => MapPage(),
        binding: MapBinging()),

        GetPage(
        name: RouteApp.profile,
        page: () => ProfilePage(),
        binding: ProfileBinging()),

        GetPage(
        name: RouteApp.registration,
        page: () => Resgistration(),
        binding: RegistrationBinging()),
         GetPage(
        name: RouteApp.dashboard,
        page: () => DashBoard(),
        binding: DashboardBinding()),
        



        ];
}
