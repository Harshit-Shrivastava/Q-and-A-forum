Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web.Configuration


Public Class profile
    Inherits System.Web.UI.Page
    Dim dbid, uid, useruid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim constr As String = WebConfigurationManager.ConnectionStrings("forumConnectionString").ConnectionString
        Dim query As String = "select * from [user] where uid=" & useruid

        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand(query, con)
        Dim reader As SqlDataReader

        Try
            con.Open()
            reader = cmd.ExecuteReader()

            While reader.Read()

                welcome.Text = reader("name")
                name.Text = reader("name")
                email.Text = reader("email")
                phone.Text = reader("phone")
                dob.Text = reader("dob")

            End While

            reader.Close()

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()

        End Try


    End Sub



    Private Sub profile_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
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