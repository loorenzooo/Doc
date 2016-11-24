```vba
Public Sub SelectFirstBlankCell()
    Dim sourceCol As Integer, rowCount As Integer, currentRow As Integer
    Dim currentRowValue, precedingRowValue As String

    sourceCol = 1   'column F has a value of 6
    rowCount = Cells(Rows.Count, sourceCol).End(xlUp).Row
    
    precedingRowValue = ""

    'for every row, find the first blank cell and select it
    For currentRow = 1 To rowCount
        currentRowValue = Cells(currentRow, sourceCol).Value
        If IsEmpty(currentRowValue) Or currentRowValue = "" Then
            'mise à jour de la celluel avec la valeur prec
            Cells(currentRow, sourceCol).Value = precedingRowValue
        Else
            precedingRowValue = currentRowValue
        End If
    Next
End Sub
```
