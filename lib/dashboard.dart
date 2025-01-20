import 'package:embroidery_rate_counter/add_design.dart';
import 'package:embroidery_rate_counter/calculator.dart';
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
late RateModel chshAddDeign;

class _DashboardState extends ConsumerState<Dashboard> {
  int _currentIndex = 0;

  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    initPref();
  }

  Future<void> initPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  // Screens for each menu
  final List<Widget> _screens = [
    Calculator(),
    AddDesign(),
    ProductGridPage(),
  ];

  // Future<void> storeOfCalculator() async {
  //   final calculateData = ref.read(rateCounterProvider.notifier).getModel();
  //   String calculateDataJson = json.encode(calculateData.toJson());
  //   await prefs.setString('calculateData', calculateDataJson);
  // }

  // Future<void> getOfCalculator() async {
  //   String? calculateDataJson = prefs.getString('calculateData');
  //   if (calculateDataJson != null) {
  //     Map<String, dynamic> calculateDataMap = json.decode(calculateDataJson);
  //     cashCalculator = RateModel.fromJson(calculateDataMap);
  //     ref.read(rateCounterProvider.notifier).updateRateModel(cashCalculator);
  //     print("+++++++++++++++++++++++++++${ref.read(rateCounterProvider).stitches[0].stitch}");
  //   }
  // }

  // Future<void> storeOfAddDesign() async {
  //   final designData = ref.read(rateCounterProvider.notifier).getModel();
  //   String designDataJson = json.encode(designData.toJson());
  //   await prefs.setString('addDesignData', designDataJson);
  // }

  // Future<void> getOfAddDesign() async {
  //   String? designDataJson = prefs.getString('addDesignData');
  //   if (designDataJson != null) {
  //     Map<String, dynamic> designDataMap = json.decode(designDataJson);
  //     chshAddDeign = RateModel.fromJson(designDataMap);
  //     ref.read(rateCounterProvider.notifier).updateRateModel(chshAddDeign);
  //     print("+++++++++++++++++++++++++++${ref.read(rateCounterProvider).stitches[0].stitch}");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) async {
          if (_currentIndex == 0 && index != 0) {
            // Click on !Calculator
            ref.read(rateCounterProvider.notifier).saveRateModel();
          } else if (_currentIndex == 1 && index != 1) {
            // Click on !AddDesign
            ref.read(rateCounterProvider.notifier).saveAddDesign();
          }
          if (_currentIndex != 0 && index == 0) {
            // Click on Calculator
            await ref.read(rateCounterProvider.notifier).loadRateModel();
          } else if (_currentIndex != 1 && index == 1) {
            // Click on AddDesign
            await ref.read(rateCounterProvider.notifier).loadAddDesign();
          }
          setState(() {
            _currentIndex = index;
          });
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
