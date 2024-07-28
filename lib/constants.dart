import 'package:flutter/material.dart';

const kPrimaryColour= Color(0xFF6F35A5);
const kPrimaryLightColour= Color(0xFFF1E6FF);

const double defaultPadding=16.0;



class Restaurants {
  String imageUrl, title, locations, rating, description,price;
  int id;
  //int id;

  Restaurants(
      {required this.imageUrl,
        required this.title,
        required this.id,
        required this.locations,
        required this.rating,
        required this.description,
        required this.price});
}

List<Restaurants> restaurantList = [
  Restaurants(
      title: "Om Sweet & Snacks",
      id: 1,
      locations: "North Indian,South Indian,Chinese",
      description:
      "Om Sweets and Snacks is a popular Indian hotel chain known for its authentic vegetarian cuisine, traditional sweets, and snacks. With a legacy spanning over 50 years, the restaurant prides itself on using only the freshest ingredients and traditional cooking techniques to create delicious dishes bursting with flavor. The warm and welcoming ambiance, combined with excellent customer service, makes it a favorite among locals and visitors alike. Whether you're in the mood for a quick snack or a hearty meal, Om Sweets and Snacks has something for everyone",
      price: "100",
      rating: "4.2",
      imageUrl:
      "https://assets.limetray.com/assets/image_manager/uploads/8180/omsweets-ss-slide-1.jpg"),
  Restaurants(
    title: "The Masala Story",
    id: 2,
    locations: "North Indian, Mughlai, Kebab",
    description:
    "The Masala Story is a renowned Indian restaurant that offers a modern twist on classic Indian cuisine. With a focus on fresh, high-quality ingredients, The Masala Story creates dishes that are both flavorful and visually stunning. From traditional curries and tandoori specialties to innovative small plates and fusion dishes, the menu at The Masala Story offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "300",
    rating: "4.1",
    imageUrl:
    "https://s3-ap-southeast-1.amazonaws.com/assets.limetray.com/assets/user_images/content_images/original/masalastory-234534.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    id: 3,
    locations: "Pizza, Fast Food",
    description:
    "Domino's Pizza is a popular pizza restaurant chain that offers a wide selection of delicious pizzas, sides, and desserts. With a focus on fresh, high-quality ingredients, Domino's Pizza creates pizzas that are both flavorful and visually stunning. From traditional pizzas to innovative fusion dishes, the menu at Domino's Pizza offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.1",
    imageUrl:
    "https://b.zmtcdn.com/data/pictures/3/4000013/d8ad25988e906612aea78a82543e25c7.jpg?fit=around|960:500&crop=960:500;*,*",
  ),
  Restaurants(
    title: "MC Donald's",
    id: 4,
    locations: "Burger, Fast Food, Beverages",
    description:
    "McDonald's is a popular fast food restaurant chain that offers a wide selection of delicious burgers, sides, and desserts. With a focus on fresh, high-quality ingredients, McDonald's creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at McDonald's offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.1",
    imageUrl:
    "https://s7d1.scene7.com/is/image/mcdonalds/1PUB_bestburger_trendingnow:1-column-desktop?resmode=sharp2",
  ),
  Restaurants(
    title: "Gohana Faous Jalebi",
    id: 5,
    locations: "Street Food, Mithai",
    description:
    "Gohana Famous Jalebi is a popular Indian sweet shop that offers a wide selection of delicious sweets and snacks. With a focus on fresh, high-quality ingredients, Gohana Famous Jalebi creates dishes that are both flavorful and visually stunning. From traditional sweets to innovative fusion dishes, the menu at Gohana Famous Jalebi offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "100",
    rating: "4.2",
    imageUrl: "https://m.media-amazon.com/images/I/515Ueeh4ylL._AC_UF1000,1000_QL80_.jpg",
  ),
  Restaurants(
    title: "Burger King",
    id: 6,
    locations: "Burger, American, Desserts",
    description:
    "Burger King is a popular fast food restaurant chain that offers a wide selection of delicious burgers, sides, and desserts. With a focus on fresh, high-quality ingredients, Burger King creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at Burger King offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.2",
    imageUrl:
    "https://b.zmtcdn.com/data/pictures/chains/9/3800929/c8008523810583087401ff292c1763a3.jpg?fit=around|960:500&crop=960:500;*,*",
  ),
  Restaurants(
    title: "Haldiram's",
    id: 7,
    locations: "North Indian, Mithai, South Indian",
    description:
    "Haldiram's is a popular Indian restaurant chain that offers a wide selection of delicious sweets and snacks. With a focus on fresh, high-quality ingredients, Haldiram's creates dishes that are both flavorful and visually stunning. From traditional sweets to innovative fusion dishes, the menu at Haldiram's offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "100",
    rating: "4.0",
    imageUrl:
    "https://b.zmtcdn.com/data/pictures/chains/0/550/3cf1d442e2777580486d16bfb88990f4_featured_v2.jpg",
  ),
];

class FoodItems {
  String imageUrl, name;

  FoodItems({
    required this.imageUrl,
    required this.name,
  });
}

List<FoodItems> foodItemList = [
  FoodItems(
      name: "Healthy",
      imageUrl:
      "https://png.pngtree.com/png-vector/20231019/ourmid/pngtree-beautiful-food-bowl-png-image_10229882.png"),
  FoodItems(
      name: "Pizza",
      imageUrl:
      "https://png.pngtree.com/png-clipart/20231019/original/pngtree-pizza-png-with-ai-generated-png-image_13357740.png"),
  FoodItems(
      name: "Burger",
      imageUrl:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA_BJwyjsUiqs8yXWtgL-eSWzNZ--CdEXbXA&s"),
  FoodItems(
      name: "Rolls",
      imageUrl:
      "https://png.pngtree.com/png-vector/20230918/ourmid/pngtree-asian-food-spring-rolls-3d-illustration-png-image_10126916.png"),
  FoodItems(
      name: "Biryani",
      imageUrl:
      "https://png.pngtree.com/png-clipart/20230522/original/pngtree-chicken-biryani-front-view-png-image_9167532.png"),
  FoodItems(
      name: "Paneer",
      imageUrl:
      "https://png.pngtree.com/png-clipart/20230912/original/pngtree-paneer-butter-masala-png-image_11051765.png"),
  FoodItems(
      name: "Chicken",
      imageUrl:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8-B93ht2FH9tPUu82laGoqUyFqCCblwQ-pA&s"),
  FoodItems(
      name: "Healthy",
      imageUrl:
      "https://png.pngtree.com/png-vector/20231019/ourmid/pngtree-beautiful-food-bowl-png-image_10229882.png"),
  FoodItems(
      name: "Pizza",
      imageUrl:
      "https://png.pngtree.com/png-clipart/20231019/original/pngtree-pizza-png-with-ai-generated-png-image_13357740.png"),
  FoodItems(
      name: "Burger",
      imageUrl:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA_BJwyjsUiqs8yXWtgL-eSWzNZ--CdEXbXA&s"),
  FoodItems(
      name: "Rolls",
      imageUrl:
      "https://png.pngtree.com/png-vector/20230918/ourmid/pngtree-asian-food-spring-rolls-3d-illustration-png-image_10126916.png"),
  FoodItems(
      name: "Biryani",
      imageUrl:
      "https://png.pngtree.com/png-clipart/20230522/original/pngtree-chicken-biryani-front-view-png-image_9167532.png"),
  FoodItems(
      name: "Paneer",
      imageUrl:
      "https://png.pngtree.com/png-clipart/20230912/original/pngtree-paneer-butter-masala-png-image_11051765.png"),
  FoodItems(
      name: "Chicken",
      imageUrl:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8-B93ht2FH9tPUu82laGoqUyFqCCblwQ-pA&s"),
];

class Restaurants1 {
  String  title, price;

  Restaurants1(
      {
        required this.title,

        required this.price});
}

List<Restaurants1> restaurantList1 = [
  Restaurants1(
    title: "Jalebi",
    price: "50",),
  Restaurants1(
    title: "Rasgulla",
    price: "100",),
  Restaurants1(
    title: "Rasmalai",
    price: "100",),
  Restaurants1(
    title: "Gulab Jamun",
    price: "70",),
  Restaurants1(
    title: "Besan Ladoo",
    price: "160",),
  Restaurants1(
    title: "Kaju Katli",
    price: "200",),
  Restaurants1(
    title: "Rava Ladoo",
    price: "160",),
  Restaurants1(
    title: "Moong Dal Halwa",
    price: "200",),
];

class Restaurants6 {
  String title, price;

  Restaurants6({required this.title, required this.price});
}

List<Restaurants6> restaurantList6= [
  Restaurants6(title: "Veg Burger", price: "150"),
  Restaurants6(title: "Chicken Burger", price: "250"),
  Restaurants6(title: "Paneer Burger", price: "250"),
  Restaurants6(title: "Veg Burger", price: "350"),
  Restaurants6(title: "Chicken Burger", price: "250"),
  Restaurants6(title: "Paneer Burger", price: "250"),
];