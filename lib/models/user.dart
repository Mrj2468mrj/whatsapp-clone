import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.avatar,
        this.name,
        this.group,
        this.update,
        this.meassage,
    });

    String? avatar;
    String? name;
    bool? group;
    String? update;
    String? meassage;

    factory User.fromJson(Map<String, dynamic> json) => User(
        avatar: json["avatar"],
        name: json["name"],
        group: json["Group"],
        update: json["Update"],
        meassage: json["Meassage"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "Group": group,
        "Update": update,
        "Meassage": meassage,
    };
}
