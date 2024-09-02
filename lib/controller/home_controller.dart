import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeController extends GetxController{
  RxInt selectedindex = 0.obs;
  RxBool isFavorite = false.obs;

}