VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ArgumentListEnumerator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'@PROJECT_LICENSE

''<class name="ArgumentListEnumerator" tags="">
''  <summary>
''    Some class description.
''  </summary>
''  <constructors>
''      <constructor name="" friend>
''          Some constructor description.
''      </constructor>
''  </constructors>
''  <using>Some class alias.</using>
''  <idea>Me</idea>
''  <sample></sample>
''</class>

Option Base 0
Option Explicit

Implements IEnumerator

'=============================================
'=============================================
'=============================================
'<section Meta Data>
'
Const CLASSID As String = "ArgumentListEnumerator" '#DO NOT REMOVE IT
Const CLASSALIAS As String = APPLICATIONDOMAIN & "." & CLASSID '#DO NOT REMOVE IT
Const CLASSVERSIONSTRING As String = "0.1" '#DO NOT REMOVE IT
Const CLASSALIASSTRING As String = CLASSALIAS & "/" & CLASSVERSIONSTRING '#DO NOT REMOVE IT

Const SIGNAL_TERMINATING                As String = "terminating"
Const SLOT_METAOBJECT                   As String = "metaobject"
'
'</section>
'---------------------------------------------
'---------------------------------------------

'=============================================
'=============================================
'=============================================
'<section Variables/Events>
'
Dim pEnumerable As ArgumentList
Dim cIndex As Long
Dim cCount As Long
Dim cVersion As Long
'
'</section>
'---------------------------------------------
'---------------------------------------------

'=============================================
'=============================================
'=============================================
'<section Constructors>
'
Friend Sub Constructor0(ByVal ALE As ArgumentList)
Set pEnumerable = ALE
    cIndex = -1
    cCount = pEnumerable.Count
    cVersion = pEnumerable.GetEnumerableVersion
End Sub
'
'</section>
'---------------------------------------------
'---------------------------------------------

'=============================================
'=============================================
'=============================================
'<section IEnumerator Implementation>
'

Private Property Get IEnumerator_Current() As Variant
    If cVersion <> pEnumerable.GetEnumerableVersion Then _
        throw Exps.EnumerationBrokeException
    
    If cIndex < cCount Then
        Call MoveVariant(IEnumerator_Current, pEnumerable(cIndex))
    Else
        throw Exps.IndexOutOfRangeException
    End If
End Property

Private Function IEnumerator_MoveNext() As Boolean
    If cVersion <> pEnumerable.GetEnumerableVersion Then _
        throw Exps.EnumerationBrokeException
    
    cIndex = cIndex + 1
    If cIndex < cCount Then
        IEnumerator_MoveNext = True
    Else
        IEnumerator_MoveNext = False
    End If
End Function

Private Sub IEnumerator_Reset()
    cCount = pEnumerable.Count
    cIndex = -1
    cVersion = pEnumerable.GetEnumerableVersion
End Sub

'
'</section>
'---------------------------------------------
'---------------------------------------------

'=============================================
'=============================================
'=============================================
'<section Private helpers>
'
Private Sub Class_Terminate()
    Set pEnumerable = Nothing
    cIndex = -1
    cCount = 0
    cVersion = 0
End Sub
'
'</section>
'---------------------------------------------
'---------------------------------------------


