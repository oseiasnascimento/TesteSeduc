<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ctrMenu.ascx.vb" Inherits="ctrMenu" %>

<!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel" id="divGoverno" runat="server" visible="true">
        <center><img src="img/governo.png" alt="" height="80" /></center>        
    </div>
    <div class="user-panel" id="divUsuario" runat="server">
        <div class="pull-left image">
            <img src="img/avatar7.png" class="img-circle" alt="User Image" />
            <!--<asp:Image ID="imgFoto" runat="server" CssClass="img-circle" alt="User Image" />-->
        </div>
        <div class="pull-left info">
            <p>
                Olá,
                <asp:Label ID="lblUsuario" runat="server" Text="Usuario" />
            </p>
            <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
        </div>
    </div>
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
        <li id="liPrincipal" runat="server"><a href="Default.aspx"><i class="fa fa-home"></i><span>Principal</span></a></li>       
        <li id="liHeaderAreaCadastro" runat="server" class="treeview">
            <a href="#">
                <i class="fa fa-toggle-on"></i>
                <span>Aréa do Teste</span>
                <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                <li id="liSubMenuAluno" runat="server" class="Progress">
                    <asp:LinkButton ID="lnkAluno" runat="server"><a href="frmAluno.aspx"><i class="fa fa-save"></i>Cadastro de Aluno</a></asp:LinkButton></li>                
            
                <li id="liSubMenuCadastro" runat="server" class="Progress">
                    <asp:LinkButton ID="lnkCadastro" runat="server"><a href="frmTesteCadastro.aspx"><i class="fa fa-save"></i>Cadastro de Documento</a></asp:LinkButton></li>                
            </ul>
        </li>
     </ul>
</section>

