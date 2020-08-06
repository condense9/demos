import(hello, src.main, 1);


fn compute() {
   print(tid());
   print("hi");
}


fn on_http(method, path, body, lambda_event) {
  if path == "/hello" {
    hello(get(body, "name"))
  }
  else if path == "/compute" {
    async compute();
    sid();
  }
  else {
    signal("error", "bad path")
  }
}

fn main() {
  on_http("POST", "/hello", {"name": "World"}, {})
}

// curl --data '{"name": "World"}' \
//   -H "Content-Type:application/json" \
