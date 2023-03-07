import 'package:flutter_triple/flutter_triple.dart';

import '../models/home_model.dart';

class HomeStore extends StreamStore<Exception, HomeModel> {
  HomeStore() : super(const HomeModel());

  void increment() {
    update(state.copyWith(count: state.count + 1));
  }
}
