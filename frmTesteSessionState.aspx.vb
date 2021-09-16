
Partial Class frmTesteSessionState
    Inherits System.Web.UI.Page

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Validacao.Outros(txtCPF_Pai, False, "CPF",, Validacao.eFormato.CPF)
        Validacao.Outros(txtCPF_Mae, False, "CPF",, Validacao.eFormato.CPF)
        Validacao.Outros(txtTelefoneResp, False, "CPF",, Validacao.eFormato.CELULAR)

        CarregarDocumento(Session("CodigoDocumento"))

    End Sub


    Private Sub CarregarDocumento(ByVal Codigo As Integer)
        Dim objDocumento As New Documento(Codigo)
        Dim dat, dat2 As Date

        With objDocumento

            dat = Convert.ToDateTime(.EmissaoAluno)
            dat2 = Convert.ToDateTime(.NascimentoAluno)

            txtNomeMae.Text = .NomeMae
            txtNomePai.Text = .NomePai
            txtCPF_Mae.Text = .CPF_MAE
            txtCPF_Pai.Text = .CPF_PAI
            txtTelefoneResp.Text = .TelefoneResponsavel
            txtRG.Text = .RgAluno
            txtDateEmissaoRG.Text = dat.ToString("yyyy-MM-dd")
            txtDataNascimento.Text = dat2.ToString("yyyy-MM-dd")
            drpSexo.SelectedValue = .SexoAluno

        End With

        objDocumento = Nothing

    End Sub

End Class
