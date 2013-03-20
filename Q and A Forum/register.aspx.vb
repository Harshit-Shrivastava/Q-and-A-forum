Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Security.Cryptography

Public Class WebForm3
    Inherits System.Web.UI.Page

    Dim dbid, uid As String

    Shared Function GetMd5Hash(ByVal md5Hash As MD5, ByVal input As String) As String

        ' Convert the input string to a byte array and compute the hash. 
        Dim data As Byte() = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input))

        ' Create a new Stringbuilder to collect the bytes 
        ' and create a string. 
        Dim sBuilder As New StringBuilder()

        ' Loop through each byte of the hashed data  
        ' and format each one as a hexadecimal string. 
        Dim i As Integer
        For i = 0 To data.Length - 1
            sBuilder.Append(data(i).ToString("x2"))
        Next i

        ' Return the hexadecimal string. 
        Return sBuilder.ToString()

    End Function 'GetMd5Hash


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Private Sub WebForm3_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
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

    Private Sub Register_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Register.Click


        Dim source As String = txtPass.Text()

        Dim hash As String
        Using md5Hash As MD5 = MD5.Create()
            hash = GetMd5Hash(md5Hash, source)
            'Response.Write(hash)
        End Using


        Dim constr As String = WebConfigurationManager.ConnectionStrings("forumConnectionString").ConnectionString
        Dim query As String

        query = "Insert into login (uid,pass) values (@uid, @pass)"


        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand(query, con)

        'query2 = "Insert into user("

        'TODO

        'Write code to insert into the user table

        cmd.Parameters.Add("@uid", SqlDbType.VarChar)
        cmd.Parameters.Add("@pass", SqlDbType.VarChar)

        cmd.Parameters("@uid").Value = txtUId.Text
        cmd.Parameters("@pass").Value = hash

        Dim added As Integer = 0

        Try
            con.Open()
            added = cmd.ExecuteNonQuery()


        Catch ex As Exception

        Finally
            con.Close()

        End Try



        If added = 1 Then

            Dim loginid As Integer

            query = "select * from login where uid='" & txtUId.Text & "'"


            Dim cmd2 As New SqlCommand(query, con)

            Dim reader As SqlDataReader

            Try
                con.Open()
                reader = cmd2.ExecuteReader()
                While reader.Read()
                    loginid = reader("id")
                    Exit While
                End While
                reader.Close()
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                con.Close()
            End Try



            query = "Insert into [user] (id,name,email,phone,dob) values (@id, @name, @email, @phone, @dob)"


            Dim cmd3 As New SqlCommand(query, con)

            cmd3.Parameters.Add("@id", SqlDbType.Int)
            cmd3.Parameters.Add("@name", SqlDbType.VarChar)
            cmd3.Parameters.Add("@email", SqlDbType.VarChar)
            cmd3.Parameters.Add("@phone", SqlDbType.Decimal)
            cmd3.Parameters.Add("@dob", SqlDbType.Date)

            cmd3.Parameters("@id").Value = loginid
            cmd3.Parameters("@name").Value = txtName.Text
            cmd3.Parameters("@email").Value = txtEmail.Text
            cmd3.Parameters("@phone").Value = CType(txtPhNo.Text, Decimal)
            cmd3.Parameters("@dob").Value = Calendar1.SelectedDate

            Try
                con.Open()
                added = cmd3.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox(ex.Message)

            Finally
                con.Close()
            End Try

            Response.Redirect("~/login.aspx")

        End If

    End Sub

    Private Sub Clear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Clear.Click
        txtName.Text = ""
        txtUId.Text = ""
        txtPass.Text = ""
        txtCPass.Text = ""
        txtEmail.Text = ""
        txtPhNo.Text = ""

    End Sub

    Private Sub Calendar1_DayRender(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DayRenderEventArgs) Handles Calendar1.DayRender

        If e.Day.Date > DateTime.Today Then
            e.Day.IsSelectable = False
        End If

    End Sub

    Private Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        Dim dob As String = Calendar1.SelectedDate.ToString()

    End Sub
End Class