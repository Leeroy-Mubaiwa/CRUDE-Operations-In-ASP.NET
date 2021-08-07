<%@ Page  EnableEventValidation="false" Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDE_Operations_In_ASP.NET._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <p>
        <br />
    </p>
     <div class="image-div-div">
            <img src="Resources/physics.png" />
        </div>
    
    <style>
        .image-div-div{
            height:100px;
            width: 100px;
            margin: auto;
        }
        .image-div{
            background-color:royalblue;

        }
        .image-div-div img{
            height: 90px;
            margin:auto;
           
        }
        .welcome-h1{
            margin: auto;
            text-align:center;
            margin-top:20px;
            color:white;
            font-size: 20px;
           
        }
        .div-buttons {
            margin-bottom: 20px;
            margin-top:20px;
            margin: auto;
            height: auto;
            width:50%;
            padding:20px;
            background-color:whitesmoke;
        
            font-family: 'segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
    <div class="div-buttons">
      <asp:Button CssClass="crude-buttons" ID ="btn_import" Text="Import" runat="server" OnClick="btn_import_Click" />
        <asp:FileUpload ID="FileUpload1" runat="server" /></div>
    <div class="div-buttons" >
      <style>
          
          .crude-buttons{
              background-color:#007ACC;
              color: white;
              border:none;
              border-radius: 1px;
              height:25px;
              font-weight:100;
              width:100px
          }
          .auto-style1 {
              width: 270px;
          }
          .auto-style2 {
              width: 92px;
          }
           .txts{
            margin-top:10px;
            padding:5px;
            width: 200px;
            border-radius: 4px;
            border-width:1px;
            border-style:solid;
            border-color: gray;
            font-size: larger;
        }

      </style>
        
        <asp:Button CssClass="crude-buttons" ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        <asp:Button CssClass="crude-buttons" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <asp:Button CssClass="crude-buttons" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        <asp:Button CssClass="crude-buttons" ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <asp:Button CssClass="crude-buttons" ID="btnFind" runat="server" Text="Find" OnClick="btnFind_Click" />

           </div>
    <p>
        &nbsp;</p>
    <style>
     
        
        </style>
    <table class="nav-justified">
        
        <tr class="rows-seperate">
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">Student ID</td>
            <td>
                <asp:TextBox CssClass="txts" ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="rows-seperate">
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">Student Name</td>
            <td>
                <asp:TextBox CssClass="txts" ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="rows-seperate">
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">Address</td>
            <td>
                
                      <asp:DropDownList CssClass="txts" ID="DropDownList1" runat="server">
                </asp:DropDownList>
        
              
            </td>
        </tr>
        <tr class="rows-seperate">
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">Age</td>
            <td>
                <asp:TextBox CssClass="txts" ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="rows-seperate">
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">Contact</td>
            <td>
                <asp:TextBox CssClass="txts" ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="rows-seperate">
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <div class="div-table">
        <style>
            .table-{
                height:200px;
                max-height: 200px;
               border-collapse:collapse;
               border-style:dotted;
               border-width:1px;
               border-color:darkorange;
               width:80%;
    
            }
            .table- th{
                background-color:darkorange;
                height:30px;
                font-weight: 500;
                font-size:13px;
             text-transform:capitalize;
             color:white;
               
            }
               .table- tr{
        
                height:30px;
                font-weight: 500;
                font-size:13px;
             text-transform:capitalize;
               
            }
               .table- td{
               padding:2px;
                text-transform:none;
                padding-left:10px; padding-right: 10px;
            }
            .txts_2{
                height:200px;
                background-color: white;
                border: none;
                border-radius: 2px;
                text-anchor:start;
                text-align:left;
               vertical-align:text-top;
            }
            .auto-style3 {
                border-style: none;
                border-color: inherit;
                border-width: medium;
                background-color: white;
                border-radius: 2px;
                text-anchor: start;
                text-align: left;
                vertical-align: text-top;
            }
            </style>

        <div class="div-buttons">
            <asp:TextBox CssClass="auto-style3" ID="TextBox5" runat="server" Height="221px" TextMode="MultiLine" Width="416px"></asp:TextBox>

        </div>
        <asp:GridView ID="GridView1" CssClass="table-" runat="server"></asp:GridView>
        
       
    </div>
</asp:Content>
