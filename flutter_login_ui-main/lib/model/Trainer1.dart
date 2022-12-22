final trainer1 = [
  Trainer(
    mealTime: "Zaman",
    timeTaken: "Yoga specialist",
    imagePath: "assets/t1.jpg",
    percent: "4.5",
  ),
  Trainer(
    mealTime: "Naim",
    timeTaken: "S&D",
    imagePath: "assets/t2.jpg",
    percent: "4",
  ),
  Trainer(
    mealTime: "Sardar",
    timeTaken: "Food dietitians",
    imagePath: "assets/t3.png",
    percent: "4.5",
  ),
  Trainer(
    mealTime: "Baqer",
    timeTaken: "S&D",
    imagePath: "assets/t4.jpg",
    percent: "4",
  ),
];

class Trainer {
  final String mealTime, imagePath, timeTaken, percent;
  Trainer({
    this.mealTime = "",
    this.imagePath = "",
    this.timeTaken = "",
    this.percent = "",
  });
}