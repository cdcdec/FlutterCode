class LvItem{
  String title;
  String subTitle;
  int sort;
  int id;

  @override
  String toString() {
    return 'LvItem{title: $title, subTitle: $subTitle, sort: $sort, id: $id}';
  }

  LvItem(this.title, this.subTitle, this.sort, this.id);
}

