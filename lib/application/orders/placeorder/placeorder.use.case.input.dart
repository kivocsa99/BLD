class PlaceOrderUseCaseInput {
  final String? supplierid;
  final String? deliverytimeid;
  final String? paymentmethod;
  final String? location;
  final String? notes;

  PlaceOrderUseCaseInput(
      {this.supplierid,
      this.notes,
      this.deliverytimeid,
      this.paymentmethod,
      this.location});
}
