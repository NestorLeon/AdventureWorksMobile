class dtoPerson
{
  String PersonType;
  bool NameStyle;
  String Title;
  String FirstName;
  String MiddleName = null;
  String LastName;
  String Suffix;
  int EmailPromotion;
  String AdditionalContactInfo;
  String Demographics;
  var ModifiedDatePerson;

  dtoPerson(this.PersonType, this.NameStyle, this.Title, this.FirstName, this.MiddleName,
      this.LastName, this.Suffix, this.EmailPromotion, this.AdditionalContactInfo,
      this.Demographics, this.ModifiedDatePerson);

  dtoPerson.fromJson(Map<String, dynamic> json){
    PersonType = json['PersonType'];
    NameStyle = json['NameStyle'];
    Title = json['Title'];
    FirstName = json['FirstName'];
    MiddleName = json['MiddleName'] ?? "";
    LastName = json['LastName'];
    Suffix = json['Suffix'];
    EmailPromotion = json['EmailPromotion'];
    AdditionalContactInfo = json['AdditionalContactInfo'];
    Demographics = json['Demographics'];
    ModifiedDatePerson = json['ModifiedDatePerson'];
  }
}