// To parse this JSON data, do
//
//     final callList = callListFromJson(jsonString);

import 'dart:convert';

CallList callListFromJson(String str) => CallList.fromJson(json.decode(str));

String callListToJson(CallList data) => json.encode(data.toJson());

class CallList {
    CallList({
        this.avatar,
        this.name,
        this.icon,
        this.callTime,
        this.callType,
    });

    String? avatar;
    String? name;
    String? icon;
    String? callTime;
    String? callType;

    factory CallList.fromJson(Map<String, dynamic> json) => CallList(
        avatar: json["avatar"],
        name: json["name"],
        icon: json["Icon"],
        callTime: json["Call_Time"],
        callType: json["Call_Type"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "Icon": icon,
        "Call_Time": callTime,
        "Call_Type": callType,
    };
}
