class UserModel {
  late String? uid;
  late String? firstName;
  late String? lastName;
  late String? email;

  UserModel({this.uid, this.firstName, this.lastName, this.email});

  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        firstName: map['firstName'],
        lastName: map['lastName'],
        email: map['email']);
  }

  // Sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
    };
  }
}
