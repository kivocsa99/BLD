class PlaceOrderUseCaseInput {
  final String? apitoken;
  final String? name;
  final String? description;
  final String? area;
  final String? location;

  PlaceOrderUseCaseInput(
      {this.apitoken, this.name, this.description, this.area, this.location});
}
