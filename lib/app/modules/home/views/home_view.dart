import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_shop_get_c_l_i/app/modules/home/controllers/home_controller.dart';
import 'package:motion_shop_get_c_l_i/app/routes/app_pages.dart';
import 'package:motion_shop_get_c_l_i/app/widgets/navbar_bottom.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        return Obx(() => controller.isLoading.value
            ? const Material(
                child: Center(child: CircularProgressIndicator()),
              )
            : Scaffold(
                body: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // APP BAR START
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.menu),
                            Image.asset(
                              "assets/images/logo.png",
                              width: 47,
                              height: 47,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              "assets/images/tas.png",
                              width: 23,
                              height: 23,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      // APP BAR END

                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 58),
                                const Text(
                                  "Our way of loving \nyou back",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),

                                const SizedBox(height: 30),

                                // SEARCH INPUT START
                                Container(
                                  height: 53,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF868A91)
                                        .withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 16, horizontal: 23),
                                      labelText: "Search",
                                      prefixIcon: Icon(Icons.search),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                // SEARCH INPUT END

                                const SizedBox(height: 32),
                                // CATEGORY START
                                SizedBox(
                                  height: 45,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    clipBehavior: Clip.none,
                                    itemCount: controller.listCategory.length,
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(width: 12),
                                    itemBuilder: (context, index) {
                                      var currentFilter =
                                          controller.listCategory[index];
                                      return GestureDetector(
                                        onTap: () {
                                          controller
                                              .changeCategory(currentFilter);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: currentFilter ==
                                                    controller.selectedCategory
                                                ? const Color(0xFF3A5A40)
                                                : const Color(0xFF868A91)
                                                    .withOpacity(0.2),
                                          ),
                                          child: Center(
                                            child: Text(
                                              currentFilter,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                // CATEGORY END
                                const SizedBox(height: 28),

                                // LIST PRODUCT START
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Our best seller",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    GridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 15,
                                        mainAxisSpacing: 18,
                                        mainAxisExtent: 251,
                                      ),
                                      itemCount:
                                          controller.filteredProduct.length,
                                      itemBuilder: (context, index) {
                                        var currentproduct =
                                            controller.filteredProduct[index];
                                        return GestureDetector(
                                          onTap: () {
                                            Get.toNamed(Routes.DETAIL_PRODUCT,
                                                arguments: {
                                                  "id": currentproduct.id ?? 0
                                                });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  spreadRadius: 2,
                                                  blurRadius: 2,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius
                                                          .vertical(
                                                    top: Radius.circular(20),
                                                    bottom: Radius.circular(20),
                                                  ),
                                                  child: Image.network(
                                                    currentproduct.thumbnail ??
                                                        "",
                                                    height: 187,
                                                    width: double.infinity,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 9,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 7.8),
                                                  child: Text(
                                                    currentproduct.title ?? "",
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        '\$${currentproduct.price.toString()}',
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xFF00623B),
                                                          fontSize: 17.35,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // LIST PRODUCT END

                      // NAV BOTTOM START
                      NavbarBottom(),
                    ],
                  ),
                ),
              ));
      },
    );
  }
}
