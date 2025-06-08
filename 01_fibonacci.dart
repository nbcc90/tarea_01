void main() {
  print(fibonacci(15));
}

List<int> fibonacci(int n) {
  List<int> num_list = [];

  if (n <= 0) {
    return num_list;

  } else if (n == 1) {
    num_list.add(0);
    return num_list;

  } else {
    num_list.add(0);
    num_list.add(1);

    while (num_list.length < n) {
      int next = num_list[num_list.length - 1] + num_list[num_list.length - 2];
      num_list.add(next);
    }
    return num_list;
  }
}