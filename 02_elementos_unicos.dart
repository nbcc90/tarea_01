void main() {

  var my_set = Set();
  final List<dynamic> my_list = [12, "Nestor", 90, true, false, 1990, "Castro", "Nestor", 12, false ];
  my_set.addAll(my_list);

  print(my_set.toList());
}