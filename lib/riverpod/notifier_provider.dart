import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_fundamentals/model/shopping_item_model.dart';

final shoppingListProvider =
    NotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
        ShoppingListNotifier.new);

class ShoppingListNotifier extends Notifier<List<ShoppingItemModel>> {
  @override
  build() {
    return [
      ShoppingItemModel(
          name: '김치', quantity: 3, hasBought: false, isSpicy: true),
      ShoppingItemModel(
          name: '라면', quantity: 5, hasBought: false, isSpicy: true),
      ShoppingItemModel(
          name: '삼겹살', quantity: 10, hasBought: false, isSpicy: false),
      ShoppingItemModel(
          name: '수박', quantity: 2, hasBought: false, isSpicy: false),
      ShoppingItemModel(
          name: '카스테라', quantity: 5, hasBought: false, isSpicy: false),
    ];
  }

  void toggleHasBought({required String name}) {
    state = state
        .map((e) => e.name == name
            ? ShoppingItemModel(
                name: e.name,
                quantity: e.quantity,
                hasBought: !e.hasBought,
                isSpicy: e.isSpicy)
            : e)
        .toList();
  }
}
