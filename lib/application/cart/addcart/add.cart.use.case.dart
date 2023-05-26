import 'package:bld/application/provider/orders.repository.provider.dart';
import 'package:bld/domain/orders/contracts/i.order.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';
import 'add.cart.use.case.input.dart';

final addcartProvider = Provider((ref) =>
    AddCartUseCase(orderRepository: ref.watch(ordersRepositoryProvider)));

class AddCartUseCase implements IUseCase<AddCartUseCaseInput, dynamic> {
  final IOrderRepository? _orderRepository;
  AddCartUseCase({IOrderRepository? orderRepository})
      : _orderRepository = orderRepository;
  @override
  Future<Either<ApiFailures, dynamic>> execute(
      AddCartUseCaseInput input) async {
    return await _orderRepository!.addToCart(
        supplierid: input.supplierid!,
        supplierproductid: input.supplierproductid!,
        quantity: input.quantity!);
  }
}
