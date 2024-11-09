import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:foodapp/components/my_button.dart';
import 'package:foodapp/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  bool useFloatingAnimation = true;

  // user wants to pay
  void userTappedPay() {
    // only show dialog if form is valid
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Confirm Payment"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text(
                "Card Number: $cardNumber",
              ),
              Text(
                "Expiry Date: $expiryDate",
              ),
              Text(
                "Card Holder Name: $cardHolderName",
              ),
              Text(
                "CVV: $cvvCode",
              ),
            ],
          ),
        ),
        actions: [
          // cancel button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),

          // yes button
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeliveryProgressPage(),
                ),
              );
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Checkout"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // credit card
          CreditCardWidget(
            enableFloatingCard: useFloatingAnimation,
            glassmorphismConfig: Glassmorphism(
              blurX: -1,
              blurY: 1,
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(243, 243, 243, 1),
                  Color.fromRGBO(168, 168, 168, 1),
                ],
              ),
            ),
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
          ),

          // credit cart form
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              });
            },
            formKey: formKey,
          ),

          const Spacer(),

          MyButton(
            onTap: userTappedPay,
            text: "Pay now",
          ),

          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  // Glassmorphism? _getGlassmorphismConfig() {
  //   if (useGlassMorphism) {
  //      inactiveTrackColor: Colors.grey,
  //      activeColor: Colors.white,
  //      activeTrackColor: Colors.;
  //   }
  // }
}