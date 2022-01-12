<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BlogSitesi.WebForms.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
</head>
<body>
    <div>   
       <%--  <table style="margin-left:50px;margin-right:auto;height: 80px;">
            
     <tr>                    
            <td>
                  <asp:RadioButton ID="RadioButton1" runat="server" Text="Yönetici" GroupName="kullanıciTipi"/>
             </td>
             <td>
                 <asp:RadioButton ID="RadioButton2" runat="server" Text="Üye" GroupName="kullanıciTipi"/>
             </td>

                 </tr> 
        </table>--%>
    </div>
    <div style="margin-left:auto;margin-right:auto; height: 5px;">
 
    <table style="margin-left:50px;margin-right:auto;height: 80px;">
        
 
                <tr>
                    <td colspan="2" style="text-align:center">E-posta</td>
                    <td>
                        <asp:TextBox id="textboxKimlik" runat="server" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"                             
                            ControlToValidate="textboxKimlik" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                      
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">Şifre</td>
                    <td>
                        <asp:TextBox id="textboxSifre" TextMode="Password" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"                             
                            ControlToValidate="textboxSifre" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                   <tr>
                    <td colspan="2">
                                      
                <td colspan="2">
                    <asp:Button ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click" />
                              
                </td>
            
                        
                        <asp:Label ID="label1" runat="server" Text="" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
        
           
    </table>
    
        </div>   
    </body>
</html>
</asp:Content>
