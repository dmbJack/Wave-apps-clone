int removeFee(int amount) {
  double feeAmount = (amount / 100);
  return feeAmount.ceil();
}
