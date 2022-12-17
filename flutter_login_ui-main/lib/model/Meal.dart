final meals = [
  Meal(
    mealTime: " BREAKFAST",
    timeTaken: "08:00AM-08:30AM",
    imagePath: "assets/keto_snack.jpg",
    
   // percent: "4.5",
  ),

  Meal(
    mealTime: "DINNER",
    timeTaken: "7:00PM-7:30PM",
    imagePath: "assets/pesto_pasta.jpg",
    //percent: "4.5",
  ),
  Meal(
    mealTime: "SNACK",
    timeTaken: "5:00PM-5:30PM",
    imagePath: "assets/fruit_granola.jpg",
    //percent: "4.5",
  ),
  Meal(
    mealTime: "Lunch",
    timeTaken: "12:30PM-1:00PM",
    imagePath: "assets/dinner copy.jpg",
    //percent: "4.5",
  ),
];

class Meal {
  final String mealTime, imagePath, timeTaken, percent;
  Meal({
    this.mealTime = "",
    this.imagePath = "",
    this.timeTaken = "",
    this.percent = "",
  });
}