Public Class WebForm5
    Inherits System.Web.UI.Page

    Dim dbid, uid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub WebForm5_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Dim cookie As HttpCookie = Request.Cookies("pref")

        If cookie IsNot Nothing Then
            dbid = cookie("id")
            uid = cookie("uid")
            Session("master") = 2
            Me.MasterPageFile = "~/Site2.Master"
        Else : Session("master") = 1
            Me.MasterPageFile = "~/Site1.Master"
        End If
    End Sub
End Class