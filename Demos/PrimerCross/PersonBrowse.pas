unit PersonBrowse;

interface

{$I '../../Source/InstantDefines.inc'}

uses
  SysUtils, Classes,
  Windows, Messages, Graphics, Controls, Forms, Dialogs, Menus, ImgList,
  ActnList, Grids, DBGrids, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  ContactBrowse, Db, InstantPresentation, Model;

type
  TPersonBrowseForm = class(TContactBrowseForm)
  private
    function GetSelected: TPerson;
    procedure SetSelected(const Value: TPerson);
  protected
    class function ObjectClass: TClass; override;
  public
    property Selected: TPerson read GetSelected write SetSelected;
  end;

implementation

{$R *.dfm}

{ TPersonBrowseForm }

function TPersonBrowseForm.GetSelected: TPerson;
begin
  Result := inherited Selected as TPerson;
end;

class function TPersonBrowseForm.ObjectClass: TClass;
begin
  Result := TPerson;
end;

procedure TPersonBrowseForm.SetSelected(const Value: TPerson);
begin
  inherited Selected := Value;
end;

end.
