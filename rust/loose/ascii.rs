fn main() {
    println!("chars for 0 to {}", u8::MAX);
    for i in 0..u8::MAX {
        if i % 40 == 0 {
            println!("");
        }
        print!("{}, ",i as char);
    }
}
