import 'package:get/get.dart';

class FilterModel {
  final List<String> filterList;
  RxString currentFilter;

  FilterModel({required this.filterList, required this.currentFilter});
}