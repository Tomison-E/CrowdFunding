class UpdateResponse{
  String requestId;
  String mesesessagees;
  String responseCode;

  UpdateResponse({
    this.requestId = "5a9f61a7-fe3c-4a51-9add-62ebef4e02a9",
    this.mesesessagees = "Beneficiary source type updated successfully",
    this.responseCode = "00"
}):assert(responseCode.length>0 && mesesessagees.length>0);

  UpdateResponse.fromMap(Map<String, dynamic> map)
      : requestId = map["Requestid"],
        mesesessagees = map["Mesesessagees"],
        responseCode = map["Responsecode"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["Requestid"] = requestId;
    data["Mesesessagees"] = mesesessagees;
    data["Responsecode"] = responseCode;
    return data;
  }

}