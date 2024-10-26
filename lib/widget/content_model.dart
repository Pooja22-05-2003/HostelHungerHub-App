class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent({
    required this.image,
    required this.description,
    required this.title,
  });

  // Make `contents` a static list so it’s not redefined within each instance
  static List<UnboardingContent> contents = [
    UnboardingContent(
        description: 'Pick your food from our menu\nMore than 35 items',
        image: "images/screen1.png",
        title: 'Select from our\nBest Menu'),
    UnboardingContent(
        description: 'You can pay cash on delivery and\nCard Payment is available',
        image: "images/screen2.png",
        title: 'Easy and Online Payment'),
    UnboardingContent(
        description: 'Pick your food from our menu\nMore than ',
        image: "images/screen3.png",
        title: 'Quick Delivery at your doorstep'),
  ];
}
