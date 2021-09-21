Enum ColunasGrid_grdDocumento As Integer
    Selecionar
    ID_DOCUMENTO
    buttons
End Enum

Partial Class frmTesteCadastro
    Inherits System.Web.UI.Page
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        If Not Page.IsPostBack Then
            CarregarListaAluno()
            HabilitarSecao()
            HabilitarCampos()
        End If

        Validacao.Outros(txtCPF_Pai, False, "CPF",, Validacao.eFormato.CPF)
        Validacao.Outros(txtCPF_Mae, False, "CPF",, Validacao.eFormato.CPF)
        Validacao.Outros(txtTelefoneResp, False, "CPF",, Validacao.eFormato.CELULAR)

    End Sub

#Region "Funções de Cadastro"

    Private Sub HabilitarSecao(Optional hab As Boolean = False)
        cadastro.Visible = hab
        listagem.Visible = Not hab
    End Sub

    Private Sub HabilitarCampos(Optional hab As Boolean = False)
        txtNomeMae.Enabled = hab
        txtCPF_Mae.Enabled = hab
        txtNomePai.Enabled = hab
        txtCPF_Pai.Enabled = hab
        txtTelefoneResp.Enabled = hab
        txtRG.Enabled = hab
        txtDateEmissaoRG.Enabled = hab
        txtDataNascimento.Enabled = hab
        drpSexo.Enabled = hab
    End Sub

    Private Function VerificarCpf() As Boolean
        Dim objDocumento As New Documento
        Dim Existe As Boolean = False

        With objDocumento.Pesquisar(,,, Replace(Replace(txtCPF_Mae.Text, ".", ""), "-", ""))
            If .Rows.Count > 0 Then
                MsgBox("CPF já Cadastrado", eCategoriaMensagem.ALERTA)
                Existe = True
            End If
        End With

        objDocumento = Nothing
        Return Existe
    End Function

    Private Function VerificarDocumento() As Boolean
        Dim objDocumento As New Documento
        Dim Existe As Boolean = False

        With objDocumento.Pesquisar(, drpAluno.Text)
            If .Rows.Count > 0 Then
                Existe = True
            End If
        End With

        objDocumento = Nothing
        Return Existe
    End Function

    Private Function VerificarNomeAluno() As Boolean
        Dim Existe As Boolean = False

        If drpAluno.Text = "Selecione um Aluno" Then
            Existe = True
        End If

        Return Existe
    End Function

    Private Sub LimparCampos()

        ViewState("CodigoDocumento") = Nothing
        ViewState("Aluno") = Nothing

        txtNomeMae.Text = ""
        txtNomePai.Text = ""
        txtCPF_Mae.Text = ""
        txtCPF_Pai.Text = ""
        txtTelefoneResp.Text = ""
        txtRG.Text = ""
        txtDateEmissaoRG.Text = ""
        txtDataNascimento.Text = ""

        drpAluno.ClearSelection()
        drpSexo.ClearSelection()

        txtNomeMae.Focus()
    End Sub

    Private Sub Salvar()
        Dim objDocumento As New Documento(ViewState("CodigoDocumento"))
        With objDocumento
            .NomeMae = txtNomeMae.Text
            'If txtDateEmissaoRG.Text = "" Then
            '    MsgBox("Por favor insira um valor para Emissão do RG", eCategoriaMensagem.ALERTA)
            '    Exit Sub
            'End If
            'If txtDataNascimento.Text = "" Then
            '    MsgBox("Por favor insira um valor para Data de Nascimento", eCategoriaMensagem.ALERTA)
            '    Exit Sub
            'End If
            If drpAluno.SelectedIndex = 0 Then
                .CodigoAluno = ViewState("Aluno")
            Else
                .CodigoAluno = drpAluno.Text
            End If
            .CPF_MAE = Replace(Replace(txtCPF_Mae.Text, ".", ""), "-", "")
            .NomePai = txtNomePai.Text
            .CPF_PAI = Replace(Replace(txtCPF_Pai.Text, ".", ""), "-", "")
            .TelefoneResponsavel = txtTelefoneResp.Text
            .RgAluno = txtRG.Text
            .EmissaoAluno = txtDateEmissaoRG.Text
            .NascimentoAluno = txtDataNascimento.Text
            .DH_Cadastro = DateTime.Now
            .SexoAluno = drpSexo.SelectedValue

            .Salvar()
            LimparCampos()
            CarregarListaAluno()
            'CarregarGridDocumentos()
            MsgBox("Registro salvo com sucesso !", eCategoriaMensagem.SUCESSO)
        End With
        objDocumento = Nothing
    End Sub

    Private Sub Excluir(ByVal Codigo As Integer)
        Dim objDocumento As New Documento

        If objDocumento.Excluir(Codigo) > 0 Then
            MsgBox(eTipoMensagem.EXCLUIR_SUCESSO)
        Else
            MsgBox(eTipoMensagem.EXCLUIR_ERRO)
        End If

        objDocumento = Nothing

        CarregarGridDocumentos()
    End Sub

    Private Sub CarregarDocumento(ByVal Codigo As Integer)
        Dim objDocumento As New Documento(Codigo)
        Dim dateEmissaoAluno, dateNascimentoAluno As Date

        With objDocumento
            ViewState("CodigoDocumento") = .CodigoDocumento

            dateEmissaoAluno = DoBanco(.EmissaoAluno, eTipoValor.DATA_COMPLETA)
            dateNascimentoAluno = DoBanco(.NascimentoAluno, eTipoValor.DATA_COMPLETA)

            drpAluno.Text = .CodigoAluno
            txtNomeMae.Text = .NomeMae
            txtNomePai.Text = .NomePai
            txtCPF_Mae.Text = .CPF_MAE
            txtCPF_Pai.Text = .CPF_PAI
            txtTelefoneResp.Text = .TelefoneResponsavel
            txtRG.Text = .RgAluno
            txtDateEmissaoRG.Text = dateEmissaoAluno.ToString("yyyy-MM-dd")
            txtDataNascimento.Text = dateNascimentoAluno.ToString("yyyy-MM-dd")
            drpSexo.SelectedValue = .SexoAluno
        End With

        objDocumento = Nothing

    End Sub

#End Region

#Region "Eventos de Cadastro"
    Protected Sub btnSalvar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSalvar.Click

        If ViewState("Aluno") = Nothing Then
            If VerificarNomeAluno() = True Then
                MsgBox("Selecione um Aluno", eCategoriaMensagem.ALERTA)
                Exit Sub
            End If
            If VerificarDocumento() = True Then
                MsgBox("Aluno já Cadastrado", eCategoriaMensagem.ALERTA)
                Exit Sub
            End If
            If VerificarCpf() = False Then
                Salvar()
                HabilitarSecao()
            End If
            Exit Sub
        Else
            Salvar()
            LimparCampos()
            HabilitarSecao()
        End If
        Salvar()
    End Sub

#End Region

#Region "Funções de Listagem"
    Private Sub CarregarListaAluno()
        Dim objAluno As New Aluno

        With drpAluno
            .DataSource = objAluno.ObterTabela()
            .DataValueField = "CI01_ID_ALUNO"
            .DataTextField = "CI01_NM_ALUNO"
            .DataBind()
            .Items.Insert(0, "Selecione um Aluno")
            .SelectedIndex = 0

        End With
        objAluno = Nothing

    End Sub

    Private Sub Informacao()
        Dim objAluno As New Aluno
        lblAluno.Text = "<b>Aluno:</b> " + objAluno.ObterUmAluno(ViewState("Aluno")).Rows(0)("CI01_NM_ALUNO").ToString

    End Sub

    Private Sub CarregarGridDocumentos()
        Dim objDocumento As New Documento

        grdDocumento.DataSource = objDocumento.Pesquisar(ViewState("OrderBy"))
        grdDocumento.DataBind()

        objDocumento = Nothing

        lblRegistros.Text = DirectCast(grdDocumento.DataSource, Data.DataTable).Rows.Count & " Registro(s)"
    End Sub

#End Region

#Region "Eventos de Listagem"
    Protected Sub grdDocumento_RowCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grdDocumento.RowCommand
        If e.CommandName = "" Then
            Response.Redirect(Request.Url.ToString)

        ElseIf e.CommandName = "EXCLUIR" Then
            Excluir(grdDocumento.DataKeys(e.CommandArgument).Item(0))

        ElseIf e.CommandName = "EDITAR" Then
            ViewState("CodigoDocumento") = grdDocumento.DataKeys(e.CommandArgument).Item(0)
            ViewState("Aluno") = grdDocumento.DataKeys(e.CommandArgument).Item(1)
            CarregarDocumento(ViewState("CodigoDocumento"))
            HabilitarSecao(True)
            HabilitarCampos(True)
            Informacao()
            drpAluno.Visible = False
            lblAlunos.Visible = False
        ElseIf e.CommandName = "ENVIAR" Then
            Session("CodigoDocumento") = grdDocumento.DataKeys(e.CommandArgument).Item(0)
            Server.Transfer("frmTesteSessionState.aspx")
        End If
    End Sub

    Private Sub grdDocumento_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles grdDocumento.RowDataBound
        Select Case e.Row.RowType
            Case DataControlRowType.Header

            Case DataControlRowType.DataRow

                Dim lnkExcluirDocumento As New LinkButton
                Dim lnkEditarDocumento As New LinkButton
                Dim lnkEnviarDocumento As New LinkButton

                lnkExcluirDocumento = DirectCast(e.Row.Cells(ColunasGrid_grdDocumento.buttons).FindControl("lnkExcluirDocumento"), LinkButton)
                lnkExcluirDocumento.CommandArgument = e.Row.RowIndex

                lnkEditarDocumento = DirectCast(e.Row.Cells(ColunasGrid_grdDocumento.buttons).FindControl("lnkEditarDocumento"), LinkButton)
                lnkEditarDocumento.CommandArgument = e.Row.RowIndex

                lnkEnviarDocumento = DirectCast(e.Row.Cells(ColunasGrid_grdDocumento.buttons).FindControl("lnkEnviarDocumento"), LinkButton)
                lnkEnviarDocumento.CommandArgument = e.Row.RowIndex

                lnkEditarDocumento = Nothing
                lnkExcluirDocumento = Nothing

        End Select
    End Sub

    Protected Sub btnVoltar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnVoltar.Click
        HabilitarSecao()
    End Sub

    Private Sub btnLocalizar_Click(sender As Object, e As EventArgs) Handles btnLocalizar.Click
        CarregarGridDocumentos()
    End Sub

    Private Sub drpAluno_SelectedIndexChanged(sender As Object, e As EventArgs) Handles drpAluno.SelectedIndexChanged
        If drpAluno.SelectedIndex = 0 Then
            HabilitarCampos()
        Else
            HabilitarCampos(True)
        End If
    End Sub

    Private Sub btnNovo_Click(sender As Object, e As EventArgs) Handles btnNovo.Click
        HabilitarSecao(True)
        LimparCampos()
        CarregarListaAluno()

    End Sub

#End Region
End Class
