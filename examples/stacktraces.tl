import(badness, src.main, 1);

fn a() {
  b()
}

fn b() {
  c()
}

fn c() {
  badness()
}

fn main() {
  a()  // will die
}
