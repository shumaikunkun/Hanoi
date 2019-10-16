Imports System

Public Class Hanoi
	Public Sub hanoi(n As Integer, x As String, y As String, z As String)
		If n>1 Then Call hanoi(n-1, x, z, y)
		Console.WriteLine(x & "=>" & y)
		If n>1 Then Call hanoi(n-1, z, y, x)
	End Sub
	Public Shared Sub Main()
		Dim n As Integer
		n=Console.ReadLine()
		Dim h As New Hanoi
		h.hanoi(n,"a","b","c")
	End Sub
End Class
