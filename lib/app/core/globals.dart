import 'package:flutter/material.dart';


final mainKey = GlobalKey<NavigatorState>();
BuildContext get gContext => mainKey.currentState!.context;
