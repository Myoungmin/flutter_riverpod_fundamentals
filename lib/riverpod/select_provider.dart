import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_fundamentals/model/shopping_item_model.dart';

final selectProvider = NotifierProvider<SelectNotifier, ShoppingItemModel>(SelectNotifier.new);

class SelectNotifier extends Notifier<ShoppingItemModel> {
  @override
  build() {
    return ShoppingItemModel(
        name: '김치', quantity: 3, hasBought: false, isSpicy: true);
  }

  toggleHasBought() {
    state = state.copyWith(hasBought: !state.hasBought);
  }

  toggleIsSpicy() {
    state = state.copyWith(isSpicy: !state.isSpicy);
  }
}
