import 'trip.dart';

class City {
  String imageURL;
  String description;
  String city;
  List<Trip> activity;

  City({this.imageURL, this.description, this.city, this.activity});
}

final List<City> citys = [
  City(
      imageURL: 'assets/images/hanoi.jpg',
      description: 'Bắn tinh vãi lồn, bắn tinh trong nhà ra ngoài đường',
      city: 'Hà nội',
      activity: [Trip('a'), Trip('b')]),
  City(
      imageURL: 'assets/images/hcm.jpg',
      description: 'Bắn tinh cực đỉnh, phê như bú cần',
      city: 'Hồ Chí Minh',
      activity: [Trip('a'), Trip('b'), Trip('a'), Trip('b')]),
  City(
      imageURL: 'assets/images/danang.jpg',
      description: 'Bắn tinh tung tóe, lau mãi không hết',
      city: 'Đà Nẵng',
      activity: [Trip('a')]),
  City(
      imageURL: 'assets/images/hy.jpg',
      description: 'Bắn tinh cực mạnh, bắn bay nóc nhà',
      city: 'Hưng yên',
      activity: [
        Trip('a'),
        Trip('b'),
        Trip('a'),
        Trip('b'),
        Trip('a'),
        Trip('b'),
        Trip('a'),
        Trip('b')
      ])
];
