class CylinderModel {
  final double height;
  final double radius;

  CylinderModel({required this.height, required this.radius});

  double volume() {
    return 3.14159 * radius * radius * height;
  }

  double surfaceArea() {
    return 2 * 3.14159 * radius * (radius + height);
  }
}