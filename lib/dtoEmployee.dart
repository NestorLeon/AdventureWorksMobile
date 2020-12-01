import 'dtoPerson.dart';

class dtoEmployee
{
  int BusinessEntityID;
  String NationalIDNumber;
  String LoginID;
  String OrganizationNode;
  String OrganizationLevel;
  String JobTitle;
  DateTime BirthDate;
  String MaritalStatus;
  String Gender;
  DateTime HireDate;
  bool SalariedFlag;
  int VacationHours;
  int SickLeaveHours;
  bool CurrentFlag;
  DateTime ModifiedDateEmployee;
  dtoPerson Person;

  dtoEmployee(this.BusinessEntityID, this.NationalIDNumber, this.LoginID, this.OrganizationNode,
    this.OrganizationLevel, this.JobTitle, this.BirthDate, this.MaritalStatus, this.Gender,
      this.HireDate, this.SalariedFlag, this.VacationHours, this.SickLeaveHours, this.CurrentFlag,
      this.ModifiedDateEmployee, this.Person);

  dtoEmployee.fromJson(Map<String, dynamic> json){
    BusinessEntityID = json['BusinessEntityID'];
    NationalIDNumber = json['NationalIDNumber'];
    LoginID = json['LoginID'];
    OrganizationLevel = json['OrganizationLevel'];
    OrganizationNode = json['OrganizationNode'];
    JobTitle = json['JobTitle'];
    BirthDate = json['BirthDate'];
    MaritalStatus = json['MaritalStatus'];
    Gender = json['Gender'];
    HireDate = json['HireDate'];
    SalariedFlag = json['SalariedFlag'];
    VacationHours = json['VacationHours'];
    SickLeaveHours = json['SickLeaveHours'];
    CurrentFlag = json['CurrentFlag'];
    ModifiedDateEmployee = json['ModifiedDateEmployee'];
    Person = dtoPerson.fromJson(json['Person']);
  }

}