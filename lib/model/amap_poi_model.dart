/*
 * @Author: 丁健
 * @Date: 2022-04-01 11:24:12
 * @LastEditTime: 2022-04-01 11:24:13
 * @LastEditors: 丁健
 * @Description: 
 * @FilePath: /amap_flutter_search/lib/model/amap_poi_model.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

import 'package:amap_flutter_search/model/amap_geocode.dart';

class AMapPoi {
  String? adcode;
  String? address;
  String? businessArea;
  String? city;
  String? citycode;
  String? direction;
  double? distance;
  String? district;
  String? email;
  String? gridcode;
  bool? hasIndoorMap;
  Location? location;
  String? name;
  String? parkingType;
  String? pcode;
  String? province;

  AMapPoi({
    this.adcode,
    this.address,
    this.businessArea,
    this.city,
    this.citycode,
    this.direction,
    this.distance,
    this.district,
    this.email,
    this.gridcode,
    this.hasIndoorMap,
    this.location,
    this.name,
    this.parkingType,
    this.pcode,
    this.province,
  });

  AMapPoi.fromJson(Map json) {
    json = Map<String, dynamic>.from(json);
    adcode = json["adcode"];
    address = json["address"];
    businessArea = json["businessArea"];
    city = json["city"];
    citycode = json["citycode"];
    direction = json["direction"];
    distance = json["distance"] != null
        ? (json["distance"] is int
            ? (json["distance"] as int).toDouble()
            : json["distance"] as double)
        : null;
    district = json["district"];
    email = json["email"];
    gridcode = json["gridcode"];
    hasIndoorMap = json["hasIndoorMap"];
    location =
        json["location"] == null ? null : Location.fromJson(json["location"]);
    name = json["name"];
    parkingType = json["parkingType"];
    pcode = json["pcode"];
    province = json["province"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["adcode"] = adcode;
    data["address"] = address;
    data["businessArea"] = businessArea;
    data["city"] = city;
    data["citycode"] = citycode;
    data["direction"] = direction;
    data["distance"] = distance;
    data["district"] = district;
    data["email"] = email;
    data["gridcode"] = gridcode;
    data["hasIndoorMap"] = hasIndoorMap;
    if (location != null) data["location"] = location?.toJson();
    data["name"] = name;
    data["parkingType"] = parkingType;
    data["pcode"] = pcode;
    data["province"] = province;
    return data;
  }
}
