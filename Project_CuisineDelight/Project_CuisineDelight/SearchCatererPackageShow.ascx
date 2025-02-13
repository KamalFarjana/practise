﻿﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchCatererPackageShow.ascx.cs" Inherits="Project_CuisineDelight.SearchCatererPackageShow" %>
<style type="text/css">
    .auto-style1 {
        height: 26px;
    }
</style>
<asp:DataList ID="SearchCaterePackages" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" CellPadding="5" CellSpacing="5" HorizontalAlign="Justify" Width="743px">
    <ItemStyle HorizontalAlign="Center" BackColor="White" Wrap="False" />
    <ItemTemplate>
        
        <table style="width: 100%;">
             <tr>
                <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# "CatererFolder/PackageImage/"+Eval("Package_Image") %>' Width="300" Height="300" style="padding:0.4em" /> </td>
                
            </tr>
            <tr align="center" >
                <td >Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Package_Name") %>'></asp:Label> </td>
                
            </tr>
     
         
             <tr  align="center">
                <td>Price: $ <asp:Label ID="Label2" runat="server" Text='<%#  Eval("Package_Price") %>'></asp:Label></td>               
            </tr>
             <tr  align="center">
                 <td class="auto-style1">
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "UserViewPackages.aspx?IDPakcageCAT="+Eval("Package_ID")+"&IDCAT="+Eval("UserId") %>' Text='View'></asp:HyperLink>             
           
                 </td>
              </tr>  
            <tr  align="center">
                 <asp:LoginView ID="LoginView1" runat="server">
                <LoggedInTemplate>
                <td>
                      <asp:Button ID="btnAddToCart" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" CommandArgument='<%# Eval("Package_ID") %>' />
                   
                </td>
                 </LoggedInTemplate>

            </asp:LoginView>
            </tr>
        </table>
        <br />
    </ItemTemplate>
    

</asp:DataList>