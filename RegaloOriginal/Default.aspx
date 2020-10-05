<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RegaloOriginal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
             <p></p>

                   <p>
       
                        <asp:Label ID="Nombre"  text="Nombre del producto: " runat="server"/>
                     <asp:TextBox ID="Vnom" Columns="20" MaxLength="300" Text="" runat="server"></asp:TextBox>
                       </p>
                   <p>
                        <asp:Label ID="Cantidad" text="Cantidad: " runat="server"/>
                     <asp:TextBox ID="Vcan" Columns="20" MaxLength="300" Text="" runat="server"/></asp:TextBox>     
       
                </p>
                   <p>
                        <asp:Label ID="Precio"  text="Precio: " runat="server"/>
                     <asp:TextBox ID="Vpre" Columns="20" MaxLength="300" Text="" runat="server"/></asp:TextBox>     
       
                </p>
                   <p>
                       <asp:Label ID="opcion"  text="Elige una opcion: " runat="server"/>
                   <asp:DropDownList ID="DDL1" runat="server" Width="72px">
                       <asp:ListItem Value=""> </asp:ListItem>
                       <asp:ListItem Value="1"> Carrito</asp:ListItem>
                  <asp:ListItem Value="2"> Favorito </asp:ListItem>
                   </asp:DropDownList>
                    </p>
                   <p>
       
                       <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
       
                       <%--<asp:Table ID="TF" runat="server" Height="77px" Width="120px" rows="2">
                           <asp:TableRow>
           <asp:TableCell>Nombre</asp:TableCell>
           <asp:TableCell>Precio</asp:TableCell>
       </asp:TableRow>--%>
                        <asp:gridview id="TF"         
        autogeneratecolumns="false"
        runat="server"> 
                            <columns>
          <asp:boundfield datafield="Nombre" headertext="Nombre"/>
          <asp:boundfield datafield="Precio" headertext="Precio"/>
                                </columns>
          
                
      </asp:gridview>
                       <asp:gridview id="TC" 
        autogeneratecolumns="false"
        runat="server"> 
                            <columns>
          <asp:boundfield datafield="Cantidad" headertext="Cantidad"/>
          <asp:boundfield datafield="Nombre" headertext="Nombre"/>
          <asp:boundfield datafield="Precio" headertext="Precio Unitario"/>
          <asp:boundfield datafield="Subtotal" headertext="Subtotal"/>
                                </columns>
          
                
      </asp:gridview>
                      <%-- </asp:Table>--%>
                      <%-- <asp:Table ID="TC" runat="server" Height="77px" Width="120px" row>
                           <asp:TableRow>
           <asp:TableCell>Nombre producto</asp:TableCell>
           <asp:TableCell>Cantidad</asp:TableCell>
           <asp:TableCell>Precio unitario</asp:TableCell>
           <asp:TableCell>Subtotal item</asp:TableCell>
       </asp:TableRow>
          
                          

                       </asp:Table>--%>
       
    </p>

    

   
</asp:Content>
