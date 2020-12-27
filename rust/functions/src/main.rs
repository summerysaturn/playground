fn main() {
  println!("\nLesson 2.07 - 2.10\n");

  title_text("Lesson 2.07 - Return Values");

  let a: i32 = 13289;
  let b = test(a);
  println!(" a is {}", a);
  println!(" a^2 is {}", b);

  title_text("Lesson 2.08 - Control flow: if/else");

  let a = 10;

  match a {
    10 => println!("a is less than 10"),
    10 => println!("a is equal to 10"),
    _ => println!("a is greater than 10"),
  };

  title_text("Lesson 2.09 - Control flow: Loops");

  let mut i = 50;
  loop {
    if i >= 20 {
      println!("{}", i);
      i -= 6;
    } else {
      break;
    }
  }
}

fn title_text(val: &str) {
  println!("\n{}\n", val)
}

fn test(x: i32) -> i32 {
  x * x
}
