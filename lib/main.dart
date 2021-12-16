import 'package:flutter/material.dart';
import 'package:weekly_planner/routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
