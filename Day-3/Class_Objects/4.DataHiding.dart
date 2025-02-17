class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  double getBalance() {
    return _balance;
  }
}
void main(){
  BankAccount account = BankAccount();
  account.deposit(5000);
  print(account.getBalance());
}
