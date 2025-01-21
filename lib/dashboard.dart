import 'package:embroidery_rate_counter/add_design.dart';
import 'package:embroidery_rate_counter/calculator.dart';
import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/main.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/product_grid_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends ConsumerState<Dashboard> {
  int _currentIndex = 0;

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

bool isLoade =false;
// firstDataInit()  {

//     currentModelData =  ref.read(rateCounterProvider.notifier).loadRateModel();
//     isLoade = false;
//     setState(() {});
//     print("isLoade = $isLoade");
// }
  @override
  Widget build(BuildContext context) {
    // firstDataInit();
    return Scaffold(
      body: isLoade ? Center(child: CircularProgressIndicator()) : _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index)  {
          final rateNotifire = ref.read(rateCounterProvider.notifier);
          if (_currentIndex == 0 && index != 0) {
            // Click on !Calculator
          } else if (_currentIndex == 1 && index != 1) {
            // Click on !AddDesign
          }
          if (index == 0) {
            // Click on Calculator
            currentCashKey = CashKey.calculate;
          } else if (index == 1) {
            // Click on AddDesign
            currentCashKey = CashKey.addDesign;
          }
          currentModelData =  rateNotifire.loadRateModel();
          
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
