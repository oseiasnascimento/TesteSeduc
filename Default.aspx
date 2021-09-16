<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content-header">
    </section>
    <section id="cadastro" runat="server">
        <asp:Panel ID="pnlCadastro" runat="server">
            <div class="box box-primary">
                <div class='box-header'>
                    <h3 class="page-header">Formulario Cadastro Padrão</h3>
                </div>
                <asp:Panel ID="pnlCampos" runat="server">
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nome">Nome:</label>
                                    <asp:TextBox runat="server" required="required" type="text" class="form-control" ID="txtNome" name="Nome" placeholder="Ex.: João" MaxLength="50" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Sobrenome">Sobrenome:</label>
                                    <asp:TextBox runat="server" required="required" type="text" class="form-control" ID="txtSobrenome" name="Sobrenome" placeholder="Ex.: da Silva" MaxLength="250" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="CPF">CPF:</label>
                                    <asp:TextBox runat="server" required="required" type="text" class="form-control" ID="txtCPF" name="CPF" placeholder="Ex.: 010.011.111-00" MaxLength="14" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nacionalidade">Nacionalidade:</label>
                                    <asp:TextBox runat="server" required="required" type="text" class="form-control" ID="txtNacionalidade" name="Nacionalidade" placeholder="Ex.: brasileira" MaxLength="50" />
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="CEP">CEP:</label>
                                    <asp:TextBox runat="server" required="required" type="text" class="form-control" ID="txtCEP" name="CEP" placeholder="Ex.: 01011-100" MaxLength="8" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="Estado">Estado:</label>
                                    <asp:DropDownList runat="server" required="required" ID="drpEstado" class="form-control" name="Estado">
                                        <asp:ListItem Value="">Selecione</asp:ListItem>
                                        <asp:ListItem Value="MA">Maranhão</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="Cidade">Cidade:</label>
                                    <asp:TextBox runat="server" required="required" type="text" class="form-control" ID="txtCidade" name="Cidade" MaxLength="50" placeholder="Ex.: São Luis" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="Logradouro">Logradouro:</label>
                                    <asp:TextBox runat="server" required="required" type="text" class="form-control" ID="txtLogradouro" name="Logradouro" placeholder="Ex.: Rua Boa Vista 253" MaxLength="100" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Email">E-mail:</label>
                                    <asp:TextBox runat="server" required="required" type="text" class="form-control" ID="txtEmail" name="Email" placeholder="Ex.: email@email.com" MaxLength="100" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Telefone">Telefone:</label>
                                    <asp:TextBox runat="server" required="required" type="tel" class="form-control" ID="txtTelefone" name="Telefone" placeholder="Ex.: (11) 2020-3030" MaxLength="15" />
                                </div>
                            </div>
                        </div>

                    </div>
                    <div id="divBotoes" runat="server" class="box-footer">
                        <div class="btn-group">
                            <asp:LinkButton ID="btnSalvar" runat="server" class="btn btn-success"><i class="fa fa-save"></i> Salvar</asp:LinkButton>
                        </div>
                        <div class="btn-group">
                            <asp:LinkButton ID="btnDocumento" runat="server" class="btn btn-info"><i class="fa fa-plus"></i> Documento</asp:LinkButton>
                        </div>
                        <div class="btn-group">
                            <asp:LinkButton ID="btnVoltar" runat="server" class="btn btn-warning"><i class="fa fa-mail-reply"></i> Voltar</asp:LinkButton>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </asp:Panel>
    </section>

    <section id="listagem" runat="server">
        <div class='row'>
            <div class='col-sm-12'>
                <div class='box box-blue'>
                    <div class='box-header'>
                        <h3 class='box-title'><i class="fa fa-search"></i>Localizar Aluno</h3>
                    </div>
                    <div class="box-body">
                        <asp:Panel ID="Panel2" runat="server" DefaultButton="btnLocalizar">
                            <div class="row">
                                <div class="col-sm-6">
                                    Localizar pelo Nome do Aluno<br />
                                    <asp:TextBox ID="txtLocalizar" runat="server" class="form-control" />
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                    <div class="box-footer">
                        <div class="btn-group">
                            <asp:LinkButton ID="btnLocalizar" runat="server" class="btn btn-default"><i class="glyphicon glyphicon-search"></i> Localizar</asp:LinkButton>
                        </div>
                        <div class="btn-group">
                            <asp:LinkButton ID="btnNovo" runat="server" class="btn btn-info"><i class="glyphicon glyphicon-plus"></i>  Novo</asp:LinkButton>
                        </div>
                    </div>

                    <div id="divAluno" runat="server" class="box-footer">

                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:Label ID="lblRegistros" runat="server" CssClass="badge bg-aqua" />
                                    <asp:GridView ID="grdAluno" runat="server"
                                        CssClass="table table-bordered"
                                        PagerStyle-CssClass="paginacao"
                                        AllowSorting="True"
                                        AllowPaging="True"
                                        PageSize="20"
                                        AutoGenerateColumns="False"
                                        DataKeyNames="CI01_ID_ALUNO">

                                        <HeaderStyle CssClass="bg-aqua" ForeColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="CI01_ID_ALUNO" SortExpression="CI01_ID_ALUNO" HeaderText="Codigo" />
                                            <asp:BoundField DataField="CI01_NM_ALUNO" SortExpression="CI01_NM_ALUNO" HeaderText="Nome" />
                                            <asp:BoundField DataField="CI01_NU_CPF" SortExpression="CI01_NU_CPF" HeaderText="CPF" DataFormatString="{0:###.###.###-##}" />
                                            <asp:BoundField DataField="CI01_NM_CIDADE" SortExpression="CI01_NM_CIDADE" HeaderText="Cidade" />

                                            <asp:TemplateField HeaderText="" SortExpression="" Visible="true" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="text-center">
                                                <ItemTemplate>
                                                    <div class="btn-group">
                                                        <asp:LinkButton ID="lnkEditarAluno" runat="server" class="btn btn-social-icon bg-blue" CommandName="EDITAR" ToolTip="Editar Aluno">
                                                            <i id="iEditarAluno" runat="server" class="fa fa-pencil"></i>
                                                        </asp:LinkButton>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="" SortExpression="" Visible="true" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="text-center">
                                                <ItemTemplate>
                                                    <div class="btn-group">
                                                        <asp:LinkButton ID="lnkExcluirAluno" runat="server" class="btn btn-social-icon bg-red" CommandName="EXCLUIR" ToolTip="Excluir Aluno">
                                                            <i id="iExcluirAluno" runat="server" class="fa fa-remove"></i>
                                                        </asp:LinkButton>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
