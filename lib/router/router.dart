

import 'package:crowdFunding/ui/screens/dashboard.dart';
import 'package:crowdFunding/ui/screens/groupSavings.dart';
import 'package:crowdFunding/ui/screens/login.dart';
import 'package:crowdFunding/ui/screens/notfound/notfound_page.dart';
import 'package:crowdFunding/ui/screens/t&c.dart';
import 'package:crowdFunding/utils/uiData.dart';
import 'package:flutter/material.dart';



class Router {


    static Route<dynamic> generateRoute(settings) {
      switch (settings.name) {
        case UIData.loginRoute:
          return MaterialPageRoute(builder: (_) => Login());
          break;
        case UIData.tcRoute:
          return MaterialPageRoute(builder: (_) => TC());
          break;
        case UIData.dashboardRoute:
          return MaterialPageRoute(builder: (_) => Dashboard());
          break;
        case UIData.groupSavingsRoute:
          return MaterialPageRoute(builder: (_) => GroupSavings());
          break;
      }
    }

    static Route<dynamic>  unknownRoute (settings) {
      return new MaterialPageRoute(
        builder: (context) => new NotFoundPage(
        ));
    }

}


