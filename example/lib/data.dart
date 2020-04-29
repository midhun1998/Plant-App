import 'dart:math';

int highText = 0xFFD50000;
int highTemp = 0xFFD32F2F;
int moderateText =0xFFffC400;
int moderateTemp = 0xFFFF9800;
int normalText = 0xFF69F0AE;
int normalTemp = 0xFF66BB6A;
int lightBlueHumidity = 0xFF2196F3;
int darkBlueMoisture = 0xFF3F51B5;
List types = ["recieved", "sent"];

List coins = [

];


class DataModelApi {
  Channel channel;
  List<Feeds> feeds;

  DataModelApi({this.channel, this.feeds});

  DataModelApi.fromJson(Map<String, dynamic> json) {
    channel =
    json['channel'] != null ? new Channel.fromJson(json['channel']) : null;
    if (json['feeds'] != null) {
      feeds = new List<Feeds>();
      json['feeds'].forEach((v) {
        feeds.add(new Feeds.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.channel != null) {
      data['channel'] = this.channel.toJson();
    }
    if (this.feeds != null) {
      data['feeds'] = this.feeds.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Channel {
  int id;
  String name;
  String description;
  String latitude;
  String longitude;
  String field1;
  String field2;
  String field3;
  String createdAt;
  String updatedAt;
  int lastEntryId;

  Channel(
      {this.id,
        this.name,
        this.description,
        this.latitude,
        this.longitude,
        this.field1,
        this.field2,
        this.field3,
        this.createdAt,
        this.updatedAt,
        this.lastEntryId});

  Channel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    field1 = json['field1'];
    field2 = json['field2'];
    field3 = json['field3'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    lastEntryId = json['last_entry_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['field1'] = this.field1;
    data['field2'] = this.field2;
    data['field3'] = this.field3;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['last_entry_id'] = this.lastEntryId;
    return data;
  }
}

class Feeds {
  String createdAt;
  int entryId;
  String field1;
  String field2;
  String field3;

  Feeds({this.createdAt, this.entryId, this.field1, this.field2, this.field3});

  Feeds.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    entryId = json['entry_id'];
    field1 = json['field1'];
    field2 = json['field2'];
    field3 = json['field3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created_at'] = this.createdAt;
    data['entry_id'] = this.entryId;
    data['field1'] = this.field1;
    data['field2'] = this.field2;
    data['field3'] = this.field3;
    return data;
  }
}



