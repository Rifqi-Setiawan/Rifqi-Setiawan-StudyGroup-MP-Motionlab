import 'package:get/get.dart';
import 'package:motion_week_2/models/filter_model.dart';

class FilterController extends GetxController {
  var filter = FilterModel(filterList: ["All", "Watch", "Shirt", "Shoes", "Food"], currentFilter: "All".obs);
  
  void changeFilter(String selectedFilter) {
    filter.currentFilter.value = selectedFilter;
  }
}