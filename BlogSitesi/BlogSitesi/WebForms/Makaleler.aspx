<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Yonetici.Master" AutoEventWireup="true" CodeBehind="Makaleler.aspx.cs" Inherits="BlogSitesi.WebForms.Makaleler" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
        <div style="height:40px; background-color:#8E24AA; color:#F8EFEB; font-weight:bolder">&nbsp;
            <asp:Button ID="mklArtı" runat="server" Height="25px" Text="+" Width="25px"  BackColor="#F8EFEB" style="margin-right: 1px; margin-top:6px;" onClick="mklArtı_Click"  />
                &nbsp;<asp:Button ID="mklEksi" runat="server" BackColor="#F8EFEB" Height="25px" Text="-" Width="25px" style="margin-right: 1px; margin-top:6px;" OnClick="mklEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Makale Ekleme</div>
            <asp:Panel ID="panel_makaleEkle" runat="server" style="background-color:#EAC7F3;"> 
        <table class="auto-style1">
            <tr>
                <td style="width: 169px; text-align: right;">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 169px; text-align: right;">Kategori</td>
                <td>
                    <asp:DropDownList ID="ddl_kategori" runat="server" style="height:25px; width:auto; border: 1px dotted #8E24AA;">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 169px; text-align: right;">Başlık</td>
                   <td style="height: 33px">
                        <asp:TextBox ID="txtMakaleBaslik" style="width:550px; height:20px; border:1px dotted #8E24AA; " runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td style="width: 169px; text-align: right;">Özet</td>
     <td style="height: 33px">
                        <asp:TextBox ID="txtMakaleOzet" TextMode="MultiLine" style="width:550px; height:100px; border:1px dotted #8E24AA; " runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td style="width: 169px; text-align: right; height: 33px;">İçerik</td>
                    <td>
                        <CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server" Width="550px"></CKEditor:CKEditorControl>
                    </td>
            </tr>
            <tr>
                <td style="width: 169px; text-align: right;">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnMakaleEkle" runat="server" Text="Kaydet"  style="background-color:#8E24AA; color:#F8EFEB; width:100px; height:25px;" OnClick="btnMakaleEkle_Click"/>
                    </td>
            </tr>
            <tr>
                <td style="width: 169px; text-align: right;">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </asp:Panel>
            <div style="height:30px;"></div>
      <div style="height:40px; background-color:#8E24AA; color:#F8EFEB; font-weight:bolder">&nbsp;
            <asp:Button ID="mduzenleArti" runat="server" Height="25px" Text="+" Width="25px"  BackColor="#F8EFEB" style="margin-right: 1px; margin-top:6px;" OnClick="mduzenleArti_Click"   />
                &nbsp;<asp:Button ID="mduzenleEksi" runat="server" BackColor="#F8EFEB" Height="25px" Text="-" Width="25px" style="margin-right: 1px; margin-top:6px;" OnClick="mduzenleEksi_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Makale Düzenleme</div>
            <asp:Panel ID="panel_makaleDuzenle" runat="server" style="background-color:#EAC7F3;">
                <asp:DataList ID="dl_makaleGetir" runat="server" Width="738px">
                    <HeaderTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td style="width: 443px">MAKALE ADI</td>
                                <td style="width: 136px">GÜNCELLE</td>
                                <td>SİL</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td style="width: 443px; height: 25px">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                                </td>
                                <td style="height: 25px; width: 107px;">
                                    &nbsp;&nbsp;
                                    <a href="MakaleGuncelle.aspx"?makaleid="<%#Eval("makaleid") %>"><img alt="" src="../Tema/update2.jpg" style="width: 33px; height: 37px" /></a>
                                </td>
                                <td style="height: 25px">
                                    &nbsp;&nbsp;&nbsp;
                                    <a href="Makaleler.aspx"?makaleid="<%#Eval("makaleid") %>&islem=sil"><img alt="" src="../Tema/delete2.png" style="width: 35px; height: 45px" /></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
               
               </asp:Panel>
      </div>
</asp:Content>
