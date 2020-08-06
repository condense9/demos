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
  vals = [1, 2, 3, 4, 5];
  futures = map(_compute, vals, []);
  result = map(wait, futures, [])
  print("done")
  print(result)
}


fn _compute(x) {
  async compute(x)
}

fn wait(x) {
  await x
}

fn map(func, items, acc) {
  if nullp(items) {
    acc
  }
  else {
    // The compiler will optimise tail-recusive calls, like this one
    map(func, rest(items), append(acc, func(first(items))))
  }
}
