fn main() {


  let mut s = "bees";

  let s1 = &s;
  let _s2 = &s; // this works ok

  s = String::from("Hello"); // this does not

  println!("{}, {}",s, s1);
}
