class TransactionData {
  final bool checked;
  final String title;
  final String date;
  final String description;
  final String amount;
  final String status;

  TransactionData({
    this.checked = false,
    required this.title,
    required this.date,
    required this.description,
    required this.amount,
    required this.status,
  });
}

List transactionDataDetails = [
  TransactionData(
    title: 'Elevate Agency',
    date: '2 Oct 2023',
    description: 'Monthly salary',
    amount: '+\$1500.0',
    status: 'Success',
  ),
  TransactionData(
    title: 'Zyllus Tech',
    date: '12 Nov 2023',
    description: 'Monthly salary',
    amount: '+\$1900.0',
    status: 'Success',
  ),
  TransactionData(
    title: 'Zeref Inc',
    date: '15 Dec 2023',
    description: 'Monthly salary',
    amount: '+\$1000.0',
    status: 'Success',
  ),
];
