

class Item {
  String item;
  bool complete;

  Item({required this.item, this.complete = false});

  void toggle() {
    complete = !complete;
  }
}
