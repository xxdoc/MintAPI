VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'@PROJECT_LICENSE

Option Base 0
Option Explicit
Const CLASSID As String = "IList"
Const CLASSALIAS As String = APPLICATIONDOMAIN & "." & CLASSID
Const CLASSVERSIONSTRING As String = "0.1"
Const CLASSALIASSTRING As String = CLASSALIAS & "/" & CLASSVERSIONSTRING


Public Property Get Count() As Long: End Property

Public Sub CopyTo(ByRef arr As Variant, ByVal Index As Long): End Sub

Public Function GetEnumerator() As IEnumerator: End Function

Public Function NewEnum() As IUnknown: End Function
Attribute NewEnum.VB_UserMemId = -4
Attribute NewEnum.VB_MemberFlags = "40"

Public Property Get IsFixedSize() As Boolean: End Property

Public Property Get IsReadOnly() As Boolean: End Property

Public Property Get Item(ByVal Index As Long) As Variant
Attribute Item.VB_ProcData.VB_Invoke_Property = ";List"
Attribute Item.VB_UserMemId = 0
End Property
Public Property Let Item(ByVal Index As Long, ByRef Value As Variant)
End Property
Public Property Set Item(ByVal Index As Long, ByVal Value As Object)
End Property

Public Function Add(ByRef Value As Variant) As Long: End Function

Public Sub Clear(): End Sub

Public Function Contains(ByRef Value As Variant, Optional ByVal Comparer As IComparer) As Boolean: End Function

Public Function IndexOf(ByRef Value As Variant, Optional ByVal Comparer As IComparer) As Long: End Function

Public Sub Insert(ByVal Index As Long, ByRef Value As Variant): End Sub

Public Sub Remove(ByRef Value As Variant, Optional ByVal Comparer As IComparer): End Sub

Public Sub RemoveAt(ByVal Index As Long): End Sub


