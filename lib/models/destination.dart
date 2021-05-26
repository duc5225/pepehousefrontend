import 'city.dart';

class Destination {
  String name;
  String adress;
  int phoneNumber;
  String description;
  City city;
  String type;
  double rating;
  var coordinates;
  List<String> imageUrl;
  List<String> reviews;

  Destination(
      {this.name,
      this.adress,
      this.phoneNumber,
      this.description,
      this.imageUrl,
      this.city,
      this.rating,
      this.type,
      this.reviews});
}

List<String> imagesUrl = [
  'assets/images/hanoi.jpg',
  'assets/images/hcm.jpg',
  'assets/images/danang.jpg',
  'assets/images/hy.jpg'
];
List<String> reviews = [
  'Ăn được 1 bát, bắn một phát tinh',
  'Ăn ngon max ping, bắn tinh sung sướng',
  'Ăn con gà nướng, bắn đầy xung quanh',
  'Ăn thêm bát canh, bắn banh bàn ghế',
  'Ăn được quả khế, bắn phế máy bay',
  'Chấm quả ớt cay, bắn ngay mặt trời',
  'Ăn đây quá lời, bắn dời lỗ đen',
  'Thức ăn đáng khen, bắn đen vũ trụ',
];
List<Destination> destinations = [
  Destination(
      name: 'Cơm gà',
      adress: 'Số 1, Phạm Văn Đồng, Cầu giấy, Hà nội',
      phoneNumber: 0123456789,
      description:
          'Cơm gà thơm ngon, bắn tinh trong nhà ra ngoài đường, Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường,Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường,Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường,Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường,Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường,Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường,Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường,Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường,',
      imageUrl: imagesUrl,
      city: citys[1],
      rating: 4.0,
      type: 'Nhà hàng',
      reviews: reviews),
  Destination(
      name: 'Cơm chó',
      adress: 'Số 2, Phạm Văn Đồng, Cầu giấy, Hà nội',
      phoneNumber: 0123456987,
      description: 'Bắn tinh tung tóe, lau mãi không hết',
      imageUrl: imagesUrl,
      city: citys[1],
      rating: 4.3,
      type: 'Nhà hàng',
      reviews: reviews),
  Destination(
      name: 'Cơm mèo',
      adress: 'Số 3, Phạm Văn Đồng, Cầu giấy, Hà nội',
      phoneNumber: 0123654789,
      description: 'Bắn tinh cực đỉnh, phê như bú cần',
      imageUrl: imagesUrl,
      city: citys[1],
      rating: 3.5,
      type: 'Nhà hàng',
      reviews: reviews),
];
