class RouteArgument {
  String id;
  String heroTag;
  dynamic param;

  RouteArgument({required this.id, required this.heroTag, this.param});

  @override
  String toString() {
    return '{id: $id, heroTag:${heroTag.toString()}}';
  }
}
