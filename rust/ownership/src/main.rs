fn main() {
  let mut s = String::from("Hello");

  s.push_str(" there!");

  println!("{}", s);

  let s1 = String::from("Hiya");
  let s2 = s1; // this makes s1 go out of scope
  println!("{}", s2);

}
