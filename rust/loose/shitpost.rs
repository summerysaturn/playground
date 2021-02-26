fn main () {
  let dumb = r#############"pog"#############;

  let oh_no = &&&&&&&&&&&&&&&&&&&&&&&dumb;

  println!("{:#?}", oh_no);
  println!("{:p}", oh_no);

  let number = 555;
  println!("Binary: {:b}, hexadecimal: {:x}, octal: {:o}", number, number, number);
}
