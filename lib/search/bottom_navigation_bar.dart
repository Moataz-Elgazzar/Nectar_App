//                                                              Bottom Navigation Bar in Flutter
/*
بيتكون من مجموعه من العناصر الي من خلالها اقدر اتنقل بين الشاشات مثلا لو العناصر من خلال العناصر دي اقدر اتنقل من صفحه البروفايل لاي صفحه اخرى (home - profile - menu) 
لازم عدد العناصر يكون على الاقل عنصرين 
State Management : لازم يكون StatefulWidget

BottomNavigationBarType 
  - BottomNavigationBarType.fixed لما تنقل من عنصر لعنصر بتبقا ثابته مافيش اي تغير في شكلها 
  - BottomNavigationBarType.shifting لما اتنقل من عنصر لعنصر شكل العنصر بيتغير 

بيكون ضمن قائمة Scaffold

بتتكون من 
 -items : قائمه من العناصرتمثل كل زرار في الشريط 
 -currentIndex : بيحدد العنصر الي واقف عليه حاليا 
 -onTap : الداله الي من خلالها اقدر اتنقل بين العناصر 

*/