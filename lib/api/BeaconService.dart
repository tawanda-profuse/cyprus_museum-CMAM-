import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:cyprus_museum/models/Beacon.dart';

class BeaconService {
  String token =
      "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlOTM3ZGFhZDZlMDdmMDAxNzQ0MWY3MyIsImlzQWRtaW4iOnRydWUsImlhdCI6MTU5MDExMDQxMiwiZXhwIjoxNTkyNzAyNDEyfQ.3_m2gqTtUIGGNwftHYrTdr1KFDMcuvIsRJ__AFWnxjY";

  Future<List<Beacon>> getAllBeacon() async {
    final response = await http.get(
      'https://thawing-crag-60834.herokuapp.com/beacons',
      headers: {HttpHeaders.authorizationHeader: token},
    );
    Iterable list = json.decode(response.body);
    return list.map((model) => Beacon.fromJson(model)).toList();
  }

  Future<Beacon> getBeaconById(String id) async {
    final response = await http.get(
      'https://thawing-crag-60834.herokuapp.com/beacons' + '/?idBeacon=' + id,
      headers: {HttpHeaders.authorizationHeader: token},
    );
    Iterable list = json.decode(response.body);
    return list.map((model) => Beacon.fromJson(model)).toList()[0];
  }
}
