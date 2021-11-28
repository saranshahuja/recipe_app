class User_model {
  final String Uid;
  final String firstName;
  final String lastName;
  final String Username;
  final int age;
  final String gender;


  User_model(
      {required this.Uid,
       required
        this.gender,
        required this.age,required
        this.lastName,
        required this.firstName,
        required this.Username});

  factory User_model.fromJson(Map<String, dynamic> json) {
    return User_model(
        Uid: json['Uid'],
        firstName: json['First Name'],
        lastName: json['Last Name'],
        Username: json['Username'],
        age: json['Age'],
        gender: json['Gender'],
        );
  }

  Map<String, dynamic> toMap() {
    return {
      'Uid': Uid,
      'First Name': firstName,
      'Last Name': lastName,
      'Username': Username,
      'Age': age,
      'Gender': gender,

    };
  }
}
