<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Yonetici.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="BlogSitesi.WebForms.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:40px; background-color:#8E24AA; color:#F8EFEB; font-weight:bolder">&nbsp;
            <asp:Button ID="ktgrArti" runat="server" Height="25px" Text="+" Width="25px"  BackColor="#F8EFEB" style="margin-right: 1px; margin-top:6px;" OnClick="ktgrArti_Click"  />
                &nbsp;<asp:Button ID="ktgrEksi" runat="server" BackColor="#F8EFEB" Height="25px" Text="-" Width="25px" style="margin-right: 1px; margin-top:6px;" OnClick="ktgrEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kategori Ekleme</div>
        <asp:Panel ID="panel_kategoriEkle" runat="server" style="background-color:#EAC7F3;">
            <table class="auto-style1">
                <tr>
                    <td style="width: 184px; text-align: right;">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 184px; text-align: right;">Kategori Adı</td>
                    <td >
                        <asp:TextBox  ID="txtKategoriAdi" style="width:150px; height:25px; border:1px dotted #8E24AA; " runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px; text-align: right; height: 33px;">Sıra</td>
                    <td style="height: 33px">
                        <asp:TextBox ID="txtKategoriSira" TextMode="Number" style="width:150px; height:25px; border:1px dotted #8E24AA; " runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px; text-align: right; height: 33px;">Adet</td>
                    <td style="height: 33px">
                        <asp:TextBox ID="txtKategoriAdet" TextMode="Number" style="width:150px; height:25px; border:1px dotted #8E24AA; " runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px; text-align: right;">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnKategoriEkle" runat="server" Text="Kaydet"  style="background-color:#8E24AA; color:#F8EFEB; width:100px; height:25px;" OnClick="btnKategoriEkle_Click"/>
                    </td>
                </tr>
            </table>

        </asp:Panel>
        <div style="height:30px;"></div>
                <div style="height:40px; background-color:#8E24AA; color:#F8EFEB; font-weight:bolder">&nbsp;
            <asp:Button ID="dznlArti" runat="server" Height="25px" Text="+" Width="25px"  BackColor="#F8EFEB" style="margin-right: 1px; margin-top:6px;" OnClick="dznlArtı_Click"  />
                &nbsp;<asp:Button ID="dznlEksi" runat="server" BackColor="#F8EFEB" Height="25px" Text="-" Width="25px" style="margin-right: 1px; margin-top:6px;" OnClick="dznlEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kategori Düzenleme</div>
        <asp:Panel ID="panel_kategoriDuzenle" runat="server" style="background-color:#EAC7F3;">
            <asp:DataList ID="dl_kategoriGetir" runat="server" Width="740px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td style="width: 465px; height: 26px">Kategori Adı</td>
                            <td style="width: 132px; height: 26px">GÜNCELLE</td>
                            <td style="height: 26px">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td style="width: 465px; height: 26px">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                            </td>
                            <td style="width: 132px; height: 26px">
                                <img alt="" src="../Tema/update2.jpg" style="width: 33px; height: 37px; margin-left:8px;" />
                            </td>
                            <td style="height: 26px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="Kategoriler.aspx?kategoriid=<%#Eval("kategoriid")%>&islem=sil"><img alt="" src="../Tema/delete2.png" style="width: 35px; height: 45px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>            
        </asp:Panel>
           <div style="height:30px;"></div>
    </div>
</asp:Content>
