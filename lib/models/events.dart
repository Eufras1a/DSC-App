class Event {
  int id;
  String date;
  String time;
  String venue;
  String title;
  String info;
  List<Topics> topics;
  String link;
  String docs;
  bool headlineEvent;

  Event(
      {this.id,
      this.date,
      this.time,
      this.venue,
      this.title,
      this.info,
      this.topics,
      this.link,
      this.docs,
      this.headlineEvent});

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    time = json['time'];
    venue = json['venue'];
    title = json['title'];
    info = json['info'];
    if (json['topics'] != null) {
      topics = new List<Topics>();
      json['topics'].forEach((v) {
        topics.add(new Topics.fromJson(v));
      });
    }
    link = json['link'];
    docs = json['docs'];
    headlineEvent = json['headline_event'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['time'] = this.time;
    data['venue'] = this.venue;
    data['title'] = this.title;
    data['info'] = this.info;
    if (this.topics != null) {
      data['topics'] = this.topics.map((v) => v.toJson()).toList();
    }
    data['link'] = this.link;
    data['docs'] = this.docs;
    data['headline_event'] = this.headlineEvent;
    return data;
  }
}

class Topics {
  int id;
  String name;

  Topics({this.id, this.name});

  Topics.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
