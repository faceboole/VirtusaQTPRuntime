' Copyright 2004 ThoughtWorks, Inc. Licensed under the Apache License, Version
' 2.0 (the "License"); you may not use this file except in compliance with the
' License. You may obtain a copy of the License at
' http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law
' or agreed to in writing, software distributed under the License is
' distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
' KIND, either express or implied. See the License for the specific language
' governing permissions and limitations under the License.

Dim myExcel, myFile, mySheet, Row_Count


Function openWB (filePath, sheetName)
   Set myExcel = Createobject("Excel.Application")
   Set myFile = myExcel.workbooks.open(filePath)
   Set mySheet=myExcel.worksheets(sheetName)
   column_Count = mySheet.usedrange.columns.count
  row_Count = mySheet.usedrange.rows.count
End Function

 
Function closeWB
    myFile.Close
	myExcel.Quit
	Set myExcel=Nothing
End Function
 



