class WidgetLvItem{
  String title;
  String subTitle;
  int sort;
  int id;
  @override
  String toString() {
    return 'WidgetLvItem{title: $title, subTitle: $subTitle, sort: $sort, id: $id}';
  }

  WidgetLvItem(this.title, this.subTitle, this.sort, this.id);

}

