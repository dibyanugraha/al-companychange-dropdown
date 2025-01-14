pageextension 50090 "BusManRoleCntrExt_DSK" extends "Business Manager Role Center"
{
    layout
    {
        addfirst(rolecenter)
        {
            part(ChangeCompanyDropdown; ChangeCompanyDropdownPart_DSK)
            {
                Caption = ' ';
                ApplicationArea = All;
                Visible = not IsLoaded;
            }
        }
    }

    trigger OnOpenPage()
    begin
        IsLoaded := false;
    end;

    trigger OnAfterGetRecord()
    begin
        IsLoaded := true;
    end;

    var
        IsLoaded: Boolean;
}
