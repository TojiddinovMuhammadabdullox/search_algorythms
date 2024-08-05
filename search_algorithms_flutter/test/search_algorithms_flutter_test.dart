import 'package:flutter_test/flutter_test.dart';
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

  group('Search Algorithms Tests', () {
    test('Linear Search - Found', () {
      var result = measureTime(() => linearSearch(data, 'cherry'));
      expect(result['result'], 2);
    });

    test('Linear Search - Not Found', () {
      var result = measureTime(() => linearSearch(data, 'orange'));
      expect(result['result'], -1);
    });

    test('Binary Search - Found', () {
      var result = measureTime(() => binarySearch(data, 'cherry'));
      expect(result['result'], 2);
    });

    test('Binary Search - Not Found', () {
      var result = measureTime(() => binarySearch(data, 'orange'));
      expect(result['result'], -1);
    });

    test('Jump Search - Found', () {
      var result = measureTime(() => jumpSearch(data, 'cherry'));
      expect(result['result'], 2);
    });

    test('Jump Search - Not Found', () {
      var result = measureTime(() => jumpSearch(data, 'orange'));
      expect(result['result'], -1);
    });
  });
}
