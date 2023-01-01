class SectionModel {
  String? sectionName;
  num? sectionNumber;


  SectionModel.fromJson(Map<String, dynamic> json) {
      sectionName= json["sectionName"];
      sectionNumber= json["sectionNumber"];
  }

  SectionModel({this.sectionName, this.sectionNumber});


  Map<String, dynamic> toJson() {
    return {
      "sectionName": this.sectionName,
      "sectionNumber": this.sectionNumber,
    };
  }
}