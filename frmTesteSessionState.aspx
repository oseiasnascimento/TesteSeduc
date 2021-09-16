<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frmTesteSessionState.aspx.vb" Inherits="frmTesteSessionState" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-header">
       <sessionState mode="SQLServer" cookieless="true " regenerateExpiredSessionId="true " timeout="30" sqlConnectionString="Data Source=MySqlServer;Integrated Security=SSPI;" stateNetworkTimeout="20"/>

    </section>

    <section  id="cadastro" runat="server"   class="content">
           <h4 class="page-header">Teste Formulario Cadastro</h4>

             <div class="box-body">
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="NomeMae">Nome da mãe:</label>
                            <asp:TextBox runat="server" required="required" class="form-control" 
                                type="text"
                                id="txtNomeMae" 
                                name="NomeMae" 
                                placeholder="Ex.: Maria Santos" 
                                maxlength="50"/>
                        </div>
                        <div class="form-group">
                            <label for="CPF_Mae">CPF da mãe:</label>
                             <asp:TextBox runat="server" required="required" class="form-control" 
                                type="text"
                                id="txtCPF_Mae" 
                                name="CPF_Mae"
                                maxlength="14"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="NomePai">Nome do pai:</label>
                            <asp:TextBox runat="server" class="form-control"
                                type="text"
                                id="txtNomePai" 
                                name="NomePai" 
                                placeholder="Ex.: Antonio Silva" 
                                maxlength="250"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="CPF_Pai">CPF do pai:</label>
                            <asp:TextBox runat="server" class="form-control" 
                                type="text"
                                id="txtCPF_Pai" 
                                name="CPF_Pai"
                                maxlength="14"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="TelefoneResp">Telefone do Responsável:</label>
                            <asp:TextBox runat="server" required="required" class="form-control" 
                                type="tel"
                                id="txtTelefoneResp" 
                                name="TelefoneResp" 
                                placeholder="Ex.: (11) 2020-3030" 
                                maxlength="15"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="RG">RG do aluno:</label>
                            <asp:TextBox runat="server" required="required" class="form-control" 
                                type="text"
                                id="txtRG" 
                                name="RG" 
                                placeholder="Ex.: 0100111110011-0" 
                                maxlength="14"/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="EmissaoRG">Emissão do RG:</label>
                            <asp:TextBox runat="server" required="required" class="form-control" 
                                type ="date"                           
                                min="1980-01-01" 
                                max="2020-12-31" 
                                id="txtDateEmissaoRG" 
                                name="EmissaoRG"/>
                        </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label for="DataNascimento">Data de Nascimento:</label>
                            <asp:TextBox runat="server" required="required" class="form-control" 
                                type="date"        
                                min="1980-01-01" 
                                max="2020-12-31" 
                                id="txtDataNascimento" 
                                name="DataNascimento"/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="Sexo">Sexo do Aluno:</label>
                            <asp:DropDownList runat="server" required="required" 
                                id="drpSexo" 
                                class="form-control" 
                                name="Sexo"
                                >
                                <asp:ListItem value="">Selecione</asp:ListItem>
                                <asp:ListItem value="M">Masculino</asp:ListItem>
                                <asp:ListItem value="F">Feminino</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div> 
                </div>    
                
        </div>
    </section>

</asp:Content>
