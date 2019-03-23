import 'dart:async';

import 'package:type_helper/type_helper.dart';

void main() {
  if (isTypeOf<B<int>, A<num>>()) {
    print('B<int> is type of A<num>');
  }

  if (!isTypeOf<B<int>, A<double>>()) {
    print('B<int> is not a type of A<double>');
  }

  if (isTypeOf<String, Comparable<String>>()) {
    print('String is type of Comparable<String>');
  }

  var b = B<Stream<int>>();
  b.doIt();
}

class A<T> {
  //
}

class B<T> extends A<T> {
  void doIt() {
    if (isTypeOf<T, Stream>()) {
      print('($T): T is type of Stream');
    }

    if (isTypeOf<T, Stream<int>>()) {
      print('($T): T is type of Stream<int>');
    }
  }
}
