Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Text


Public Class Documento
    Private CI02_ID_DOCUMENTOS As Integer
    Private CI01_ID_ALUNO As Integer
    Private CI02_NM_MAE As String
    Private CI02_NU_CPF_MAE As String
    Private CI02_NM_PAI As String
    Private CI02_NU_CPF_PAI As String
    Private CI02_NU_TELEFONE_RESPONSAVEL As String
    Private CI02_NU_RG_ALUNO As String
    Private CI02_DT_EMISSAO_RG_ALUNO As String
    Private CI02_DT_NASCIMENTO_ALUNO As String
    Private CI02_TP_SEXO_ALUNO As String
    Private CI02_DH_CADASTRO As String


    Public Property CodigoDocumento() As Integer
        Get
            Return CI02_ID_DOCUMENTOS
        End Get
        Set(ByVal Value As Integer)
            CI02_ID_DOCUMENTOS = Value
        End Set
    End Property
    Public Property CodigoAluno() As Integer
        Get
            Return CI01_ID_ALUNO
        End Get
        Set(ByVal Value As Integer)
            CI01_ID_ALUNO = Value
        End Set
    End Property
    Public Property NomeMae() As String
        Get
            Return CI02_NM_MAE
        End Get
        Set(ByVal Value As String)
            CI02_NM_MAE = Value
        End Set
    End Property
    Public Property CPF_MAE() As String
        Get
            Return CI02_NU_CPF_MAE
        End Get
        Set(ByVal Value As String)
            CI02_NU_CPF_MAE = Value
        End Set
    End Property
    Public Property NomePai() As String
        Get
            Return CI02_NM_PAI
        End Get
        Set(ByVal Value As String)
            CI02_NM_PAI = Value
        End Set
    End Property
    Public Property CPF_PAI() As String
        Get
            Return CI02_NU_CPF_PAI
        End Get
        Set(ByVal Value As String)
            CI02_NU_CPF_PAI = Value
        End Set
    End Property
    Public Property TelefoneResponsavel() As String
        Get
            Return CI02_NU_TELEFONE_RESPONSAVEL
        End Get
        Set(ByVal Value As String)
            CI02_NU_TELEFONE_RESPONSAVEL = Value
        End Set
    End Property
    Public Property RgAluno() As String
        Get
            Return CI02_NU_RG_ALUNO
        End Get
        Set(ByVal Value As String)
            CI02_NU_RG_ALUNO = Value
        End Set
    End Property
    Public Property EmissaoAluno() As String
        Get
            Return CI02_DT_EMISSAO_RG_ALUNO
        End Get
        Set(ByVal Value As String)
            CI02_DT_EMISSAO_RG_ALUNO = Value
        End Set
    End Property
    Public Property NascimentoAluno() As String
        Get
            Return CI02_DT_NASCIMENTO_ALUNO
        End Get
        Set(ByVal Value As String)
            CI02_DT_NASCIMENTO_ALUNO = Value
        End Set
    End Property
    Public Property SexoAluno() As String
        Get
            Return CI02_TP_SEXO_ALUNO
        End Get
        Set(ByVal Value As String)
            CI02_TP_SEXO_ALUNO = Value
        End Set
    End Property
    Public Property DH_Cadastro() As String
        Get
            Return CI02_DH_CADASTRO
        End Get
        Set(ByVal Value As String)
            CI02_DH_CADASTRO = Value
        End Set
    End Property

    Public Sub New(Optional ByVal CodigoDocumento As Integer = 0)
        If CodigoDocumento > 0 Then
            Obter(CodigoDocumento)
        End If
    End Sub

    Public Sub Salvar()
        Dim cnn As New Conexao
        Dim dt As DataTable
        Dim dr As DataRow
        Dim strSQL As New StringBuilder

        strSQL.Append(" select * ")
        strSQL.Append(" from CI02_DOCUMENTOS")
        strSQL.Append(" where CI01_ID_ALUNO = " & CodigoAluno)

        dt = cnn.EditarDataTable(strSQL.ToString)

        If dt.Rows.Count = 0 Then
            dr = dt.NewRow
        Else
            dr = dt.Rows(0)
        End If

        dr("CI02_ID_DOCUMENTOS") = ProBanco(CI02_ID_DOCUMENTOS, eTipoValor.CHAVE)
        dr("CI01_ID_ALUNO") = ProBanco(CI01_ID_ALUNO, eTipoValor.NUMERO_INTEIRO)
        dr("CI02_NM_MAE") = ProBanco(CI02_NM_MAE, eTipoValor.TEXTO)
        dr("CI02_NU_CPF_MAE") = ProBanco(CI02_NU_CPF_MAE, eTipoValor.TEXTO_LIVRE)
        dr("CI02_NM_PAI") = ProBanco(CI02_NM_PAI, eTipoValor.TEXTO)
        dr("CI02_NU_CPF_PAI") = ProBanco(CI02_NU_CPF_PAI, eTipoValor.TEXTO_LIVRE)
        dr("CI02_NU_TELEFONE_RESPONSAVEL") = ProBanco(CI02_NU_TELEFONE_RESPONSAVEL, eTipoValor.TEXTO_LIVRE)
        dr("CI02_NU_RG_ALUNO") = ProBanco(CI02_NU_RG_ALUNO, eTipoValor.TEXTO)
        dr("CI02_DT_EMISSAO_RG_ALUNO") = ProBanco(CI02_DT_EMISSAO_RG_ALUNO, eTipoValor.DATA)
        dr("CI02_DT_NASCIMENTO_ALUNO") = ProBanco(CI02_DT_NASCIMENTO_ALUNO, eTipoValor.DATA)
        dr("CI02_TP_SEXO_ALUNO") = ProBanco(CI02_TP_SEXO_ALUNO, eTipoValor.TEXTO)
        dr("CI02_DH_CADASTRO") = ProBanco(CI02_DH_CADASTRO, eTipoValor.DATA_COMPLETA)

        cnn.SalvarDataTable(dr)

        dt.Dispose()
        dt = Nothing

        cnn = Nothing
    End Sub

    Public Sub Obter(ByVal Codigo As Integer)
        Dim cnn As New Conexao
        Dim dt As DataTable
        Dim dr As DataRow
        Dim strSQL As New StringBuilder

        strSQL.Append(" select * ")
        strSQL.Append(" from CI02_DOCUMENTOS")
        strSQL.Append(" where CI02_ID_DOCUMENTOS = " & Codigo)

        dt = cnn.AbrirDataTable(strSQL.ToString)

        If dt.Rows.Count > 0 Then
            dr = dt.Rows(0)

            CI02_ID_DOCUMENTOS = DoBanco(dr("CI02_ID_DOCUMENTOS"), eTipoValor.CHAVE)
            CI01_ID_ALUNO = DoBanco(dr("CI01_ID_ALUNO"), eTipoValor.TEXTO_LIVRE)
            CI02_NM_MAE = DoBanco(dr("CI02_NM_MAE"), eTipoValor.TEXTO)
            CI02_NU_CPF_MAE = DoBanco(dr("CI02_NU_CPF_MAE"), eTipoValor.TEXTO_LIVRE)
            CI02_NM_PAI = DoBanco(dr("CI02_NM_PAI"), eTipoValor.TEXTO)
            CI02_NU_CPF_PAI = DoBanco(dr("CI02_NU_CPF_PAI"), eTipoValor.TEXTO_LIVRE)
            CI02_NU_TELEFONE_RESPONSAVEL = DoBanco(dr("CI02_NU_TELEFONE_RESPONSAVEL"), eTipoValor.TEXTO_LIVRE)
            CI02_NU_RG_ALUNO = DoBanco(dr("CI02_NU_RG_ALUNO"), eTipoValor.TEXTO)
            CI02_DT_EMISSAO_RG_ALUNO = DoBanco(dr("CI02_DT_EMISSAO_RG_ALUNO"), eTipoValor.DATA)
            CI02_DT_NASCIMENTO_ALUNO = DoBanco(dr("CI02_DT_NASCIMENTO_ALUNO"), eTipoValor.DATA)
            CI02_TP_SEXO_ALUNO = DoBanco(dr("CI02_TP_SEXO_ALUNO"), eTipoValor.TEXTO)
            CI02_DH_CADASTRO = DoBanco(dr("CI02_DH_CADASTRO"), eTipoValor.DATA_COMPLETA)
        End If

        cnn = Nothing

    End Sub

    Public Function Pesquisar(Optional ByVal Sort As String = "",
                              Optional ByVal CodigoAluno As Integer = 0,
                              Optional ByVal NomeMae As String = "",
                              Optional ByVal CPF_Mae As String = "",
                              Optional ByVal NomePai As String = "",
                              Optional ByVal CPF_Pai As String = "",
                              Optional ByVal TelefoneResposavel As String = "",
                              Optional ByVal RgAluno As String = "",
                              Optional ByVal EmissaoRgAluno As String = "",
                              Optional ByVal NascimentoAluno As String = "",
                              Optional ByVal SexoAluno As String = "") As DataTable
        Dim cnn As New Conexao
        Dim strSQL As New StringBuilder

        strSQL.Append(" Select * ")
        strSQL.Append(" from CI02_DOCUMENTOS")
        strSQL.Append(" where CI01_ID_ALUNO Is Not null")

        If CodigoAluno > 0 Then
            strSQL.Append(" And CI01_ID_ALUNO = " & CodigoAluno)
        End If

        If NomeMae <> "" Then
            strSQL.Append(" And upper(CI02_NM_MAE) Like '%" & NomeMae.ToUpper & "%'")
        End If

        If CPF_Mae <> "" Then
            strSQL.Append(" and upper(CI02_NU_CPF_MAE) like '%" & CPF_Mae.ToUpper & "%'")
        End If

        If NomePai <> "" Then
            strSQL.Append(" and upper(CI02_NM_PAI) like '%" & NomePai.ToUpper & "%'")
        End If

        If CPF_Pai <> "" Then
            strSQL.Append(" and upper(CI02_NU_CPF_PAI) like '%" & CPF_Pai.ToUpper & "%'")
        End If

        If TelefoneResposavel <> "" Then
            strSQL.Append(" and upper(CI02_NU_TELEFONE_RESPONSAVEL) like '%" & TelefoneResposavel.ToUpper & "%'")
        End If

        If RgAluno <> "" Then
            strSQL.Append(" and upper(CI02_NU_RG_ALUNO) like '%" & RgAluno.ToUpper & "%'")
        End If

        If EmissaoRgAluno <> "" Then
            strSQL.Append(" and upper(CI02_DT_EMISSAO_RG_ALUNO) like '%" & EmissaoRgAluno.ToUpper & "%'")
        End If

        If NascimentoAluno <> "" Then
            strSQL.Append(" and upper(CI02_DT_NASCIMENTO_ALUNO) like '%" & NascimentoAluno.ToUpper & "%'")
        End If

        If SexoAluno <> "" Then
            strSQL.Append(" and upper(CI02_TP_SEXO_ALUNO) like '%" & SexoAluno.ToUpper & "%'")
        End If

        strSQL.Append(" Order By " & IIf(Sort = "", "CI01_ID_ALUNO", Sort))

        Return cnn.AbrirDataTable(strSQL.ToString)
    End Function

    Public Function Excluir(ByVal Codigo As Integer) As Integer
        Dim cnn As New Conexao
        Dim strSQL As New StringBuilder
        Dim LinhasAfetadas As Integer

        strSQL.Append(" delete ")
        strSQL.Append(" from CI02_DOCUMENTOS")
        strSQL.Append(" where CI02_ID_DOCUMENTOS = " & Codigo)

        LinhasAfetadas = cnn.ExecutarSQL(strSQL.ToString)

        '
        cnn = Nothing

        Return LinhasAfetadas
    End Function

End Class
