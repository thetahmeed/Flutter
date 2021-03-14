class User {
  int id;
  String employeeName;
  int employeeSalary;
  int employeeAge;
  String profileImage;

  User(this.id, this.employeeName, this.employeeSalary, this.employeeAge,
      this.profileImage);

  User.fromJson(dynamic json) {
    id = json["id"];
    employeeName = json["employee_name"];
    employeeSalary = json["employee_salary"];
    employeeAge = json["employee_age"];
    profileImage = json["profile_image"];
  }
}

// this page is auto created by http://flutter-util.glitch.me/
