import 'package:crowdFunding/core/viewModel/BeneficiaryVM.dart';
import 'package:crowdFunding/router/router.dart';
import 'package:crowdFunding/ui/screens/login.dart';
import 'package:crowdFunding/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/viewModel/BeneficiarySourceTypeVM.dart';
import 'locator.dart';
void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => BeneficiaryVM()),
         Provider(create: (_) => BeneficiarySourceTypeVM()),
    ],
    child: MaterialApp(
      title: 'CrowdFunding',
      theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(
            Theme.of(context).textTheme,
          )),
      onGenerateRoute: Router.generateRoute,
      onUnknownRoute: Router.unknownRoute,
      initialRoute: UIData.loginRoute,
      debugShowCheckedModeBanner: false,
    )
    );
  }
}


