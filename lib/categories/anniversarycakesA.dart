import 'package:flutter/material.dart';
import 'dastebandiA.dart';
import 'package:draft_ap/profiles/ProfileS.dart';

//ربرای استفاده ازویجت‌های Material Design
void main() {
  //ویجت پروداکت لیست اپ رو ران میکنه
  runApp(ProductListanApp());
}

class ProductListanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ویجت ریشه
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //صفحه اصلی برنامه
      home: ProductListanScreen(),
    );
  }
}
//از ویجت استست فول استفتده کردم تا پویا باشه و بتونه تغییر کنه
class ProductListanScreen extends StatefulWidget {
  @override
  //متد کرییت استیت وضعیت صفحه لیست محصولات رو میسازه
  _ProductListanScreenState createState() => _ProductListanScreenState();
}

class _ProductListanScreenState extends State<ProductListanScreen> {
  //لیستی از محصولات که در ان هر محصول به صورت یک مپ تعریف شده
  // هر مپ شامل ویژگی‌های مختلف یک محصوله مثل نام، قیمت، امتیاز، تصویر، توضیحات، موجودی، و وضعیت علاقه‌مندی.
  List<Map<String, dynamic>> products = [
    //داینامیک میگه داده ها از هر نوعی میتونن باشن واسه ولیو های ویژگی های تو مپ
    {'name': 'my peace cake  ', 'price': 800000, 'rating': 0, 'image': 'assets/aramejan.png', 'description': ' کیک عاشقانه ۱ کیلویی فوندانتی با استند آرام جان  ', 'stock': 3, 'isFavorite': false,'isincart':false},
    {'name': 'carrot cake ', 'price': 600000, 'rating': 0, 'image': 'assets/carrot.png', 'description': '.کیک ۱ کیلویی هویج با دیزاین ساده و مینیمال همراه با فشفشه برای سالگرد ازدواج', 'stock': 5, 'isFavorite': false,'isincart':false},
    {'name': 'sweet 16 cake', 'price': 650000, 'rating': 0, 'image': 'assets/crepe.png', 'description': 'کیک نیم کیلویی با تزیین گل خامه ای برای ۱۶ امین سالگرد ازدواج ', 'stock': 2, 'isFavorite': false,'isincart':false},
    {'name': '  happy couple cake', 'price': 750000, 'rating': 0, 'image': 'assets/dumb&dumber.png', 'description': 'کیک نیم کیلویی بامزه برای زوج های شوخ .', 'stock': 2, 'isFavorite': false,'isincart':false},
    {'name': 'rose cake', 'price': 1400000, 'rating': 0, 'image': 'assets/rose.png', 'description': 'کیک ۲ کیلویی خامه ای با دیزاین کلاسیک طلایی و گل رز طبیعی و رمانتیک .', 'stock': 5, 'isFavorite': false,'isincart':false},
    {'name': 'shiny hearts cake', 'price': 1000000, 'rating': 0, 'image': 'assets/shinyhearts.png', 'description': 'کیک ۲ کیلویی خامه ای براق با دیزاین قلب های رز گلد.', 'stock': 6, 'isFavorite': false,'isincart':false},
    {'name': 'strawberry naked cake', 'price': 450000, 'rating': 0, 'image': 'assets/plain.png', 'description': 'کیک ساده وانیلی ۱ کیلویی با فیلینگ و دیزاین  مارمالاد توت فرنگی تازه.', 'stock': 3, 'isFavorite': false,'isincart':false},
    {'name': '  25 hearts cake', 'price': 750000, 'rating': 0, 'image': 'assets/heart.png', 'description': 'کیک جذاب نیم کیلویی با دیزاین قلب های کوچک برای ۲۵ امین سالگرد ازدواج.', 'stock': 1, 'isFavorite': false,'isincart':false},
    {'name': '  piano love cake ', 'price': 1050000, 'rating': 0, 'image': 'assets/piano.png', 'description': 'کیک ۱ کیلویی فوندانتی  با طرح پیانو برای ۱۸ امین سالگرد ازدواج   .', 'stock': 2, 'isFavorite': false,'isincart':false},
    {'name': '  sky love cake ', 'price': 950000, 'rating': 0, 'image': 'assets/sky.png', 'description': 'کیک ۱ کیلویی خامه ای   با طرح آسمان برای ۱۶ امین سالگرد ازدواج( ۵۸۴۴ روز )   .', 'stock': 4, 'isFavorite': false,'isincart':false},

  ];
//متغیر سرچ که فعلا یک استرینگ خالی است ینی تا زمانی که کاربر چیزی وارد نکند، تمام محصولات نمایش داده می‌شن
  String search = '';
  //متغیر سورت تایپ از جنس استرینگ که فعلا مقدار دیفالت دارد ینی ترتیب خاصی نداره لیست محصولا
  String sortType = 'default';
//این متد برای تغییر دادن امتیاز محصول است که دو ارگومان اسم و امتیاز جدید محصول را به عنوان ورودی میگیرد
  void updateProductRating(String productName, double newRating) {
    //ست استیت در دارت و فلاتر تغییرات را اعمال میکنه و صفحه رو بروز رسانی میکنه
    setState(() {
      //اگر نام محصول درست باشد  به متغیر پروداکت نسبت داده میشه محصوله
      final product = products.firstWhere((prod) => prod['name'] == productName);
      //جایگزین شدن امتیاز جدید با قبلی
      product['rating'] = newRating;
    });
  }
//متد contains بررسی می‌کند که آیا متن وارد شده (search) در نام محصول (product['name']) وجود دارد یا نه
  @override
  Widget build(BuildContext context) {
    // ور یک متد فیلتر کردن تو دارته که الان روی لیست محصولاتمون اعمال میشه
    // فیلترد پروداکتز لیستی جدید از محصولاتی است که در شرط ور درست بودند و بازگردانی میشوند
    List<Map<String, dynamic>> filteredProducts = products.where((product) {
      //شرط داخل ور که اگه درست است بازگردانی شود
      return product['name'].toString().contains(search);
      // متد ور لیست معمولی بر نمیگردونه باید با متد تو لیست تبدیلش کنیم به لیست معمولی که میخوایم
    }).toList();
// مرتب سازی محصولات
    if (sortType == 'max_price') {
      //دو به دو محصولات را مثل آ و ب باهم مقایسه میکنه از نظر قیمت که اگه بزرگ تر باشه مثبت کوچیکتر باشه منفی و برابر باشع ۰ برمیگردونه
      filteredProducts.sort((a, b) => b['price'].compareTo(a['price']));
      //مرتب سازی از کم قیمت
    } else if (sortType == 'min_price') {
      filteredProducts.sort((a, b) => a['price'].compareTo(b['price']));
      //مرتب سازی از بیشترین امتیاز
    } else if (sortType == 'best_rating') {
      filteredProducts.sort((a, b) => b['rating'].compareTo(a['rating']));
    }
//ساختار اصلی صفحه
    return Scaffold(
      appBar: AppBar(
        //رنگ اپ بار
        backgroundColor: Colors.deepOrangeAccent,
        //برای جست وجو
        title: TextField(

          decoration: InputDecoration(
            //متن پیشفرض  در فیلد جست و جو
            hintText: 'جستجوی محصول...',
            //رنگش
            hintStyle: TextStyle(color: Colors.white70),
            //حذف حاشیه دور فیلد
            border: InputBorder.none,
            //ایکون ذره بین
            icon: Icon(Icons.search, color: Colors.white),
          ),
          //متنی که کاربر میسرچه :
          style: TextStyle(color: Colors.white),
          //ان چنجد برای واکنش به تغییزات این متد هر بار که کاربر چیزی در فیلد وارد کنه فراخوانی می‌شه
          //ولیو مقدار جدیدیه که کاربر وارد کرده
          onChanged: (value) {
            setState(() {
              //متغیر سرچ مقدار ولیو رو میگیره
              search = value;
            });
          },
        ),
        //دکمه کناری اپ بار عملکرد
        actions: [
          // یک منوی کشویی است که گزینه‌هایی را به کاربر نمایش می‌ده و نوع داده ای که نمایش میده استربنگه
          PopupMenuButton<String>(
            // متدی که زمانی که کاربر یک گزینه را انتخاب کند، اجرا می‌شود.
            onSelected: (value) {
              //صفحه را بازسازی می‌کند تا مرتب‌سازی جدید اعمال شود.
              setState(() {
                // متغیر سورت تایپ مقدار ولیو رو میگیره که کاربر واردش کرده
                sortType = value;
              });
            },
            //ایکون واسه سورت
            icon: Icon(Icons.filter_list, color: Colors.white),
            itemBuilder: (context) => [
              // هر گزینه در منو پاپ اپ
              // ولیو مقداریه که موقع انتخاب گزینه به ان سلکتد ارسال میشه
              // چالدش هم ویجته واسخ نمشون دادن متنش
              PopupMenuItem(value: 'max_price', child: Text('بیشترین قیمت')),
              PopupMenuItem(value: 'min_price', child: Text('کمترین قیمت')),
              PopupMenuItem(value: 'best_rating', child: Text('بیشترین امتیاز')),
            ],
          ),
        ],
      ),
      //تنظیمات عکس واسه پس زمینه
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/download.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        // لیست محصولات فیلتر شده
        child: ListView.builder(
          itemCount: filteredProducts.length,
          //کانتکست اطلاعات مربوط به ویجت رو میده و ایندکس شماره ایتم فعلی که از ۰ شروع
          itemBuilder: (context, index) {
            final product = filteredProducts[index];
            //کارت مستطیلی برای نمایش هر محصول
            return Card(
              //فاصله ۲۰ پیکسلی از هر طرف کارد
              margin: EdgeInsets.all(20),
              //سایه
              elevation: 5,
              //ویجت **ListTile** برای نمایش آیتم‌هایی با تصویر کوچک، عنوان، توضیحات، آیکون و اکشن لمسی طراحی شده است.
              child: ListTile(
                //عکس کیک ها سمت چپ
                leading: Image.asset(product['image'], width: 70, height: 70),
                //اسم کیکا
                title: Text(product['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                // ساب تایتل برای جزییات محصول
                //از یک ستون برای نمایش چند خط متن استفاده شده
                subtitle: Column(
                  //متن‌ها در ستون از سمت چپ تراز می‌شن
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('قیمت: ${product['price']} تومان'),
                    Text('امتیاز: ${product['rating']} ⭐',
                        style: TextStyle(fontSize: 12, color: Colors.deepOrange)),
                    Text('موجودی: ${product['stock']} عدد',
                        style: TextStyle(color: Colors.teal, fontSize: 12)),
                  ],
                ),

                //متدی که وقتی کاربر روی کارت محصول کلیک می‌کند، اجرا می‌شود.
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //وقتی کاربر روی کارت کلیک میکنه برنامه هدایت شه به صفحه جزییات
                      //اطلاعات محصول (product) به این صفحه ارسال می‌شود.
                      builder: (context) => ProductDetailScreen(
                        product: product,
                        cart: [],
                        onRatingUpdate: (newRating)

                        {
                          //متدی برای به‌روزرسانی امتیاز محصول نیز ارسال می‌شود.
                          updateProductRating(product['name'], newRating);
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
      //نویگیشن بار هم که واسه همشون ثابته
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // ثابت ماندن نوار ناوبری
          backgroundColor: Colors.orangeAccent,
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.black54,
          currentIndex: 1, // کتگوری باشه صفحه فعلی
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
              label: 'profile',
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              // انتقال به صفحه Home
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductListanApp()),
              );
            } else if (index == 1) {
              // انتقال به صفحه Categories
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>MyApp ()),
              );
            } else if (index == 2) {
              // انتقال به صفحه Cart
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductListanApp()),
              );
            } else if (index == 3) {
              // انتقال به صفحه Profile
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileS()),
              );
            }
          },
        )
    );
  }
}
//صفحه جزییات یک ویجت استیت فوله
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
