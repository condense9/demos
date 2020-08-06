import(f, src.main, 1);
import(g, src.main, 1);
import(h, src.main, 1);

fn compute(x) {
  f(g(h(x)))
}

fn main() {
  compute(1);
}
