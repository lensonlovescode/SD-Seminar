tableextension 50116 "CSD ResourceExt" extends Resource
// CSD1.00 - 2026-06-03 - D. E. Veloper
{
    fields
    {
        modify("Profit %") {
            trigger OnAfterValidate()
            var
            begin
                Rec.TestField("Unit Cost");
            end;
        }

        field(50117; "CSD Resource Type"; Enum "CSD Resource Type")
        {
            Caption = 'Internal/External';
            DataClassification = ToBeClassified;
        }
        field(50118; "CSD Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Maximum Participants';
        }
        field(50119; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity Per Day';
        }
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
}