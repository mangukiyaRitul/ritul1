class Aplicollingmodel {

  final int id;
  final int userid;
  final String title;
  final bool completed;

  Aplicollingmodel({
    required this.id,
    required this.userid,
    required this.title,
    required this.completed });

  factory Aplicollingmodel.fromJson(Map<String,dynamic> json) => Aplicollingmodel(
      id: json["id"],
      userid: json["userId"],
      title: json["title"],
      completed: json["completed"]);
}
