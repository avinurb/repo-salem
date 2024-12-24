import 'package:flutter/material.dart';
import '../Logins/loginA.dart'; // اضافه کردن فایل loginA.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // حذف بنر دیباگ
      home: CategoryPage(),
    );
  }
}

// صفحه اصلی شامل لیست دسته‌بندی‌ها
class CategoryPage extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'cream cakes', imagePath: 'assets/cream.jpg'),
    Category(name: 'fondant cakes', imagePath: 'assets/fondant.jpg'),
    Category(name: 'birthday cakes', imagePath: 'assets/birthday.jpg'),
    Category(name: 'anniversary cakes', imagePath: 'assets/anniversary.jpg'),
    Category(name: 'bento cakes', imagePath: 'assets/bento.jpg'),
    Category(name: 'kid`s cakes', imagePath: 'assets/baby.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    // scaffold چهارچوب اصلی صفحه را مشخص می‌کند
    return Scaffold(
      // اپ بار بالای صفحه
      appBar: AppBar(
        title: Text('Cake Categories'),
        centerTitle: true, // متن وسط
        backgroundColor: Colors.teal, // رنگ اپ بار
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/download.jpg'), // عکس پس‌زمینه
            fit: BoxFit.cover, // عکس کل صفحه را بگیره
          ),
        ),
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // تعداد ستون‌ها
            mainAxisSpacing: 10, // فاصله عمودی بین موردها
            crossAxisSpacing: 10, // فاصله افقی بین موردها
            childAspectRatio: 1.0, // نسبت طول به عرض موردها
          ),
          itemCount: categories.length, // تعداد موارد بر اساس دسته‌بندی‌ها
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          },
        ),
      ),
      // نوار پایین صفحه
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
            label: 'account',
          ),
        ],
      ),
    );
  }
}
//کلاس کتگوری ها شامل اسم و عکس اند
class Category {
  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}
// از استیت لس ویجت ارثبری میکنه
class CategoryCard extends StatelessWidget {
  final Category category;
// تعریف سازنده واسه کلاس کتگوری کاردو میگه کتگوری ضروریه موقع فراخوانی
  CategoryCard({required this.category});
//طراحی دکمه های کتگوری ها
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white70.withOpacity(0.8), // رنگ دکمه
        shape: RoundedRectangleBorder(
          //گوشه هاش یکم گرد
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5, // سایه دکمه
      ),
      onPressed: () {
        // هدایت به صفحه برتدی کیکز برای این دسته‌بندی
        if (category.name.trim() == 'birthday cakes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginApp()),
          );
          // هدایت به صفحه  انیورسری کیکز برای این دسته‌بندی

        } else if (category.name.trim() == 'anniversary cakes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginApp()),
          );
          // هدایت به صفحه کرم کیکز برای این دسته‌بندی

        } else if (category.name.trim() == 'cream cakes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginApp()),
          );
          // هدایت به صفحه فوندانت کیکز برای این دسته‌بندی

        } else if (category.name.trim() == 'fondant cakes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginApp()),
          );
          // هدایت به صفحه بنتو  کیکز برای این دسته‌بندی

        } else if (category.name.trim() == 'bento cakes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginApp()),
          );

          // هدایت به صفحه کیدز کیکز برای این دسته‌بندی

        } else if (category.name.trim() == 'kid`s cakes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginApp()),
          );
          // هدایت به صفحه مینی کیکز برای این دسته‌بندی

        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // وسط‌چین کردن محتوا
        children: [
          //باقی طراحی ها برای دکمه ها
          Expanded(
            child: Image.asset(
              category.imagePath, // مسیر عکس
              fit: BoxFit.cover, // پر کردن فضای موجود
            ),
          ),
          SizedBox(height: 8), // فاصله بین عکس و متن
          Text(
            category.name, // نام دسته‌بندی
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center, // متن وسط‌چین
          ),
        ],
      ),
    );
  }
}
