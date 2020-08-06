import(f, src.main, 1);
import(g, src.main, 1);
import(h, src.main, 1);

fn _f(x) {
  async f(x)
}

fn _g(x) {
  async g(x)
}

fn _h(x) {
  async h(x)
}

fn compute(x) {
  await _f(await _g(await _h(x)))
}

fn main() {
  a = async compute(1);
  b = async compute(5);

  c = await a + await b;

  if c > 100 {
    "Yes"
  }
  else {
    "No"
  }
}

