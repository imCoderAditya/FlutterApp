


import 'dart:convert';

class ItemProduct{
  static final items = [
        Item(
          id: 1,
          name: "iPhone 12 Pro",
          desc: "Apple iPhone 12th generation",
          price: 999,
          color: "#33505a",
          image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000"
       
         )
  ];

}
class Item {

 
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  // Item copyWith({
  //   required int id,
  //   required String name,
  //   required String desc,
  //   required num price,
  //   required String color,
  //   required String image,
  // }) {
  //   return Item(
  //     id: id ?? this.id,
  //     name: name ?? this.name,
  //     desc: desc ?? this.desc,
  //     price: price ?? this.price,
  //     color: color ?? this.color,
  //     image: image ?? this.image,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'desc': desc,
  //     'price': price,
  //     'color': color,
  //     'image': image,
  //   };
  // }

  // factory Item.fromMap(Map<String, dynamic> map) {
  //   if (map == null) {
  //     // return null;
  //   }

  //   return Item(
  //     id: map['id'],
  //     name: map['name'],
  //     desc: map['desc'],
  //     price: map['price'],
  //     color: map['color'],
  //     image: map['image'],
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  // @override
  // String toString() {
  //   return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  // }

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is Item &&
  //       o.id == id &&
  //       o.name == name &&
  //       o.desc == desc &&
  //       o.price == price &&
  //       o.color == color &&
  //       o.image == image;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       name.hashCode ^
  //       desc.hashCode ^
  //       price.hashCode ^
  //       color.hashCode ^
  //       image.hashCode;
  // }

}