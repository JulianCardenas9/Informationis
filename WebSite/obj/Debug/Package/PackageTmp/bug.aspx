<%@ Page Title="" Language="C#" MasterPageFile="~/Main-Full.Master" AutoEventWireup="true" CodeBehind="bug.aspx.cs" Inherits="WebSite.bug" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>Bug Tracker</h1>

    <p class="paragraph"></p>
    
    <iframe src="http://mantis.informationis.net" width="1100px" height="650px" style="margin-bottom:20px;">
    </iframe>
</asp:Content>
