import 'package:get/get.dart';

class HomeController extends GetxController {
  String balanceValue = 'R\$ 15.789,00';
  String invoiceValue = 'R\$ 7.078,65';
  String masked = '****';

  bool visibleBalance = true;

  void showBalance() {
    visibleBalance = !visibleBalance;
    update();
  }
}
