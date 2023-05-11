class UploadProjectUseCaseInput {
  final String? apitoken;
  final String? name;
  final String? description;
  final String? area;
  final String? location;
  final int? id;

  UploadProjectUseCaseInput(
      {this.apitoken,
      this.name,
      this.description,
      this.area,
      this.location,
      this.id});
}
