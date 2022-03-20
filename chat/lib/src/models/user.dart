class User {
  String get id => _id;
  String username;
  String profilePic;
  String phoneNumber;
  late String _id;
  bool active;
  DateTime lastSeen;

  User({
    required this.username,
    required this.profilePic,
    required this.phoneNumber,
    required this.active,
    required this.lastSeen,
  });

  toJson() => {
        'username': username,
        'profile_pic': profilePic,
        'active': active,
        'last_seen': lastSeen,
        'phone_number': phoneNumber
      };
  factory User.fromJson(Map<String, dynamic> json) {
    final user = User(
      active: json['active'],
      lastSeen: json['last_seen'],
      phoneNumber: json['phone_number'],
      profilePic: json['profile_pic'],
      username: json['username'],
    );
    user._id = json['id'];
    return user;
  }
}
