class StudentModel{
  String? name;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }

  StudentModel.fromJson(Map<String, dynamic> json) {

      name= json["name"];
  }

  StudentModel(this.name);
}