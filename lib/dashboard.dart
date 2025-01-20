import 'dart:convert';
import 'package:embroidery_rate_counter/add_design.dart';
import 'package:embroidery_rate_counter/modules/rate_module/calculator.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:embroidery_rate_counter/product_grid_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

late RateModel cashCalculator;
late RateModel cashAddDeign;
  late SharedPreferences prefs;

enum prefKey { calculateData, addDesignData }

class _DashboardState extends ConsumerState<Dashboard> {
  int _currentIndex = 0;


  @override
  void initState() {
    super.initState();
    initPref();
  }

  Future<void> initPref() async {
    prefs = await SharedPreferences.getInstance();
    print("cal = ${!prefs.containsKey("${prefKey.calculateData}")}");
    print("add = ${!prefs.containsKey("${prefKey.addDesignData}")}");
    if (!prefs.containsKey("${prefKey.calculateData}")) {
      cashCalculator = RateModel.initial();
      storeInPref(
        "${prefKey.calculateData}",cashCalculator
      );
    }

    if (!prefs.containsKey("${prefKey.addDesignData}")) {
      cashAddDeign = RateModel.initial();
      print("rateInit =*************** $cashAddDeign");
      storeInPref("${prefKey.addDesignData}", cashAddDeign);
      getFromPref("${prefKey.addDesignData}");
    }
  }

  // Screens for each menu
  final List<Widget> _screens = [
    Calculator(),
    AddDesign(),
    ProductGridPage(),
  ];

  Future<void> storeInPref(String key, [RateModel? rateModel]) async {
    RateModel calculateData =
        rateModel ?? ref.read(rateCounterProvider.notifier).getModel();
    String calculateDataJson = json.encode(calculateData.toJson());
    await prefs.setString(key, calculateDataJson);
  }

  Future<void> getFromPref(String key) async {
    String? calculateDataJson = prefs.getString(key);
    if (calculateDataJson != null) {
      Map<String, dynamic> calculateDataMap = json.decode(calculateDataJson);
      cashCalculator = RateModel.fromJson(calculateDataMap);
      ref.read(rateCounterProvider.notifier).updateRateModel(cashCalculator);
      print(
          "+++++++++++++++++++++++++++${ref.read(rateCounterProvider).stitches[0].stitch}");
    }
  }

  Future dataProvider(int index) {
    if (_currentIndex == 0 && index != 0) {
      // Click on !Calculator
      storeInPref('${prefKey.addDesignData}');
    } else if (_currentIndex == 1 && index != 1) {
      // Click on !AddDesign
      storeInPref('${prefKey.calculateData}');
    }
    if (_currentIndex != 0 && index == 0) {
      // Click on Calculator
      getFromPref('${prefKey.calculateData}');
    } else if (_currentIndex != 1 && index == 1) {
      // Click on AddDesign
      getFromPref('${prefKey.addDesignData}');
    }
    Future f = Future(
      () => 0,
    );
    return f;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          dataProvider(index).then(
            (value) {
              setState(() {
                _currentIndex = index;
              });
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Design',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List of Design',
          ),
        ],
      ),
    );
  }
}
