import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_achitecture/core/inject/inject.dart';
import 'package:flutter_clean_achitecture/layers/presentation/ui/pages/car_page.dart';

main() {
  Inject.init();
  
  runApp(
    MaterialApp(
      home: CarPage(),
    ),
  );
}
