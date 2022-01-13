<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExcelToDB.aspx.cs" Inherits="student_Registration.ExcelToDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">

        <section>
            <h1>Save Excel File</h1>

            <p>Upload Your File Here</p>
            <div>
                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                <asp:Button ID="UploadBtn" runat="server" Text="Upload" OnClick="UploadBtn_Click"/><br />
                <asp:Label ID="MessageLabel" runat="server" Visible="false" Text=""></asp:Label>
            </div>

            

        </section>
    </div>
    
</asp:Content>
