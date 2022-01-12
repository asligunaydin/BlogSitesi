<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Yonetici.Master" AutoEventWireup="true" CodeBehind="MakaleGuncelle.aspx.cs" Inherits="BlogSitesi.WebForms.MakaleGuncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td style="background-color: #8E24AA; text-align: right; color: #F8EFEB; height: 26px; width: 206px;">&nbsp;</td>
            <td style="background-color: #8E24AA; height: 26px;"></td>
        </tr>
        <tr>
            <td style="background-color: #8E24AA; text-align: right; color: #F8EFEB; height: 26px; width: 206px;">Başlık:</td>
            <td style="background-color: #8E24AA; height: 26px;">
                <asp:TextBox ID="txtMakaleBaslikGncl" style="width:550px; height:20px; border:1px dotted #8E24AA; " runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td style="background-color: #8E24AA; text-align: right; color: #F8EFEB; height: 26px; width: 206px;">Özet:</td>
            <td style="background-color: #8E24AA; height: 26px;">
                <asp:TextBox ID="txtMakaleOzetGncl" TextMode="MultiLine" style="width:550px; height:100px; border:1px dotted #8E24AA; " runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td style="background-color: #8E24AA; text-align: right; color: #F8EFEB; height: 26px; width: 206px;">İçerik</td>
            <td style="background-color: #8E24AA; height: 26px;">
                <CKEditor:CKEditorControl ID="ckeditormakaleGncl" BasePath="/ckeditor/" runat="server" Width="550px"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td style="background-color: #8E24AA; text-align: right; color: #F8EFEB; height: 26px; width: 206px;">Yorum Sayısı:</td>
            <td style="background-color: #8E24AA; height: 26px;">
                <asp:TextBox ID="txtmakaleYorumSayisi" TextMode="Number" style="width:100px; height:25px; border:1px dotted #8E24AA; " runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="background-color: #8E24AA; text-align: right; color: #F8EFEB; height: 26px; width: 206px;">&nbsp;</td>
            <td style="background-color: #8E24AA; height: 26px;">
                <asp:Button ID="btnMakaleGncl" runat="server" Text="Güncelle"  style="background-color:#EAC7F3; color:#8E24AA; width:100px; height:25px;" OnClick="btnMakaleGncl_Click"/></td>
        </tr>
    </table>

</asp:Content>
