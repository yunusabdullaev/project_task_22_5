import 'dart:convert';
import 'dart:core';

List<University> userListFromData(String data) =>
    List<University>.from(jsonDecode(data).map((e) => University.fromJson(e)));
/* {
        "courseCode": "CSE101",
        "courseName": "Introduction to Computer Science",
        "credits": 3,
        "department": "Computer Science",
        "instructors": [
            {
                "name": "Dr. John Smith",
                "office": "Building A, Room 102",
                "email": "john.smith@example.com"
            },
            {
                "name": "Prof. Emily Johnson",
                "office": "Building B, Room 215",
                "email": "emily.johnson@example.com"
            }
        ],
        "schedule": {
            "days": [
                "Monday",
                "Wednesday",
                "Friday"
            ],
            "time": "10:00 AM - 11:30 AM"
        },
        "enrollment": {
            "currentStudents": 120,
            "capacity": 150
        },
        "textbooks": [
            {
                "title": "Computer Science: An Overview",
                "author": "J. Glenn Brookshear",
                "isbn": "978-0133760064"
            },
            {
                "title": "Introduction to Algorithms",
                "author": "Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein",
                "isbn": "978-0262033848"
            }
        ]
    },*/

class University {
  late String courseCode;
  late int credits;
  late double department;
  late Instructors instructors;

  University.fromJson(Map<String, dynamic> json) {
    courseCode = json["courseCode"];
    credits = json["credits"];
    department = json["department"];
    instructors = Instructors.fromJson(json["instructors"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "courseCode": courseCode,
      "credits": credits,
      "department": department,
      "instructors": instructors
    };
    return map;
  }

  @override
  String toString() {
    return "courseCode $courseCode\ncredits: $credits\ndepartment: $department\ninstructors: $instructors";
  }
}

class Instructors {
  late String name;
  late String office;
  late String email;

  Instructors.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    office = json["office"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "office": office,
      "email": email,
    };
    return map;
  }

  @override
  String toString() {
    return "name: $name\noffice: $office\nemail: $email";
  }
}

class Schedule {
  late Days days;

  Schedule.fromJson(Map<String, dynamic> json) {
    days = Days.fromJson(json["Days"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {"days": days};
    return map;
  }

  @override
  String toString() {
    return "days: $days";
  }
}

class Days{
  
}