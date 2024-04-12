// int i = 0;
// int mult;
// for (i = 1; i <= 10; i++) {
//   mult = 5 * i;
//   print("5X$i=$mult");
// }
// while (i <= 1) {
//   mult = 5 * i;
//   print("5X$i=$mult");
//   i--;
// }
// do {
//   mult = 5 * i;
//   print("5X$i=$mult");
//   i++;
// } while (i <= 10);

// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

// table(int a) {
//for loop
// for (int i = 1; i < 11; i++) {
//   print("a * $i = " + (a * i).toString());
// }

//doWhile loop
// int i = 1;
// while (i < 11) {
//   print("5 * $i = " + (5 * i).toString());
//   i++;
// }
// }

void sayHi(String name, {String? name2}) {
  //normal method
  // if (name2 == null) {
  //   print("Hi $name");
  // } else {
  //   print("Hi $name " + name2);
  // }

//ternary method
  print((name2 == null) ? "Hi $name" : "Hi $name " + name2);
}

void main() {
  // sayHi("Ram", name2: "Bikal");
  var name = ['ram', 'shyam', 'hari', 'krishna'];
  // int i;
  // for (i = 0; i < name.length; i++) {
  //   print("Hello ${name[i]}.");
  // }
  print(name.map((e) => "Hello " + e + ".").toList().join(""));
}
