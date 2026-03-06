pageextension 50122 "CSD ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2026-03-06 - D. E. Veloper
{
    layout {
        addlast(General) {
            field("CSD Resource Type";Rec."CSD Resource Type") {
                
            }
            field("CSD Quantity Per Day";Rec."CSD Quantity Per Day") {

            }
        }
        addafter("Personal Data") {
            group("CSD Room") {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants";Rec."CSD Maximum Participants") {

                }
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (Rec.Type = Rec.Type::Machine);
        CurrPage.Update(true);      
    end;
    
    var
        ShowMaxField: Boolean;
}