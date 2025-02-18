enum TrafficLight { Red, Yellow, Green }

void main() {
  TrafficLight signal = TrafficLight.Yellow;

  switch (signal) {
    case TrafficLight.Red:
      print("Stop!");
      break;
    case TrafficLight.Yellow:
      print("Get ready...");
      break;
    case TrafficLight.Green:
      print("Go!");
      break;
  }
}
