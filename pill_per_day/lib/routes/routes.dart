import 'package:flutter/material.dart';
import 'package:pill_per_day/pages/history/history.page.dart';
import 'package:pill_per_day/pages/history/history.viewmodel.dart';
import 'package:pill_per_day/pages/home/home.page.dart';
import 'package:pill_per_day/pages/home/home.viewmodel.dart';
import 'package:pill_per_day/pages/initial/initial.page.dart';
import 'package:pill_per_day/pages/new_medicine/new_medicine.page.dart';
import 'package:pill_per_day/pages/new_medicine/new_medicine.viewmodel.dart';
import 'package:pill_per_day/routes/route_names.dart';
import 'package:provider/provider.dart';

class Routes {
  Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.initial.routeName: (BuildContext context) => const InitialPage(),
    RouteNames.home.routeName: (BuildContext context) => HomePage(
          viewModel: HomeViewModel(
            context.read(),
            context.read(),
          ),
        ),
    RouteNames.newMedicine.routeName: (BuildContext context) => NewMedicinePage(
          viewModel: NewMedicineViewModel(context.read()),
        ),
    RouteNames.history.routeName: (BuildContext context) => HistoryPage(
        viewModel: HistoryViewModel(context.read(), context.read())),
  };
}
