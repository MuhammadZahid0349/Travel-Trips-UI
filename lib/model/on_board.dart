class OnBoard {
  String image;
  String title;
  String description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

var onBoardList = [
  OnBoard(
    image: 'images/image-onboard-1.png',
    title: 'Plan Your Trip',
    description: 'Save places and book your perfect trip with Circle App',
  ),
  OnBoard(
    image: 'images/image-onboard-2.png',
    title: 'Begin The Adventure',
    description: 'Begin The Circle App with Alone or your family & friends',
  ),
  OnBoard(
    image: 'images/image-onboard-3.png',
    title: 'Enjoy Your Trip',
    description: 'Enjoy your Circle Travel Package and stay relax',
  ),
];
