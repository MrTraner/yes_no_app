class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel(this.answer, this.forced, this.image);

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) =>
      YesNoModel(json['answer'], json['forced'], json['image']);
}
