class User {
  String username;
  String password;
  List<String> purchasedItems; // لیست خریدهای کاربر
  Map<String, int> ratings;   // امتیازات کاربر به هر آیتم
  List<String> wishlist;      // لیست کالاهای لایک‌شده

  User({
    required this.username,
    required this.password,
    this.purchasedItems = const [],
    this.ratings = const {},
    this.wishlist = const [],
  });

  // افزودن خرید به لیست خریدها
  void addPurchase(String item) {
    purchasedItems.add(item);
  }

  // افزودن امتیاز به یک آیتم
  void addRating(String item, int rating) {
    ratings[item] = rating;
  }

  // افزودن کالا به Wishlist
  void addToWishlist(String item) {
    if (!wishlist.contains(item)) {
      wishlist.add(item);
      print("$item added to your wishlist.");
    } else {
      print("$item is already in your wishlist.");
    }
  }

  // حذف کالا از Wishlist
  void removeFromWishlist(String item) {
    if (wishlist.contains(item)) {
      wishlist.remove(item);
      print("$item removed from your wishlist.");
    } else {
      print("$item is not in your wishlist.");
    }
  }

  // نمایش Wishlist
  void showWishlist() {
    if (wishlist.isEmpty) {
      print("Your wishlist is empty.");
    } else {
      print("Your wishlist:");
      wishlist.forEach((item) => print("- $item"));
    }
  }
}
