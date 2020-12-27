fn main() {
  println!("");
  println!("Lesson 2.01 - Mutability");
  println!("");

  // The mut here is important as it tells the compiler that x is not immutable
  let mut x = 5;
  println!("Variable x = {}", x);
  x = 6;
  println!("Variable x = {}", x);

  println!("");
  println!("Lesson 2.02 - Scalar data types - Integers");
  println!("");

  // This causes an integer overflow which makes the thread panic
  /*
  let mut a = 2147483647;
  a = a + 1;
  println!("A = {}", a)
  */
  // This works as here a is specifically annotated as a 64 bit int
  let mut a: i64 = 2147483647;
  a = a + 1;
  println!("A = {}", a);

  println!("");
  println!("Lesson 2.02 - Scalar data types - Floats");
  println!("");

  let b: f32 = 2.4289; // Float
  let c: f64 = 3.12839; // Double

  println!("The value of the float b is {}", b);
  println!("The value of the double c is {}", c);

  let mut bool_a = true; // Implicitly annotated
  let bool_b: bool = true; // Explicitly annotated

  if bool_a {
    if bool_b {
      println!("Both bool_a and bool_b are true! Wow!");
    }
  }

  bool_a = false;

  if bool_a {
    println!("bool_a is true");
  } else {
    println!("bool_a is false!");
  }

  println!("");
  println!("Lesson 2.04 - Compound data types - Tuples");
  println!("");

  let tup: (i32, f64, u8) = (500, 3.5, 1);
  let (x, y, z) = tup;

  let w = tup.0;

  println!("X={} Y={} Z={}", x, y, z);
  println!("W={}", w);
  println!("tup.1={}", tup.1);

  println!("");
  println!("Lesson 2.04 - Compound data types - Arrays");
  println!("");

  // Arrays in rust have a fixed length.
  let months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  println!("First month = {}", months[0]);

  for elem in months.iter() {
    println!("Month {}", elem);
  }

  println!("");
  println!("Lesson 2.04 - Compound data types - Arrays");
  println!("");

  test();
}

fn test() {
  println!("this is running in the function 'test()'");
}
