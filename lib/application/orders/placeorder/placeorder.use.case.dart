import 'package:bld/application/orders/placeorder/placeorder.use.case.input.dart';
import 'package:bld/application/projects/addproject/addproject.use.case.input.dart';
import 'package:bld/application/provider/orders.repository.provider.dart';
import 'package:bld/application/provider/project.repository.provider.dart';
import 'package:bld/domain/projects/contracts/i.project.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../../domain/orders/contracts/i.order.repository.dart';
import '../../core/use_cases/i.use_case.dart';


final placeOrderprovider = Provider((ref) =>
    PlaceOrderUseCase(projectRepository: ref.watch(ordersRepositoryProvider)));

class PlaceOrderUseCase implements IUseCase<PlaceOrderUseCaseInput, dynamic> {
  final IOrderRepository? _projectRepository;

  PlaceOrderUseCase({IOrderRepository? projectRepository})
      : _projectRepository = projectRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      PlaceOrderUseCaseInput input) async {
    return await _projectRepository!.placeOrder(
        notes: input.notes,
        deliverytimeid: input.deliverytimeid,
        supplierid: input.supplierid,
        paymentmethod: input.paymentmethod,
        location: input.location);
  }
}
