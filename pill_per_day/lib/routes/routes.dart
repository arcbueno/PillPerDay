import 'package:flutter/material.dart';
import 'package:pill_per_day/pages/home/home.page.dart';
import 'package:pill_per_day/pages/home/home.viewmodel.dart';
import 'package:pill_per_day/pages/initial/initial.page.dart';
import 'package:pill_per_day/routes/route_names.dart';
import 'package:provider/provider.dart';

class Routes {
  Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.initial.routeName: (BuildContext context) => const InitialPage(),
    RouteNames.home.routeName: (BuildContext context) => HomePage(
          viewModel: HomeViewModel(
            context.read(),
          ),
        ),
  };
}
