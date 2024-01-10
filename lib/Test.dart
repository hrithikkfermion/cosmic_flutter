import 'dart:ffi';

void main() {
  List<int> numberList = [1, 2, 4, 5];
  for (int i = 0; i < numberList.length; i++) {
    print(numberList[i]);
  }
  numberList.sort((a,b)=>a.compareTo(b));
  print(numberList);
}
