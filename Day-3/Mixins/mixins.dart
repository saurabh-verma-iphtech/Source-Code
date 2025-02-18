mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

class Service with Logger {
  void fetchDataa() {
    log("Fetching data...");
  }
}

void main() {
  Service service = Service();
  service.fetchDataa();

  // Logger logger = Logger(); <- Error, Mixins cann't be instantiated directly.
}
