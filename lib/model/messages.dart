
class TicketMessage {
  int? id;
  int?uniqueId;
  // String type;
  String? text;
  String? time;

  TicketMessage({message, text}) {
      this.id = message["id"];
      this.uniqueId = message["unique_id"];
      // this.type = message["type"];
      this.text = message["message"];
      this.time = message["created_at"];
  
  }
}
