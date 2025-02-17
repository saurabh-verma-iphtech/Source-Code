class Car {
  String _model;
  Car(this._model);

  void setModel(String model) {
    _model = model;
  }

  String getModel() {
    return _model;
  }
}

void main() {
  Car car = Car("Tata");
  print(car.getModel());

  car.setModel("BMW");
  print(car.getModel());
}
