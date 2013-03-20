Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class queslist
    Inherits System.Web.UI.Page

    Dim dbid, uid As String
    ' Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    '    Dim tid As String = Request.QueryString("tid") 'gets the requested tid to load questions from

    '    Dim connstr As String = WebConfigurationManager.ConnectionStrings("forumConnectionString").ConnectionString

    '    Dim query As String = "select * from ques where tid=" & tid

    '    Dim con As New SqlConnection(connstr)
    '    Dim cmd As New SqlCommand(query, con)

    '    Dim adapter As New SqlDataAdapter(cmd)
    '    Dim ds As New DataSet()

    '    Try
    '        '    Label1.Text = "connection made"
    '        adapter.Fill(ds, "ques")

    '    Catch ex As Exception
    '        MsgBox(ex.Message)

    '    Finally
    '        con.Close()
    '    End Try


    '    'add db code to show the current topic of the questions


    '    For Each row As DataRow In ds.Tables("ques").Rows
    '        Dim lb As New LinkButton()
    '        lb.Text = row("title")
    '        lb.PostBackUrl = "~/viewques.aspx?qid=" & row("qid")
    '        Panel1.Controls.Add(lb)
    '        Dim spacelabel As New Label()
    '        spacelabel.Text = "<br/> <br/>"
    '        Panel1.Controls.Add(spacelabel)
    '    Next


    'End Sub

    Private Sub queslist_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
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

    Private Sub addquesbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles addquesbutton.Click

        Dim tid As String = Request.QueryString("tid")

        Response.Redirect("~/addques.aspx?tid=" & tid)

    End Sub
End Class