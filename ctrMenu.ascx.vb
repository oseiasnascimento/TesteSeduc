
Partial Class ctrMenu
    Inherits System.Web.UI.UserControl
    Dim blnParaTestar As Boolean = CBool(System.Configuration.ConfigurationManager.AppSettings("Teste"))

    Protected Sub NewExtranet_ctrMenu_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            'DESNVOLVIMENTO NECESSÁRIO PARA O MENU
        End If

    End Sub

End Class
