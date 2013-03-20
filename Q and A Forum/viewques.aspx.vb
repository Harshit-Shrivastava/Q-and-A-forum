Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class viewques
    Inherits System.Web.UI.Page

    Dim dbid, uid, useruid As String

    Dim connstr As String = WebConfigurationManager.ConnectionStrings("forumConnectionString").ConnectionString
    Dim qid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        qid = Request.QueryString("qid")

        Dim query As String = "select * from ques where qid=" & qid

        Dim con As New SqlConnection(connstr)
        Dim cmd As New SqlCommand(query, con)

        Dim reader As SqlDataReader

        Try
            con.Open()
            reader = cmd.ExecuteReader()

            While reader.Read()
                titlelabel.Text = "<font style='color:#3366FF'>" & Server.HtmlDecode(reader("title")) & "</font>"
                queslabel.Text = "<font-style='normal' >" & Server.HtmlDecode(reader("question")) & "<br/> <br/> <br/> Answers:<br/> <br/>"

            End While
            reader.Close()

        Catch ex As Exception
            MsgBox(ex.Message)

        Finally
            con.Close()
        End Try


        'Fetch corresponding answers

        query = "select * from ans where qid=" & qid
        Dim cmd2 As New SqlCommand(query, con)
        Dim adapter As New SqlDataAdapter(cmd2)
        Dim ds As New DataSet()

        Try
            con.Open()
            adapter.Fill(ds, "ans")

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try

        For Each row As DataRow In ds.Tables("ans").Rows

            'set class of answer labels

            Dim anslabel As New Label()
            anslabel.Text = "<div class='answers'><br/> " & Server.HtmlDecode(row("answer")) & "<br/>"
            Panel1.Controls.Add(anslabel)

            Dim postlabel As New Label()
            postlabel.Text = "<div style='font-size:14px; font-style:italic;'><br/>Posted on :" & row("pdate") & "</div><br/></div><br/>"
            Panel1.Controls.Add(postlabel)

        Next

        'update views of question with this qid

        Dim breaklabel As New Label()
        breaklabel.Text = "<br/> <br/>"
        Panel1.Controls.Add(breaklabel)


    End Sub

    Protected Sub addanswer() Handles ansbutton.click

        'if user is not logged in, redirect to a page with login and register links.
        'else proceed normally as below
        Dim cookie As HttpCookie = Request.Cookies("pref")

        If cookie Is Nothing Then
            Response.Redirect("~/login.aspx")
        End If

        ansbutton.Visible = False

        ansbox.Visible = True
        postbutton.Visible = True
        anslabel.Visible = True

        'Dim breaklabel As New Label()
        'breaklabel.Text = "<br/> <br/>"
        'Panel2.Controls.Add(breaklabel)

    End Sub


    Private Sub postbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles postbutton.Click

        'post answer with question as qid, user as uid (get from cookie), answer from ansbox.text and pdate = datetime.now

        Dim query As String = "insert into ans (qid, uid, answer, pdate) values ("
        query &= "@qid, @uid, @answer, @pdate)"

        ' & qid & "','" & dbid & "','" & ansbox.Text & "','01-01-2012')"


        Dim con As New SqlConnection(connstr)
        Dim cmd As New SqlCommand(query, con)
        Dim added As Integer = 0

        cmd.Parameters.Add("@qid", SqlDbType.Int)
        cmd.Parameters.Add("@uid", SqlDbType.Int)
        cmd.Parameters.Add("@answer", SqlDbType.VarChar)
        cmd.Parameters.Add("@pdate", SqlDbType.Date)

        cmd.Parameters("@qid").Value = qid
        cmd.Parameters("@uid").Value = CType(useruid, Integer)
        cmd.Parameters("@answer").Value = Server.HtmlEncode(ansbox.Text)
        cmd.Parameters("@pdate").Value = DateTime.Today


        Try
            con.Open()
            added = cmd.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try

        Response.Redirect("~/viewques.aspx?qid=" & qid)

    End Sub


    'Private Sub ansvalidator_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles ansvalidator.ServerValidate
    '    If ansbox.Text.Length < 20 Then
    '        args.IsValid = False

    '    End If

    'End Sub


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
End Class