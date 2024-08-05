import 'package:search_algorithms_flutter/search_algorithms_flutter.dart';

void main() {
  List<String> data = [
    'apple',
    'banana',
    'cherry',
    'date',
    'fig',
    'grape',
    'kiwi'
  ];
  String searchTerm = 'cherry';

  var linearResult = measureTime(() => linearSearch(data, searchTerm));
  print(
      'Linear Search Result: ${linearResult['result']}, Time: ${linearResult['time']} µs');

  var binaryResult = measureTime(() => binarySearch(data, searchTerm));
  print(
      'Binary Search Result: ${binaryResult['result']}, Time: ${binaryResult['time']} µs');

  var jumpResult = measureTime(() => jumpSearch(data, searchTerm));
  print(
      'Jump Search Result: ${jumpResult['result']}, Time: ${jumpResult['time']} µs');
}
