Imports System.Security.Cryptography
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class login
    Inherits System.Web.UI.Page

    Dim dbid, uid, useruid As String
    'dbid is the id from login table
    Dim conn As New SqlConnection

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

    Protected Sub submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Submit.Click
        Dim source As String = passbox.Value

        Dim hash As String
        Using md5Hash As MD5 = MD5.Create()
            hash = GetMd5Hash(md5Hash, source)
            'Response.Write(hash)
        End Using

        Dim username As String = userbox.Text

        conn.ConnectionString = WebConfigurationManager.ConnectionStrings("forumConnectionString").ConnectionString
        ' conn.ConnectionString = "Data Source=localhost\SQLExpress;Initial Catalog=forum;Integrated Security=True"

        Dim cmd As New SqlCommand
        Dim reader As SqlDataReader

        cmd.CommandText = "select * from login"
        cmd.Connection = conn

        Dim found As Integer = 0

        Try
            conn.Open()
            reader = cmd.ExecuteReader()
            While reader.Read()
                uid = CType(reader("uid"), String)
                dbid = CType(reader("id"), String)

                If uid = username And reader("pass") = hash Then
                    found = 1
                    Exit While
                End If
            End While

        Catch ex As Exception
            Debug.WriteLine("failed to open")
            Debug.WriteLine(ex)

        Finally
            conn.Close()
        End Try

        'login logic

        If found = 1 Then

            Dim cookie As New HttpCookie("pref")
            cookie("id") = dbid
            cookie("uid") = uid
            'add useruid to cookie

            Dim query2 = "select uid from [user] where id=" & dbid

            Dim cmd2 As New SqlCommand(query2, conn)

            Dim reader2 As SqlDataReader

            Try
                conn.Open()
                reader2 = cmd2.ExecuteReader()
                While reader2.Read()
                    cookie("useruid") = reader2("uid")

                    Exit While

                End While
                reader2.Close()
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                conn.Close()
            End Try


            cookie.Expires = DateTime.Now.AddDays(1)

            Response.Cookies.Add(cookie)
            'Redirect Code follows here
            Response.Redirect("~/index.aspx")


        Else
            Response.Write("error logging in")
            errmsg.Visible = True

        End If

    End Sub

    Private Sub clearbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles clearbutton.Click
        userbox.Text = ""

    End Sub

    Private Sub login_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit

        Dim cookie As HttpCookie = Request.Cookies("pref")
        Dim dbid, uid As String
        If cookie IsNot Nothing Then
            dbid = cookie("id")
            uid = cookie("uid")
            Session("master") = 2
            Me.MasterPageFile = "~/Site2.Master"
            Response.Redirect("~/index.aspx")
        Else : Session("master") = 1
            Me.MasterPageFile = "~/Site1.Master"
        End If

    End Sub
End Class