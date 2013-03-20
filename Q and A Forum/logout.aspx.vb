Public Class logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cookie As HttpCookie = Request.Cookies("pref")

        If cookie IsNot Nothing Then
            cookie.Expires = DateTime.Now.AddDays(-1)
            Response.Cookies.Add(cookie)
        End If

        Session("master") = 1
        Response.Redirect("~/index.aspx")
    End Sub

End Class