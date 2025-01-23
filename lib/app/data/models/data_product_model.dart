import 'dart:convert';

import 'package:motion_shop_get_c_l_i/app/data/models/product_model.dart';

DataProductModel productFromJson(String str) => DataProductModel.fromJson(json.decode(str));

String productToJson(DataProductModel data) => json.encode(data.toJson());

class DataProductModel {
    List<ProductModel>? products;
    int? total;
    int? skip;
    int? limit;

    DataProductModel({
        this.products,
        this.total,
        this.skip,
        this.limit,
    });

    factory DataProductModel.fromJson(Map<String, dynamic> json) => DataProductModel(
        products: json["products"] == null ? [] : List<ProductModel>.from(json["products"]!.map((x) => ProductModel.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
    );

    Map<String, dynamic> toJson() => {
        "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
    };
}