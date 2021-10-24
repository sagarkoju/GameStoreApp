class Game {
  String bgImg;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String desc;
  List<String> imgs;
  Game(
    this.bgImg,
    this.desc,
    this.download,
    this.icon,
    this.imgs,
    this.name,
    this.review,
    this.score,
    this.type,
  );
  static List<Game> generateGames() {
    return [
      Game(
        'assets/ori1.jpg',
        'Ori and the Blind Forest” tells the tale of a young orphan destined for heroics, through a visually stunning action-platformer crafted by Moon Studios for PC.',
        50,
        'assets/ori_logo.png',
        [
          'assets/ori2.jpg',
          'assets/ori3.jpg',
          'assets/ori4.jpg',
          'assets/ori5.jpg',
        ],
        'Ori and the Blind Forest',
        411,
        5.4,
        'Adventure',
      ),
      Game(
        'assets/images.jpg',
        'Rayman Legends is a platform video game developed by Ubisoft Montpellier and published by Ubisoft. It is the fifth main title in the Rayman series and the direct sequel to the 2011 game Rayman Origins',
        4,
        'assets/rl_logo.png',
        [
          'assets/images (1).jpg',
          'assets/images (2).jpg',
          'assets/images (3).jpg',
          'assets/images (4).jpg',
          'assets/images (5).jpg',
        ],
        'World Cup 2022',
        411,
        4.7,
        'Adventure',
      ),
      Game(
        'assets/rl1.jpg',
        'The game has been available since Monday, September 27 to those who pre-order the Ultimate Edition. FIFA 22 will be released on next-gen consoles PlayStation 5, Xbox Series X/S, as well as Windows, PlayStation 4, Xbox One, Nintendo Switch and Google Stadia.',
        4,
        'assets/rl_logo.png',
        [
          'assets/rl1.jpg',
          'assets/rl2.jpg',
          'assets/rl3.jpg',
          'assets/rl4.jpg',
          'assets/rl5.jpg',
        ],
        'FiFa 2022',
        500,
        8.7,
        'FIFA',
      ),
    ];
  }
}
