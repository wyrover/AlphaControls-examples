unit UnitListViews;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  sRadioButton, ExtCtrls, sPanel, sGroupBox, ComCtrls, sListView, sFrameAdapter, StdCtrls,
  sComboBox, sButton, Buttons, sSpeedButton, sCheckBox;

type
  TFrameListViews = class(TFrame)
    sListView1: TsListView;
    sGroupBox10: TsGroupBox;
    sRadioButton21: TsRadioButton;
    sRadioButton22: TsRadioButton;
    sRadioButton23: TsRadioButton;
    sRadioButton24: TsRadioButton;
    sFrameAdapter1: TsFrameAdapter;
    sButton1: TsButton;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    procedure sRadioButton21Change(Sender: TObject);
    procedure sRadioButton22Change(Sender: TObject);
    procedure sRadioButton23Change(Sender: TObject);
    procedure sRadioButton24Change(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sListView1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure sListView1CustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure AddNewItems(Count : integer);
  end;

implementation

uses MainUnit, sSkinManager;

{$R *.DFM}

procedure TFrameListViews.sRadioButton21Change(Sender: TObject);
begin
  sListView1.ViewStyle := vsIcon;
end;

procedure TFrameListViews.sRadioButton22Change(Sender: TObject);
begin
  sListView1.ViewStyle := vsList;
end;

procedure TFrameListViews.sRadioButton23Change(Sender: TObject);
begin
  sListView1.ViewStyle := vsReport;
end;

procedure TFrameListViews.sRadioButton24Change(Sender: TObject);
begin
  sListView1.ViewStyle := vsSmallIcon;
end;

procedure TFrameListViews.sButton1Click(Sender: TObject);
begin
  AddNewItems(1000);
end;

procedure TFrameListViews.sCheckBox1Click(Sender: TObject);
begin
  if sCheckBox1.Checked then begin
    sListView1.SmallImages := MainForm.ImageList16;
    sListView1.LargeImages := MainForm.ImageList32;
  end
  else begin
    sListView1.SmallImages := nil;
    sListView1.LargeImages := nil;
  end;
end;

procedure TFrameListViews.sCheckBox2Click(Sender: TObject);
begin
  sListView1.Checkboxes := sCheckBox2.Checked;
end;

procedure TFrameListViews.sCheckBox3Click(Sender: TObject);
begin
  sListView1.GridLines := sCheckBox3.Checked;
end;

procedure TFrameListViews.sCheckBox4Click(Sender: TObject);
begin
  sListView1.RowSelect := sCheckBox4.Checked;
end;

procedure TFrameListViews.sListView1CustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  with Sender do begin
    case Item.Index of
      0 : begin
        Sender.Canvas.Font.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditText_Ok];
        Sender.Canvas.Brush.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditBG_Ok];
      end;
      1 : begin
        Sender.Canvas.Font.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditText_Warning];
        Sender.Canvas.Brush.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditBG_Warning];
      end;
      2 : begin
        Sender.Canvas.Font.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditText_Alert];
        Sender.Canvas.Brush.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditBG_Alert];
      end
      else if Item.Index mod 2 = 0
        then Canvas.Brush.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditBG_OddRow]
        else Canvas.Brush.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditBG_EvenRow];
    end;
  end;
end;

procedure TFrameListViews.sListView1CustomDrawSubItem(Sender: TCustomListView; Item: TListItem; SubItem: Integer; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  with Sender do begin
    if Item.Index mod 2 = 0
      then Canvas.Brush.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditBG_OddRow]
      else Canvas.Brush.Color := MainForm.sSkinManager1.Palette[sSkinManager.pcEditBG_EvenRow];
  end;
end;

procedure TFrameListViews.AddNewItems(Count: integer);
var
  i, l : integer;
begin
  sListView1.SkinData.BeginUpdate; // Disable an updating of skinned scrolls
  sListView1.Items.BeginUpdate;
  l := sListView1.Items.Count;
  for i := l + 1 to l + Count do with sListView1.Items.Add do begin
    Caption := 'Item ' + IntToStr(i);
    ImageIndex := Random(sListView1.SmallImages.Count - 1);
    SubItems.Add('SubItem 1');
    SubItems.Add('SubItem 2');
    SubItemImages[0] := Random(sListView1.SmallImages.Count - 1);
  end;
  sListView1.Items.EndUpdate;
  sListView1.SkinData.EndUpdate;
end;

end.
