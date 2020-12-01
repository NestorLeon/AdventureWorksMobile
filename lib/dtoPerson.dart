class dtoPerson
{
  String PersonType;
  bool NameStyle;
  String Title;
  String FirstName;
  String MiddleName;
  String LastName;
  String Suffix;
  int EmailPromotion;
  String AdditionalContactInfo;
  String Demographics;
  DateTime ModifiedDatePerson;

  dtoPerson(this.PersonType, this.NameStyle, this.Title, this.FirstName, this.MiddleName,
      this.LastName, this.Suffix, this.EmailPromotion, this.AdditionalContactInfo,
      this.Demographics, this.ModifiedDatePerson);

  dtoPerson.fromJson(Map<String, dynamic> json){
    PersonType = json[''];
    NameStyle = json[''];
    Title = json[''];
    FirstName = json[''];
    MiddleName = json[''];
    LastName = json[''];
    Suffix = json[''];
    EmailPromotion = json[''];
    AdditionalContactInfo = json[''];
    Demographics = json[''];
    ModifiedDatePerson = json[''];
  }
}