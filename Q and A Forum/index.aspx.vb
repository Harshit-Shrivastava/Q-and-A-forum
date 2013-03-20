Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim connstr As String = WebConfigurationManager.ConnectionStrings("forumConnectionString").ConnectionString

        Dim query As String = "select * from topics"

        Dim con As New SqlConnection(connstr)
        Dim cmd As New SqlCommand(query, con)

        Dim adapter As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()

        Try
            con.Open()
            'Label1.Text += "connection made"
            adapter.Fill(ds, "topics")

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try

        For Each row As DataRow In ds.Tables("topics").Rows
            Dim lb As New LinkButton()
            lb.Text = row("name")
            lb.PostBackUrl = "~/queslist.aspx?tid=" & row("tid")
            Panel1.Controls.Add(lb)
            Dim desclabel As New Label()
            desclabel.Text = "<br/>" & row("description") & "<br/> <br/> <br/>"
            Panel1.Controls.Add(desclabel)

            'Label1.Text += row("tid") & vbCrLf
        Next

    End Sub

    Private Sub WebForm1_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit

        Dim cookie As HttpCookie = Request.Cookies("pref")
        Dim dbid, uid As String
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