using Kuoni_S4HC_Customizing as service from '../../srv/external/Kuoni_S4HC_Customizing';
annotate service.YY1_DOSSIER with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode',
                Value : CompanyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode_Text',
                Value : CompanyCode_Text,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sender',
                Value : Sender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DossierNumber',
                Value : DossierNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessArea',
                Value : BusinessArea,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DossierStatus',
                Value : DossierStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DossierCreateDate',
                Value : DossierCreateDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DossierStartDate',
                Value : DossierStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DossierEndDate',
                Value : DossierEndDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Destination',
                Value : Destination,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FlightDate',
                Value : FlightDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProfitCenter1_KOKRS',
                Value : ProfitCenter1_KOKRS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProfitCenter1_PRCTR',
                Value : ProfitCenter1_PRCTR,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProfitCenter1_DATBI',
                Value : ProfitCenter1_DATBI,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ResponsiblePeron',
                Value : ResponsiblePeron,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Timestamp',
                Value : Timestamp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Report',
                Value : Report,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SequenceNumber',
                Value : SequenceNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DistributionChannel',
                Value : DistributionChannel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Airline',
                Value : Airline,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ServiceDescription',
                Value : ServiceDescription,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Amount',
                Value : Amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BookingReference',
                Value : BookingReference,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OriginalTicketNumber',
                Value : OriginalTicketNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CRSBookingReference',
                Value : CRSBookingReference,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FileName',
                Value : FileName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IATANumber',
                Value : IATANumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ExpenseTyp',
                Value : ExpenseTyp,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'CompanyCode',
            Value : CompanyCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CompanyCode_Text',
            Value : CompanyCode_Text,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Sender',
            Value : Sender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DossierNumber',
            Value : DossierNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessArea',
            Value : BusinessArea,
        },
    ],
);

