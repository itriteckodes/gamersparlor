class Ticket{
  int? id;
  String? subject;
  String? message;
  String? lastSeen;
  int? unReadCount;
  
  Ticket(ticket) {
    id = ticket['id'];
    this.subject = ticket["subject"];
    this.message = ticket["message"];
    this.lastSeen = ticket["last_seen"];
    this.unReadCount = ticket["unread_replies"];
  }
}