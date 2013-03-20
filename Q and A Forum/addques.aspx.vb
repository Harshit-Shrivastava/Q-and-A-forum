Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class addques
    Inherits System.Web.UI.Page

    Dim dbid, uid, useruid As String
    Dim connstr As String = WebConfigurationManager.ConnectionStrings("forumConnectionString").ConnectionString
    Dim qid, tid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        tid = Request.QueryString("tid")

    End Sub


    Private Sub viewques_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Dim cookie As HttpCookie = Request.Cookies("pref")

        If cookie IsNot Nothing Then
            dbid = cookie("id")
            uid = cookie("uid")
            useruid = cookie("useruid")
            Session("master") = 2
            Me.MasterPageFile = "~/Site2.Master"
        Else : Session("master") = 1
            Me.MasterPageFile = "~/Site1.Master"
        End If
    End Sub

    Private Sub postbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles postbutton.Click


        'post answer with question as qid, user as uid (get from cookie), answer from ansbox.text and pdate = datetime.now

        Dim query As String = "insert into ques (tid, uid, title, question, post, views) values ("
        query &= "@tid, @uid, @title, @question, @post, @views)"

        ' & qid & "','" & dbid & "','" & ansbox.Text & "','01-01-2012')"


        Dim con As New SqlConnection(connstr)
        Dim cmd As New SqlCommand(query, con)
        Dim added As Integer = 0

        cmd.Parameters.Add("@tid", SqlDbType.Int)
        cmd.Parameters.Add("@uid", SqlDbType.Int)
        cmd.Parameters.Add("@title", SqlDbType.VarChar)
        cmd.Parameters.Add("@question", SqlDbType.VarChar)
        cmd.Parameters.Add("@post", SqlDbType.Date)
        cmd.Parameters.Add("@views", SqlDbType.Int)

        cmd.Parameters("@tid").Value = tid
        cmd.Parameters("@uid").Value = CType(useruid, Integer)
        cmd.Parameters("@title").Value = Server.HtmlEncode(titlebox.Text)
        cmd.Parameters("@question").Value = Server.HtmlEncode(quesbox.Text)
        cmd.Parameters("@post").Value = DateTime.Today
        cmd.Parameters("@views").Value = 0


        Try
            con.Open()
            added = cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try

        Response.Redirect("~/queslist.aspx?tid=" & tid)

    End Sub

    Private Sub quesvalidator_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles quesvalidator.ServerValidate

        If quesbox.Text.Length < 20 And titlebox.Text.Length < 10 Then
            args.IsValid = False
        End If

    End Sub
End Class