class CustomerSupportTicket {
  String ticketId;
  String customerId;
  DateTime submittedAt;
  String issueDescription;
  List<Message> messages;

  CustomerSupportTicket({
    required this.ticketId,
    required this.customerId,
    required this.submittedAt,
    required this.issueDescription,
    required this.messages,
  });
}

class Message {
  String senderId; // can be a customer or a support agent
  DateTime sentAt;
  String text;

  Message({
    required this.senderId,
    required this.sentAt,
    required this.text,
  });
}
