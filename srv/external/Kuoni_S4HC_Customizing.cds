/* checksum : c801f93b4a9cd5c4fe1779a727aa03f0 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service Kuoni_S4HC_Customizing {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Company Code'
entity Kuoni_S4HC_Customizing.I_CompanyCodeStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Controlling Area'
@sap.value.list : 'true'
entity Kuoni_S4HC_Customizing.I_ControllingAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingAreaName'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.label : 'Controlling Area Name'
  ControllingAreaName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Currency'
entity Kuoni_S4HC_Customizing.I_Currency {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Currency_Text'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  key Currency : String(5) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Currency_Text : String(40);
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimal Places'
  @sap.quickinfo : 'Number of decimal places'
  Decimals : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code'
  @sap.quickinfo : 'ISO Currency Code'
  CurrencyISOCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative Key'
  AlternativeCurrencyKey : String(3);
  @sap.label : 'Primary'
  @sap.quickinfo : 'Primary SAP Currency Code for ISO Code'
  IsPrimaryCurrencyForISOCrcy : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Currency Text'
entity Kuoni_S4HC_Customizing.I_CurrencyText {
  @sap.text : 'to_Language/Language_Text'
  @sap.label : 'Language Key'
  @sap.value.list : 'standard'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Currency/Currency_Text'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  key Currency : String(5) not null;
  @sap.label : 'Description'
  CurrencyName : String(40);
  @sap.label : 'Short Text'
  CurrencyShortName : String(15);
  to_Currency : Association to Kuoni_S4HC_Customizing.I_Currency {  };
  to_Language : Association to Kuoni_S4HC_Customizing.I_Language {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Language'
entity Kuoni_S4HC_Customizing.I_Language {
  @sap.text : 'Language_Text'
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.label : 'Name'
  @sap.quickinfo : 'Name of Language'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language_Text : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Language Code'
  @sap.quickinfo : '2-Character SAP Language Code'
  LanguageISOCode : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Profit Center'
entity Kuoni_S4HC_Customizing.I_ProfitCenterVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingArea_Text'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProfitCenterName'
  @sap.label : 'Profit Center'
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  key ValidityEndDate : Date not null;
  @sap.label : 'Controlling Area Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingArea_Text : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hierarchy Area'
  @sap.quickinfo : 'Profit center area'
  ProfitCenterStandardHierarchy : String(12);
  @sap.label : 'Profit Center Name'
  @sap.quickinfo : 'Description of Profit Center'
  ProfitCenterName : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
  @sap.label : 'Person Resp. for PC'
  @sap.quickinfo : 'Person Responsible for Profit Center'
  ProfitCtrResponsiblePersonName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Segment_Text'
  @sap.label : 'Segment'
  @sap.quickinfo : 'Segment for Segmental Reporting'
  @sap.value.list : 'standard'
  Segment : String(10);
  @sap.label : 'Segment Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Segment_Text : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Segment'
@sap.value.list : 'true'
entity Kuoni_S4HC_Customizing.I_SegmentStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Segment_Text'
  @sap.label : 'Segment'
  @sap.quickinfo : 'Segment for Segmental Reporting'
  key Segment : String(10) not null;
  @sap.label : 'Segment Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Segment_Text : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Dossier'
entity Kuoni_S4HC_Customizing.YY1_DOSSIER {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCode_Text'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyCode_Text : String(25);
  @sap.label : 'Sender'
  Sender : String(20);
  @sap.label : 'Dossier Number'
  DossierNumber : String(9);
  @sap.label : 'Business Area'
  BusinessArea : String(20);
  @sap.label : 'Dossier Status'
  DossierStatus : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Dossier Create Date'
  DossierCreateDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Dossier Start Date'
  DossierStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Dossier End Date'
  DossierEndDate : Date;
  @sap.label : 'Destination'
  Destination : String(8);
  @sap.display.format : 'Date'
  @sap.label : 'Flight Date'
  FlightDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ProfitCenter1/ControllingArea_Text'
  @sap.label : 'Profit Center'
  @sap.value.list : 'standard'
  ProfitCenter1_KOKRS : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ProfitCenter1/ProfitCenterName'
  @sap.label : 'Profit Center'
  @sap.value.list : 'standard'
  ProfitCenter1_PRCTR : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Profit Center'
  @sap.value.list : 'standard'
  ProfitCenter1_DATBI : Date;
  @sap.label : 'Responsible Peron'
  ResponsiblePeron : String(20);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Timestamp'
  Timestamp : Timestamp;
  @sap.label : 'Report'
  Report : String(20);
  @sap.label : 'SequenceNumber'
  SequenceNumber : String(9);
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(10);
  @sap.label : 'Airline'
  Airline : String(3);
  @sap.label : 'Service Description'
  @sap.quickinfo : 'Service Desription'
  ServiceDescription : String(20);
  @sap.label : 'Amount'
  Amount : Decimal(13, 2);
  @sap.label : 'Booking Reference'
  @sap.quickinfo : 'Booking Refeference'
  BookingReference : String(20);
  @sap.label : 'Original Ticket Number'
  OriginalTicketNumber : String(13);
  @sap.label : 'CRS Booking Reference'
  CRSBookingReference : String(8);
  @sap.label : 'File Name'
  FileName : String(20);
  @sap.label : 'IATA Number'
  IATANumber : String(8);
  @sap.label : 'Expense Typ'
  ExpenseTyp : String(2);
  to_CompanyCode : Association to Kuoni_S4HC_Customizing.I_CompanyCodeStdVH {  };
  to_Passanger : Composition of many Kuoni_S4HC_Customizing.YY1_PASSANGER_DOSSIER {  };
  to_PerformanceOverview : Composition of many Kuoni_S4HC_Customizing.YY1_PERFORMANCEOVERVIEW_DOSSIE {  };
  to_ProfitCenter1 : Association to Kuoni_S4HC_Customizing.I_ProfitCenterVH {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
entity Kuoni_S4HC_Customizing.YY1_PASSANGER_DOSSIER {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  SAP_PARENT_UUID : UUID;
  @sap.label : 'Text of length 100'
  @sap.heading : ''
  @sap.quickinfo : ''
  Name : String(100);
  to_DOSSIER : Association to Kuoni_S4HC_Customizing.YY1_DOSSIER {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
entity Kuoni_S4HC_Customizing.YY1_PERFORMANCEOVERVIEW_DOSSIE {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  SAP_PARENT_UUID : UUID;
  @sap.label : 'Text of length 1'
  @sap.heading : ''
  @sap.quickinfo : ''
  Status : String(1);
  @sap.label : 'Text of length 4'
  @sap.heading : ''
  @sap.quickinfo : ''
  Pos : String(4);
  @sap.label : 'Text of length 20'
  @sap.heading : ''
  @sap.quickinfo : ''
  Prodcd : String(20);
  @sap.label : 'Text of length 20'
  @sap.heading : ''
  @sap.quickinfo : ''
  SAG : String(20);
  @sap.label : 'Text of length 100'
  @sap.heading : ''
  @sap.quickinfo : ''
  PerformanceDescription : String(100);
  @sap.label : 'Text of length 20'
  @sap.heading : ''
  @sap.quickinfo : ''
  BookingReference : String(20);
  @sap.display.format : 'Date'
  @sap.label : ''
  DossierStartdate : Date;
  @sap.unit : 'SUMERL_C'
  @sap.label : ''
  SUMERL_V : Decimal(16, 3);
  @sap.text : 'SUMERL_C_Text'
  @sap.label : ''
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  SUMERL_C : String(5);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SUMERL_C_Text : String(40);
  @sap.unit : 'SUMKEP_C'
  @sap.label : ''
  SUMKEP_V : Decimal(16, 3);
  @sap.text : 'SUMKEP_C_Text'
  @sap.label : ''
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  SUMKEP_C : String(5);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SUMKEP_C_Text : String(40);
  @sap.unit : 'SUMEFF_C'
  @sap.label : ''
  SUMEFF_V : Decimal(16, 3);
  @sap.text : 'SUMEFF_C_Text'
  @sap.label : ''
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  SUMEFF_C : String(5);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SUMEFF_C_Text : String(40);
  to_DOSSIER : Association to Kuoni_S4HC_Customizing.YY1_DOSSIER {  };
  to_SUMEFF : Association to Kuoni_S4HC_Customizing.I_Currency {  };
  to_SUMERL : Association to Kuoni_S4HC_Customizing.I_Currency {  };
  to_SUMKEP : Association to Kuoni_S4HC_Customizing.I_Currency {  };
  to__SUMEFF : Association to many Kuoni_S4HC_Customizing.I_CurrencyText {  };
  to__SUMERL : Association to many Kuoni_S4HC_Customizing.I_CurrencyText {  };
  to__SUMKEP : Association to many Kuoni_S4HC_Customizing.I_CurrencyText {  };
};

@cds.external : true
action Kuoni_S4HC_Customizing.YY1_DOSSIERSap_upsert(
  @sap.label : 'CompanyCode'
  CompanyCode : String(4),
  @sap.label : 'Text of length 20'
  Sender : String(20),
  @sap.label : 'Text of length 9'
  DossierNumber : String(9),
  @sap.label : 'Text of length 20'
  BusinessArea : String(20),
  @sap.label : 'Text of length 20'
  DossierStatus : String(20),
  @sap.label : 'Dossier Create Date'
  @sap.display.format : 'Date'
  DossierCreateDate : Date,
  @sap.label : 'Dossier Start Date'
  @sap.display.format : 'Date'
  DossierStartDate : Date,
  @sap.label : 'Dossier End Date'
  @sap.display.format : 'Date'
  DossierEndDate : Date,
  @sap.label : 'Text of length 8'
  Destination : String(8),
  @sap.label : 'Flight Date'
  @sap.display.format : 'Date'
  FlightDate : Date,
  @sap.label : 'ProfitCenter1_KOKRS'
  ProfitCenter1_KOKRS : String(4),
  @sap.label : 'ProfitCenter1_PRCTR'
  ProfitCenter1_PRCTR : String(10),
  @sap.label : 'ProfitCenter1_DATBI'
  @sap.display.format : 'Date'
  ProfitCenter1_DATBI : Date,
  @sap.label : 'Text of length 20'
  ResponsiblePeron : String(20),
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Time Stamp Long Form'
  Timestamp : Timestamp,
  @sap.label : 'Text of length 20'
  Report : String(20),
  @sap.label : 'Text of length 9'
  SequenceNumber : String(9),
  @sap.label : 'Text of length 10'
  DistributionChannel : String(10),
  @sap.label : 'Text of length 3'
  Airline : String(3),
  @sap.label : 'Text of length 20'
  ServiceDescription : String(20),
  @sap.label : 'Amount'
  Amount : Decimal(13, 2),
  @sap.label : 'Text of length 20'
  BookingReference : String(20),
  @sap.label : 'Text of length 13'
  OriginalTicketNumber : String(13),
  @sap.label : 'Text of length 8'
  CRSBookingReference : String(8),
  @sap.label : 'Text of length 20'
  FileName : String(20),
  @sap.label : 'Text of length 8'
  IATANumber : String(8),
  @sap.label : 'Text of length 2'
  ExpenseTyp : String(2)
) returns Kuoni_S4HC_Customizing.YY1_DOSSIER;

