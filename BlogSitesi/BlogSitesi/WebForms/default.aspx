<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BlogSitesi.WebForms._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" Width="725px">
        <ItemTemplate>
            <div style="width:690px; margin:0 auto; height:auto;">

                <div style="width: 690px; height: 40px; float: left">

                    <div style="width: 40px; height: 40px; float: left">
                        <asp:Image ID="Image2" runat="server" Height="40px" Width="40px" />
                    </div>
                    <div style="width: 650px; height: 40px; float: left; line-height: 40px; background-color: #8E24AA; color: #F8EFEB;">
                        <asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("makaleBaslik") %>'></asp:Label>
                    </div>

                </div>

            </div>
        </ItemTemplate>

    </asp:DataList>

</div>
</asp:Content>
