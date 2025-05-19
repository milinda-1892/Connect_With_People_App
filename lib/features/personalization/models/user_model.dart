import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connect_with_people_app/utils/formatters/formatter.dart';

/// Model class representing user data

class UserModel {
  // Keep those values final which you do not want to update
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  /// Constructor for UserModel
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
    //required String username,
  });

  ///Heiper function to get the full name.
  String get fullName => '$firstName $lastName';

  ///Heiper function to get the full name.
  String get formattedPhoneNo => CFomatter.formatPhoneNumber(phoneNumber);

  ///Static function to split full name into first and last name.
  static List<String> nameParts(fullName) => fullName.split(" ");

  ///Static function to generate a username from the Full name.
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername =
        "$firstName$lastName"; //combine first and last name
    String usernameWithPrefix =
        "cwt_$camelCaseUsername"; //add prefix to the username
    return usernameWithPrefix; //return the username
  }

  /// Static function to craete an empty user model.
  static UserModel empty() => UserModel(
    id: '',
    firstName: '',
    lastName: '',
    username: '',
    email: '',
    phoneNumber: '',
    profilePicture: '',
  );

  /// convert model to json structure for storing in firestore.
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  /// Factory method to create a UserModel from a Firebase document snapshot.
  factory UserModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> document,
  ) {
    // if (document.data() != null) {
    final data = document.data()!; // Get the data from the snapshot
    return UserModel(
      id: document.id,
      firstName: data['FirstName'] ?? '',
      lastName: data['LastName'] ?? '',
      username: data['Username'] ?? '',
      email: data['Email'] ?? '',
      phoneNumber: data['PhoneNumber'] ?? '',
      profilePicture: data['ProfilePicture'] ?? '',
    );
    // }
  }
}
