class Slide {
  final String image;
  final String desc;
  final String title;

  Slide({
    this.image,
    this.title,
    this.desc,
  });
}

final slideList = [
  Slide(
    image: "assets/images/test.png",
    title: "All your favorites",
    desc:
        "Order from the best local restaurants\n\t\t\t\t\t with easy, on-demand delivery.",
  ),
  Slide(
    image: "assets/images/correct.png",
    title: "Free delivery offers",
    desc:
        "Free delivery for new customers via Apple\n\t\t\t\t\t Pay and others payment methods.",
  ),
  Slide(
    image: "assets/images/dungko.png",
    title: "Choose your food",
    desc:
        "Easily find your type of food craving and\n\t\t\t\t\t you'll get delivery in wide range.",
  )
];
