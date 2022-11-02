void main() {
  testFuture().then((value) => print(value), onError: (e) {
    print('1 $e');
  }).catchError((e) {
    print('2 $e');
  });
}

Future<String> testFuture() {
  // return Future.value("China");
  return Future.error('error');
}
