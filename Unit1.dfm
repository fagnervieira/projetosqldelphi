object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DLLabel1: TDLLabel
    Left = 32
    Top = 18
    Width = 88
    Height = 13
    Caption = 'Caminho do banco'
  end
  object detSQL: TDLEdit
    Left = 32
    Top = 88
    Width = 154
    Height = 21
    ReadOnly = False
    TabOrder = 0
    Text = 'SET GENERATOR g_BPE TO 1'
    Visible = True
    Validation = []
    Decimals = 2
    Nullable = True
    EnabledColor = clWindow
    DisabledColor = clBtnFace
    ParentDisabledColor = True
  end
  object DLButton1: TDLButton
    Left = 192
    Top = 86
    Width = 169
    Height = 25
    Caption = 'TDLQuery'
    TabOrder = 1
    OnClick = DLButton1Click
  end
  object DLButton2: TDLButton
    Left = 192
    Top = 117
    Width = 169
    Height = 25
    Caption = 'FireDAC'
    TabOrder = 2
    OnClick = DLButton2Click
  end
  object DLButton3: TDLButton
    Left = 192
    Top = 148
    Width = 169
    Height = 25
    Caption = 'dbExpress'
    TabOrder = 3
    OnClick = DLButton3Click
  end
  object detCaminho: TDLEdit
    Left = 32
    Top = 37
    Width = 377
    Height = 21
    ReadOnly = False
    TabOrder = 4
    Text = 'c:\dados\ac\ac.gdb'
    Visible = True
    Validation = []
    Decimals = 2
    Nullable = True
    EnabledColor = clWindow
    DisabledColor = clBtnFace
    ParentDisabledColor = True
  end
  object DLServerConnection1: TDLServerConnection
    ConnectionName = 'c1'
    DatabaseKind = dkInterbase
    UserName = 'SYSDBA'
    Password = 'masterkey'
    UpperOnQueries = uqNormallyUse
    Left = 448
    Top = 32
  end
  object DLQuery1: TDLQuery
    Filtered = False
    ConnectionName = 'c1'
    Server = DLServerConnection1
    AutoMount = False
    FetchRecordCount = 60
    Left = 528
    Top = 32
  end
  object FDConnection1: TFDConnection
    ConnectionName = 'c2'
    Params.Strings = (
      'DriverID=IB'
      'DataBase=c:\dados\ac\ac.gdb'
      'USER_Name=SYSDBA'
      'Password=masterkey')
    LoginPrompt = False
    Left = 448
    Top = 96
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 528
    Top = 96
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver200.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=20.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=c:\dados\ac\ac.gdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 440
    Top = 160
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 528
    Top = 160
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 24
    Top = 208
  end
end