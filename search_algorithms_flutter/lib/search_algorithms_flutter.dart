library search_algorithms_flutter;

import 'dart:math';

/// Measures the time taken by the search function and returns the result along with elapsed time.
Map<String, dynamic> measureTime(Function func) {
  final stopwatch = Stopwatch()..start();
  int result = func();
  stopwatch.stop();
  return {'result': result, 'time': stopwatch.elapsedMicroseconds};
}

/// Linear search algorithm
int linearSearch(List<String> data, String searchTerm) {
  for (int i = 0; i < data.length; i++) {
    if (data[i] == searchTerm) {
      return i;
    }
  }
  return -1;
}

/// Binary search algorithm
int binarySearch(List<String> data, String searchTerm) {
  int low = 0;
  int high = data.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (data[mid] == searchTerm) {
      return mid;
    } else if (data[mid].compareTo(searchTerm) < 0) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

/// Jump search algorithm
int jumpSearch(List<String> data, String searchTerm) {
  int n = data.length;
  int step = sqrt(n).toInt();
  int prev = 0;

  while (data[min(step, n) - 1].compareTo(searchTerm) < 0) {
    prev = step;
    step += sqrt(n).toInt();
    if (prev >= n) {
      return -1;
    }
  }

  while (data[prev].compareTo(searchTerm) < 0) {
    prev++;
    if (prev == min(step, n)) {
      return -1;
    }
  }

  if (data[prev] == searchTerm) {
    return prev;
  }

  return -1;
}
