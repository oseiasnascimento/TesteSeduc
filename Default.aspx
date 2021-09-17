<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="content-header">
    </section>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <section id="Cadastro" runat="server" class="content">
                <asp:Panel ID="pnlCadastro" runat="server">
                    <div class="col-sm-8">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h4>Seja bem-vindo!</h4>
                            </div>
                            <div class="box-body h4">
                                <h3>PROCESSO SELETIVO SEDUC-MA TESTE PRÁTICO - DESENVOLVEDOR</h3>
                                Esta é a sua área de acesso para o TESTE.<br />
                                Em “frmTesteCadastro.aspx” deve ser criado um formulário de cadastros seguindo os parâmetros da página principal e contendo nesse cadastro os campos referentes a tabela “CI02_DOCUMENTOS”.
                                O formulário terá que exibir a lista de alunos, onde deverá se escolher um aluno e assim preencher os dados referentes aos seus documentos e salvar na tabela “CI02_DOCUMENTOS”..<br />
                                <hr />
                                <strong>Dúvidas?</strong><br />
                                <br />
                                Telefone: <strong>0000 0000 000</strong><br />
                                <strong><a href="mailto:contato@seduc.gov.br">contato@seduc.gov.br</a> </strong>
                                <br />
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </section>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
