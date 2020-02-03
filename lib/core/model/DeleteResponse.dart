
class DeleteResponse{
  String requestId;
  String message;
  String responseCode;

  DeleteResponse({
    this.requestId="524f7be3-faad-480a-892a-b98cb67edaec",
    this.responseCode="00",
    this.message = "Beneficiary source type deleted successfully",
}):assert(message.length>0 && responseCode.length>0);

  DeleteResponse.fromMap(Map<String, dynamic> map)
      : requestId = map["Requestid"],
        message = map["Message"],
        responseCode = map["Responsecode"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["Requestid"] = requestId;
    data["message"] = message;
    data["Responsecode"] = responseCode;
    return data;
  }
}