import 'package:draft_ap/Logins/loginA.dart';
import 'package:flutter/material.dart';
import 'package:draft_ap/categories/dastebandiA.dart';

void main() {
  runApp(homepageA());
}

class homepageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String search = "";

  final List<Map<String, dynamic>> topRatedCakes = [

    {'name': 'rose cake', 'price': 1400000, 'image': 'assets/rose.png', 'rating': 5, 'sales': 100, 'stock': 20, 'description': 'A beautiful rose-flavored cake.', 'isincart': false, 'isFavorite': false},
    {'name': 'violet cake', 'price': 800000, 'image': 'assets/purple2.png', 'rating': 5, 'sales': 90, 'stock': 15, 'description': 'A soft violet-themed cake.', 'isincart': false, 'isFavorite': false},
    {'name': 'purple geode cake', 'price': 1000000, 'image': 'assets/geode.png', 'rating': 4.8, 'sales': 85, 'stock': 10, 'description': 'Unique geode design with purple theme.', 'isincart': false, 'isFavorite': false},
    {'name': 'emerald cake', 'price': 1100000, 'image': 'assets/zomorod2.png', 'rating': 4.7, 'sales': 80, 'stock': 12, 'description': 'Elegant emerald-style cake.', 'isincart': false, 'isFavorite': false},
    {'name': 'flamingo cake', 'price': 1000000, 'image': 'assets/flamingo.jpg', 'rating': 4.5, 'sales': 75, 'stock': 18, 'description': 'Tropical flamingo design.', 'isincart': false, 'isFavorite': false},
    {'name': 'barbie cake', 'price': 1300000, 'image': 'assets/barbie.png', 'rating': 4.4, 'sales': 70, 'stock': 8, 'description': 'Perfect for Barbie fans.', 'isincart': false, 'isFavorite': false},
    {'name': 'breaking bad cake', 'price': 950000, 'image': 'assets/breakingbad.png', 'rating': 4.3, 'sales': 65, 'stock': 14, 'description': 'Inspired by Breaking Bad series.', 'isincart': false, 'isFavorite': false},
    {'name': 'the frog cake', 'price': 1050000, 'image': 'assets/thefrog.png', 'rating': 4.2, 'sales': 60, 'stock': 16, 'description': 'Funny frog-themed cake.', 'isincart': false, 'isFavorite': false},
    {'name': 'gold & gray cake', 'price': 950000, 'image': 'assets/gray.png', 'rating': 4.1, 'sales': 55, 'stock': 10, 'description': 'Luxurious gold and gray design.', 'isincart': false, 'isFavorite': false},
    {'name': 'pink lemonade cake', 'price': 900000, 'image': 'assets/pinklemonade.png', 'rating': 4.0, 'sales': 50, 'stock': 13, 'description': 'Refreshing pink lemonade flavor.', 'isincart': false, 'isFavorite': false},
  ];
  final List<Map<String, dynamic>> lowestPriceCakes = [
    {'name': 'monster bento cake', 'price': 300000, 'discountedPrice': 250000, 'image': 'assets/monster.png', 'rating': 4.1, 'sales': 50, 'stock': 25, 'description': 'Cute monster-themed bento cake.', 'isincart': false, 'isFavorite': false},
    {'name': 'sea bento cake', 'price': 300000, 'discountedPrice': 270000, 'image': 'assets/sea.png', 'rating': 4.0, 'sales': 45, 'stock': 20, 'description': 'Ocean-inspired design.', 'isincart': false, 'isFavorite': false},
    {'name': 'white bento cake', 'price': 300000, 'discountedPrice': 280000, 'image': 'assets/sefid.png', 'rating': 3.9, 'sales': 40, 'stock': 18, 'description': 'Classic white bento cake.', 'isincart': false, 'isFavorite': false},
    {'name': 'monster & boo bento cake', 'price': 300000, 'discountedPrice': 260000, 'image': 'assets/monster2.png', 'rating': 3.8, 'sales': 35, 'stock': 12, 'description': 'Fun monster and boo theme.', 'isincart': false, 'isFavorite': false},
    {'name': 'carrot cake', 'price': 600000, 'discountedPrice': 550000, 'image': 'assets/carrot.png', 'rating': 3.7, 'sales': 30, 'stock': 10, 'description': 'Delicious carrot-flavored cake.', 'isincart': false, 'isFavorite': false},
    {'name': 'strawberry naked cake', 'price': 450000, 'discountedPrice': 400000, 'image': 'assets/plain.png', 'rating': 3.6, 'sales': 25, 'stock': 22, 'description': 'Simple yet tasty strawberry cake.', 'isincart': false, 'isFavorite': false},
    {'name': 'black marble cake', 'price': 500000, 'discountedPrice': 450000, 'image': 'assets/black.png', 'rating': 3.5, 'sales': 20, 'stock': 11, 'description': 'Elegant black marble design.', 'isincart': false, 'isFavorite': false},
    {'name': 'silver cake', 'price': 750000, 'discountedPrice': 700000, 'image': 'assets/silver.png', 'rating': 3.4, 'sales': 15, 'stock': 8, 'description': 'Sophisticated silver theme.', 'isincart': false, 'isFavorite': false},
    {'name': 'updated cake', 'price': 700000, 'discountedPrice': 650000, 'image': 'assets/updated.png', 'rating': 3.3, 'sales': 10, 'stock': 14, 'description': 'Modern design with updated look.', 'isincart': false, 'isFavorite': false},
    {'name': 'avengners cake', 'price': 1000000, 'discountedPrice': 950000, 'image': 'assets/avengers.png', 'rating': 3.2, 'sales': 5, 'stock': 5, 'description': 'Perfect for Marvel fans.', 'isincart': false, 'isFavorite': false},
  ];



  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredTopRatedCakes = topRatedCakes
        .where((cake) => cake['name'].toLowerCase().contains(search.toLowerCase()))
        .toList();

    List<Map<String, dynamic>> filteredLowestPriceCakes = lowestPriceCakes
        .where((cake) => cake['name'].toLowerCase().contains(search.toLowerCase()))
        .toList();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/download.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.deepOrangeAccent,
              title: TextField(
                decoration: InputDecoration(
                  hintText: 'جستجوی محصول...',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    search = value;
                  });
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.login, color: Colors.white),
                  onPressed: () {
                    // هدایت به صفحه moz
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginApp()), // MozPage صفحه جدید
                    );
                  },
                ),
              ],
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Special offers :',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 200,

                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: filteredLowestPriceCakes.length,
                          itemBuilder: (context, index) {
                            final cake = filteredLowestPriceCakes[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetailScreen(
                                      product: cake,
                                      cart: [],
                                      onRatingUpdate: (rating) {
                                        setState(() {
                                          cake['rating'] = rating;
                                        });
                                      },
                                    ),
                                  ),
                                );
                              },
                              child: ProductCard(
                                image: cake['image'],
                                name: cake['name'],
                                price: cake['price'].toString(),
                                discountedPrice: cake['discountedPrice']?.toString(),
                                rating: null,
                                sales: null,
                                // ارسال قیمت تخفیفی
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Top products :',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: filteredTopRatedCakes.length,
                          itemBuilder: (context, index) {
                            final cake = filteredTopRatedCakes[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetailScreen(
                                      product: cake,
                                      cart: [],
                                      onRatingUpdate: (rating) {
                                        setState(() {
                                          cake['rating'] = rating;
                                        });
                                      },
                                    ),
                                  ),
                                );
                              },
                              child: ProductCard(
                                image: cake['image'],
                                name: cake['name'],
                                price: cake['price'].toString(),
                                discountedPrice: null, // حذف قیمت تخفیفی
                                rating: cake['rating'],
                                sales: cake['sales'],
                              ),
                            );
                          },
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // ثابت ماندن نوار ناوبری
        backgroundColor: Colors.orangeAccent,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.black54,
        currentIndex: 0, // کتگوری باشه صفحه فعلی
        items: [
          //نوار ناوبری و ایکون هاش
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'homepage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'cake categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'account',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // انتقال به صفحه Home
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepageA()),
            );
          } else if (index == 1) {
            // انتقال به صفحه Categories
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          } else if (index == 2) {
            // انتقال به صفحه Cart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 3) {
            // انتقال به صفحه Profile
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String? discountedPrice;
  final double? rating;
  final double? sales;


  ProductCard({
    required this.image,
    required this.name,
    required this.price,
    this.discountedPrice,
    this.rating,
    this.sales,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // تصویر محصول
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          // نام محصول
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          if (rating != null) ...[
            Text(
              'امتیاز: $rating ⭐',
              style: TextStyle(fontSize: 10, color: Colors.orange),
            ),
          ],
          if (sales != null) ...[
            Text(
              'فروش: $sales عدد',
              style: TextStyle(fontSize: 10, color: Colors.black54),
            ),
          ],

          // قیمت اصلی
          Text(
            'قیمت: $price تومان',
            style: TextStyle(
              fontSize: 12,
              color: Colors.red,
              decoration: discountedPrice != null ? TextDecoration.lineThrough : null,
            ),
            textAlign: TextAlign.center,
          ),
          // قیمت تخفیفی (در صورت وجود)
          if (discountedPrice != null) ...[
            SizedBox(height: 4),
            Text(
              'قیمت بعد از تخفیف: $discountedPrice تومان',
              style: TextStyle(
                fontSize: 12,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),


          ],
        ],
      ),
    );
  }
}





class ProductDetailScreen extends StatefulWidget {
  //دوتا متغیر پروداکت واسه اطلاعات محصول و ان ریتینگ اپدیت یه تابعه واسه به روز کردن امتیاز
  final Map<String, dynamic> product;
  final Function(double) onRatingUpdate;
  final List<Map<String, dynamic>> cart;

//سازندش
  ProductDetailScreen({
    required this.product,
    required this.cart,
    required this.onRatingUpdate,
  });

  @override
  //این کلاس وضعیت متغیرها (مثل لیست نظرات یا امتیاز محصول) را نگه می‌دارد.
  //هر بار که داده‌ها تغییر کنه ، بعدا با  setState() رابط کاربری به‌روز می‌شود.
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}
//ویجت حالت صفحه از حالت ارثبری میکنه
class _ProductDetailScreenState extends State<ProductDetailScreen> {
  //لیست نظرات کابرا
  List<Map<String, dynamic>> comments = [];
  // کنترلر واسه دریافت ورودیه
  final TextEditingController commentController = TextEditingController();
//متد واسه نظر دهی
  void addComment() {
    //اگه نظره خالی نباشه
    if (commentController.text.isNotEmpty) {

      setState(() {
        //کامنته ادد میشه
        comments.add({
          'text': commentController.text,
          'likes': 0,
          'dislikes': 0,
          'hasLiked': false,
          'hasDisliked': false,
        });
//متنه از ورودی پاک میشه
        commentController.clear();
      });
      //با ست استیت تغیرا اعمال میشه
    }
  }
//متد واسه لایک کردن کامنتا
  void likeComment(int index) {
    setState(() {
      if (!comments[index]['hasLiked']) {
        comments[index]['likes']++;
        comments[index]['hasLiked'] = true;
        // اگر قبلاً دیسلایک کرده بود، دیسلایک رو حذف کن
        if (comments[index]['hasDisliked']) {
          comments[index]['dislikes']--;
          comments[index]['hasDisliked'] = false;
        }
      }
    });
  }
// متد واسه دیسلاک کردن
  void dislikeComment(int index) {
    setState(() {
      if (!comments[index]['hasDisliked']) {
        comments[index]['dislikes']++;
        comments[index]['hasDisliked'] = true;
        // اگر قبلاً لایک کرده بود، لایک رو حذف کن
        if (comments[index]['hasLiked']) {
          comments[index]['likes']--;
          comments[index]['hasLiked'] = false;
        }
      }
    });
  }
//متد واسه امتیاز دادن
  void rateProduct(double rating) {
    setState(() {
      //امتیاز جدید جایگزین قبلیه میشه
      widget.product['rating'] = rating;
    });
    //متد بروزرسانیش فراخوانی میشه
    widget.onRatingUpdate(rating);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product['name']),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      //پس زمینه
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/download.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        //اسکرول بشه
        child: SingleChildScrollView(
          //فاصله ویجت ها
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            // اطلاعات ذستونی چیده شه در مرکز
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [



                      //عکس محصول کیکی که روش کلیک شده
                      Image.asset(widget.product['image'], width: 300, height: 300),
                      SizedBox(height: 10),
                      //اسمش
                      Text(widget.product['name'],
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      //قیمتش
                      Text('قیمت: ${widget.product['price']} تومان',
                          style: TextStyle(fontSize: 18)),
                      //امتیازش
                      Text('امتیاز: ${widget.product['rating']} ⭐',
                          style: TextStyle(fontSize: 18, color: Colors.orange)),
                      //موجودیش
                      Text('موجودی: ${widget.product['stock']} عدد',
                          style: TextStyle(fontSize: 16, color: Colors.teal)),
                      SizedBox(height: 10),
                      //توضیحاتش
                      Text(widget.product['description'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black87)),
                      IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: widget.product['isincart'] ? Colors.orange : Colors.grey, // استفاده از وضعیت محصول
                        ),
                        onPressed: () {
                          setState(() {
                            if (widget.product['isincart']) {
                              widget.cart.remove(widget.product); // حذف محصول از سبد خرید
                            } else {
                              widget.cart.add(widget.product); // افزودن محصول به سبد خرید
                            }
                            widget.product['isincart'] = !widget.product['isincart']; // تغییر وضعیت محصول
                          });

                        },
                      ),


                      IconButton(
                        icon: Icon(
                          widget.product['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                          color: widget.product['isFavorite'] ? Colors.orange : null,
                        ),
                        onPressed: () {
                          setState(() {
                            widget.product['isFavorite'] = !widget.product['isFavorite'];
                          });
                        },
                      ),

                    ],
                  ),
                ),
                //باکس ارسال نظرات
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('نظرات کاربران:',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                      SizedBox(height: 10),
                      // کامنت هارو به شکل لیست نگه میدارد و به هر کامنت یک اندیس نسبت میده  و مپ برای هر نظر یک کارت میسازه
                      ...comments.asMap().entries.map((entry) {
                        //شماره نظر
                        int index = entry.key;
                        //محتوای نظر
                        var comment = entry.value;
                        // اطلاعات کارت نظرات و لیست تایل واسه لایک و دیسلایک
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            title: Text(comment['text']),
                            //تریلینگ بخشی از از  لیست تایل است که محتوا را در انتهای تایل قرار میده
                            //  رو عناصر داخل تریلینگ را در یک ردیف افقی کنار هم قرار میده
                            trailing: Row(
                              //طول ردیف حداقل باشه ینی تا جایی که نیازه
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.thumb_up, color: Colors.teal),
                                  //دکمه قشرده شه تعداد لایکا افزایش
                                  onPressed: () => likeComment(index),
                                ),
                                Text('${comment['likes']}'),
                                IconButton(
                                  icon: Icon(Icons.thumb_down, color: Colors.orange),
                                  //دکمه فشرده شه تعداد دیسلایک ها افزایش
                                  onPressed: () => dislikeComment(index),
                                ),
                                Text('${comment['dislikes']}'),
                              ],
                            ),
                          ),
                        );
                        // مپ لیست ساده بر نمیگردونه با تو لیست به یه لیست ساده و واقعی تبدیل میکنیم خروجی مپ رو
                      }).toList(),


                      TextField(
                        //ورودی کامنت از کااربر
                        controller: commentController,
                        decoration: InputDecoration(
                          labelText: 'نظر خود را وارد کنید',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        //دکمه ثبت نظر رو میزنیم متد اد کامنت فراخوانی میشه و نظر جدید به لیست اضافه میشه
                        onPressed: addComment,
                        child: Text('ثبت نظر'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //باکس امتیاز دهی به محصول
                      Text('امتیازدهی به محصول:',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      //یک ردیف ۵ ستاره ای
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //یک لیست از ۵ ایکون ساخته میشه
                        children: List.generate(5, (index) {
                          return IconButton(
                            icon: Icon(
                              //شرط پر و خالی بودن ستاره ها
                              //اگر امتیاز بیشتر باشه، ستاره پره؛ اگر کمتر باشه، خالی.
                              index < widget.product['rating'] ? Icons.star : Icons.star_border,
                              color: Colors.amber,
                            ),
                            //وقتی روی ستاره کلیک می‌کنی، امتیاز تنظیم میشه
                            onPressed: () {
                              rateProduct((index + 1).toDouble());
                            },
                          );
                        }),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}