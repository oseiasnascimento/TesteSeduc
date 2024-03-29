﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frmTesteCadastro.aspx.vb" Inherits="frmTesteCadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section id="divInformacoes" runat="server" class="content" style="min-height: 0px !important; padding-bottom: 0px !important; font-size: 2rem">
        <div class="callout callout-info">
            <div class="row">
                <div class="col-sm-12">
                    <asp:Label ID="lblAluno" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <asp:Label ID="lblEtapa" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <asp:Label ID="lblPeriodo" runat="server" />
                </div>
            </div>
        </div>
    </section>

    <section id="divCadastro" runat="server" class="content">
        <asp:Panel ID="pnlCadastro" runat="server">
            <div class="box box-primary">
                <h4 class="page-header">Teste Formulario Cadastro</h4>
                <asp:Panel ID="pnlCampos" runat="server">
                    <div class="box-body">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                         <label ID="lblAlunos" runat="server" title="Alunos">Alunos</label><br />
                                        <asp:DropDownList ID="drpAluno" ValidationGroup="form" AutoPostBack="true" runat="server" class="form-control select2 col-sm-12" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="NomeMae">Nome da mãe:</label>
                                        <asp:TextBox runat="server" required="required" class="form-control" type="text" ID="txtNomeMae" name="NomeMae" placeholder="Ex.: Maria Santos" MaxLength="50" />
                                    </div>
                                    <div class="form-group">
                                        <label for="CPF_Mae">CPF da mãe:</label>
                                        <asp:TextBox runat="server" required="required" class="form-control" type="text" ID="txtCPF_Mae" name="CPF_Mae" MaxLength="14" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="NomePai">Nome do pai:</label>
                                        <asp:TextBox runat="server" class="form-control" type="text" ID="txtNomePai" name="NomePai" placeholder="Ex.: Antonio Silva" MaxLength="250" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="CPF_Pai">CPF do pai:</label>
                                        <asp:TextBox runat="server" class="form-control" type="text" ID="txtCPF_Pai" name="CPF_Pai" MaxLength="14" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="TelefoneResp">Telefone do Responsável:</label>
                                        <asp:TextBox runat="server" required="required" class="form-control" type="tel" ID="txtTelefoneResp" name="TelefoneResp" placeholder="Ex.: (11) 2020-3030" MaxLength="15" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="RG">RG do aluno:</label>
                                        <asp:TextBox runat="server" required="required" class="form-control" type="text" ID="txtRG" name="RG" placeholder="Ex.: 0100111110011-0" MaxLength="14" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="EmissaoRG">Emissão do RG:</label>
                                        <asp:TextBox runat="server" required="required" class="form-control" type="date" min="1980-01-01" max="2020-12-31" ID="txtDateEmissaoRG" name="EmissaoRG" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="DataNascimento">Data de Nascimento:</label>
                                        <asp:TextBox runat="server" required="required" class="form-control"
                                            type="date" min="1980-01-01" max="2020-12-31" ID="txtDataNascimento" name="DataNascimento" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="Sexo">Sexo do Aluno:</label>
                                        <asp:DropDownList runat="server" required="required"
                                            ID="drpSexo"
                                            class="form-control"
                                            name="Sexo">
                                            <asp:ListItem Value="">Selecione</asp:ListItem>
                                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                                            <asp:ListItem Value="F">Feminino</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div id="divBotoes" runat="server" class="box-footer">
                        <div class="btn-group">
                            <asp:LinkButton ID="btnSalvar" runat="server" class="btn btn-success"><i class="fa fa-save"></i> Salvar</asp:LinkButton>
                        </div>
                        <div class="btn-group">
                            <asp:LinkButton ID="btnVoltar" runat="server" class="btn btn-warning"><i class="fa fa-mail-reply"></i> Voltar</asp:LinkButton>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </asp:Panel>
    </section>

    <section id="divListagem" runat="server" class="content">
        <div class="box-body">
            <div class="row">
                <div class="col-md-12">
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
                                <asp:LinkButton ID="btnLocalizar" runat="server" class="btn btn-default"><i class="fa fa-search"></i>Localizar</asp:LinkButton>
                            </div>
                            <div class="btn-group">
                                <asp:LinkButton ID="btnNovo" runat="server" class="btn btn-info"><i class="fa fa-plus"></i>Cadastrar Endereço</asp:LinkButton>
                            </div>
                        </div>
                        <div id="divDocumento" runat="server" class="box-footer">
                            <asp:GridView ID="grdDocumento" runat="server" CssClass="table table-bordered" PagerStyle-CssClass="paginacao" AllowSorting="True" AllowPaging="True" PageSize="20" AutoGenerateColumns="False" 
                                DataKeyNames="CI02_ID_DOCUMENTOS, CI01_ID_ALUNO">
                                <HeaderStyle CssClass="bg-aqua" ForeColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="CI02_ID_DOCUMENTOS" SortExpression="CI02_ID_DOCUMENTOS" HeaderText="Codigo" />
                                    <asp:BoundField DataField="CI01_ID_ALUNO" SortExpression="CI01_ID_ALUNO" HeaderText="Aluno" />
                                    <asp:BoundField DataField="CI02_NM_MAE" SortExpression="CI02_NM_MAE" HeaderText="Nome da Mãe" />
                                    <asp:BoundField DataField="CI02_NU_CPF_MAE" SortExpression="CI02_NU_CPF_MAE" HeaderText="CPF da Mãe" />
                                    <asp:BoundField DataField="CI02_NM_PAI" SortExpression="CI02_NM_PAI" HeaderText="Nome do Pai" />
                                    <asp:BoundField DataField="CI02_NU_TELEFONE_RESPONSAVEL" SortExpression="CI02_NU_TELEFONE_RESPONSAVEL" HeaderText="Fone Resp." />
                                    <asp:BoundField DataField="CI02_NU_RG_ALUNO" SortExpression="CI02_NU_RG_ALUNO" HeaderText="RG do Aluno" />
                                    <asp:BoundField DataField="CI02_DT_EMISSAO_RG_ALUNO" SortExpression="CI02_DT_EMISSAO_RG_ALUNO" HeaderText="EmissaoRG" />
                                    <asp:BoundField DataField="CI02_DT_NASCIMENTO_ALUNO" SortExpression="CI02_DT_NASCIMENTO_ALUNO" HeaderText="Nasc." />
                                    <asp:BoundField DataField="CI02_DH_CADASTRO" SortExpression="CI02_DH_CADASTRO" HeaderText="Hora do Cadastro" />
                                    <asp:BoundField DataField="CI02_TP_SEXO_ALUNO" SortExpression="CI02_TP_SEXO_ALUNO" HeaderText="Sexo" />

                                    <asp:TemplateField HeaderText="" SortExpression="" Visible="true" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <div class="btn-group">
                                                <asp:LinkButton ID="lnkExcluirDocumento" runat="server" class="btn btn-social-icon bg-red" CommandName="EXCLUIR" ToolTip="ExcluirDocumento">
                                                    <i id="iExcluirDocumento" runat="server" class="fa fa-remove"></i>
                                                </asp:LinkButton>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="" SortExpression="" Visible="true" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <div class="btn-group">
                                                <asp:LinkButton ID="lnkEditarDocumento" runat="server" class="btn btn-social-icon bg-blue" CommandName="EDITAR" ToolTip="EditarDocumento">
                                                    <i id="iEditarDocumento" runat="server" class="fa fa-pencil"></i>
                                                </asp:LinkButton>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="" SortExpression="" Visible="true" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <div class="btn-group">
                                                <asp:LinkButton ID="lnkEnviarDocumento" runat="server" class="btn btn-social-icon bg-green" CommandName="ENVIAR" ToolTip="EnviarDocumento">
                                                    <i id="iEnviarDocumento" runat="server" class="fa fa-send"></i>
                                                </asp:LinkButton>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:Label ID="lblRegistros" runat="server" CssClass="badge bg-aqua" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
