pageextension 50124 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2026-09-03 D. E. Veloper
{
    layout
    {
        modify(Type) {
            Visible = true;
        }
        addafter(Type) {
            field("CSD Resource Type"; Rec."CSD Resource Type") {

            }
            field("CSD Maximum Participants"; Rec."CSD Maximum Participants") {
                Visible = ShowMaxField;
            }    
        } 
    }
    
    actions
    {
    }

    trigger OnOpenPage()
    begin
        ShowType := (Rec.GetFilter(Type)='');
        ShowMaxField := (Rec.GetFilter(Type)) = format(Rec.Type::machine);
        
    end;
    
    var
        ShowMaxField: Boolean;
        ShowType: Boolean;
}