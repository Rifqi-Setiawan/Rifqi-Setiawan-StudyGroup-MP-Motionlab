
class ProductModel {
    int? id;
    String? title;
    String? description;
    String? category;
    double? price;
    String? thumbnail;
    bool isFavorite;

    ProductModel({
        this.id,
        this.title,
        this.description,
        this.category,
        this.price,
        this.thumbnail,
        this.isFavorite = false,
    });

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        category: json["category"],
        price: json["price"]?.toDouble(),
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "category": category,
        "price": price,
        "thumbnail": thumbnail,
    };
}