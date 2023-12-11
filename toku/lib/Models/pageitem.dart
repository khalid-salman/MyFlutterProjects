class ItemModel {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;

  const ItemModel(
      {required this.sound,
      this.image,
      required this.jpName,
      required this.enName});
}
