import 'package:enterprise_resource_planning/%20models/bill_pay_item.dart';
import 'package:enterprise_resource_planning/%20models/bill_pay_model.dart';
import 'package:enterprise_resource_planning/%20models/invoice_model.dart';
import 'package:enterprise_resource_planning/%20models/journal_enteries_model.dart';
import 'package:enterprise_resource_planning/%20models/list_invoice_item.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;


 // Sent Bill data
  sendBillData() {
    BillPayModel billPayModel = BillPayModel(
        paymentId: 'paymentId',
        invoiceId: 'invoiceId',
        paymentAmount: 300,
        paymentDate: DateTime.now(),
        paymentMethod: 'Cash',
        vendorId: 'vendorId',
        billPayItems: [
          BillPayItem(
              dueDate: DateTime.now(),
              billId: 'billId',
              dueAmount: 1000,
              productName: "productName",
              productQuantity: 20,
              productUnitCost: 100)
        ],
        paymentStatus: PaymentStatus.paid,
        additionalDetails: 'Additional details',
        currency: 'PKR',
        discountAmount: 0.0,
        shippingCost: 10,
        taxAmount: 5,
        journalEntries: [
          JournalEntry(
              entryId: "entryId",
              date: DateTime.now(),
              amount: 500,
              entryType: EntryType.credit,
              description: "This is credit entry",
              referenceId: "referenceId"),
          JournalEntry(
              entryId: "entryId",
              date: DateTime.now(),
              amount: 500,
              entryType: EntryType.debit,
              description: "This is debit entry",
              referenceId: "referenceId")
        ]);

    double totalCredit = 0;
    double totalDebit = 0;

     for(var item in billPayModel.journalEntries){
       if(item.entryType == EntryType.debit){
         totalDebit += item.amount;
       } else if(item.entryType == EntryType.credit){
         totalCredit += item.amount;
       }
     }
     if(totalDebit != totalCredit){
       print('The equation is not balanced');
       return;
     }

    firestore
        .collection("bills")
        .doc()
        .set(billPayModel.toJson())
        .whenComplete(() => print("done"));
  }



  // Send invoice Data to firestore database
  sendInvoiceData() {
    InvoiceModel invoiceModel = InvoiceModel(
        invoiceId: 'invoiceId',
        customerId: 'customerId',
        totalQuantity: 20,
        dueDate: DateTime.now(),
        issueDate: DateTime.now(),
        outstandingAmount: 1000,
        paidAmount: 500,
        paymentStatus: InvoicePaymentStatus.paid,
        totalAmount: 1000,
        invoiceItems: [
          InvoiceItem(
              invoiceItemId: 'itemId',
              productName: "productName",
              quantity: 20,
              unitPrice: 50,
              totalAmount: 1000)
        ],
        journalEntries: [
          JournalEntry(
              entryId: "entryId",
              date: DateTime.now(),
              amount: 1000,
              entryType: EntryType.debit,
              description: "Invoice issued",
              referenceId: "invoiceId"),
          JournalEntry(
              entryId: "entryId",
              date: DateTime.now(),
              amount: 1000,
              entryType: EntryType.credit,
              description: "Payment received",
              referenceId: "paymentId")
        ]);

    double totalDebit = 0;
    double totalCredit = 0;

    for(var entry in invoiceModel.journalEntries){
      if(entry.entryType == EntryType.debit){
        totalDebit += entry.amount;
      } else if(entry.entryType == EntryType.credit){
        totalCredit += entry.amount;
      }
    }
    if(totalDebit != totalCredit){
      print('The equation is not balanced');
      return;
    }

    firestore
        .collection("invoices")
        .doc()
        .set(invoiceModel.toJson())
        .whenComplete(() => print("Invoice data sent successfully."));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                sendBillData();
              },
              child: const Text("BillPayModel Send"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                sendInvoiceData();
              },
              child: const Text("BillPayModel Send"),
            ),
          ],
        ),
      )),
    );
  }
}
