fn hanoi(n: i32, x: &str, y: &str, z: &str) {
    if n > 1 {
        hanoi(n - 1, x, z, y)
    }
    println!("{}=>{}", x, y);
    if n > 1 {
        hanoi(n - 1, z, y, x)
    }
}

fn main() {
    let mut n = String::new();
    std::io::stdin().read_line(&mut n).ok();
    hanoi(n.trim().parse().unwrap(), "a", "b", "c")
}
