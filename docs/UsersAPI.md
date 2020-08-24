# UsersAPI

All URIs are relative to *https://cadastro.orama.com.br/api/contas/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountAutenticacaoAndroidPost**](UsersAPI.md#accountautenticacaoandroidpost) | **POST** /autenticacao/android/ | Autentica um usuário que ainda não é cliente.
[**accountAutenticacaoIosPost**](UsersAPI.md#accountautenticacaoiospost) | **POST** /autenticacao/ios/ | Autentica um usuário que ainda não é cliente.
[**accountAutenticacaoPost**](UsersAPI.md#accountautenticacaopost) | **POST** /autenticacao/ | Autentica um usuário que ainda não é cliente.
[**accountAutenticacaoRedefinirSenhaConfirmarSmsPost**](UsersAPI.md#accountautenticacaoredefinirsenhaconfirmarsmspost) | **POST** /autenticacao/redefinir-senha/confirmar-sms | Confirmação do código para redefinição de senha
[**accountAutenticacaoRedefinirSenhaEnviarSmsPost**](UsersAPI.md#accountautenticacaoredefinirsenhaenviarsmspost) | **POST** /autenticacao/redefinir-senha/enviar-sms | Solicitar envio do código para redefinição de senha via SMS
[**accountAutenticacaoRedefinirSenhaNovaSenhaPost**](UsersAPI.md#accountautenticacaoredefinirsenhanovasenhapost) | **POST** /autenticacao/redefinir-senha/nova-senha | Salvar nova senha
[**accountAutenticacaoRedefinirSenhaPost**](UsersAPI.md#accountautenticacaoredefinirsenhapost) | **POST** /autenticacao/redefinir-senha | Solicitar início da redefinição de senha
[**accountAutenticacaoWebPost**](UsersAPI.md#accountautenticacaowebpost) | **POST** /autenticacao/web/ | Autentica um usuário que ainda não é cliente.
[**accountDocumentoConfirmacaoGet**](UsersAPI.md#accountdocumentoconfirmacaoget) | **GET** /perfil/{cpf}/documento/confirmacao/ | Consulta o status de confirmação do documento que foi submetido
[**accountDocumentoPut**](UsersAPI.md#accountdocumentoput) | **PUT** /perfil/{cpf}/documento/ | Anexa ou atualiza documento para conferencia de autenticidade do perfil.
[**accountIdentificacaoPost**](UsersAPI.md#accountidentificacaopost) | **POST** /identificacao/ | Cria um login para usuário.
[**accountPerfilAprovacaoGet**](UsersAPI.md#accountperfilaprovacaoget) | **GET** /perfil/{cpf}/aprovacao/ | Retorna o estado de aprovação de um perfil
[**accountPerfilAssinaturaEletronicaGet**](UsersAPI.md#accountperfilassinaturaeletronicaget) | **GET** /perfil/{cpf}/assinatura-eletronica/ | Verifica se a assinatura eletronica já foi definida.
[**accountPerfilAssinaturaEletronicaPost**](UsersAPI.md#accountperfilassinaturaeletronicapost) | **POST** /perfil/{cpf}/assinatura-eletronica/ | Realiza o cadastro da assinatura eletrônica do perfil.
[**accountPerfilCelularAutenticacaoConfirmacaoGet**](UsersAPI.md#accountperfilcelularautenticacaoconfirmacaoget) | **GET** /perfil/{cpf}/celular/autenticacao/confirmacao/ | Estado atual de confirmação do celular
[**accountPerfilCelularAutenticacaoPost**](UsersAPI.md#accountperfilcelularautenticacaopost) | **POST** /perfil/{cpf}/celular/autenticacao/ | Gera um código para iniciar o processo de validação do número do celular
[**accountPerfilCelularConfirmacaoPost**](UsersAPI.md#accountperfilcelularconfirmacaopost) | **POST** /perfil/{cpf}/celular/autenticacao/confirmacao/ | Confirma o numero de celular, concluindo a validação
[**accountPerfilEmailAutenticacaoConfirmacaoGet**](UsersAPI.md#accountperfilemailautenticacaoconfirmacaoget) | **GET** /perfil/{cpf}/email/autenticacao/confirmacao/ | Estado atual de confirmação do email
[**accountPerfilEmailAutenticacaoPost**](UsersAPI.md#accountperfilemailautenticacaopost) | **POST** /perfil/{cpf}/email/autenticacao/ | Gera um código para iniciar o processo de validação do email
[**accountPerfilEmailConfirmacaoPost**](UsersAPI.md#accountperfilemailconfirmacaopost) | **POST** /perfil/{cpf}/email/autenticacao/confirmacao/ | Confirma o email, concluindo a validação
[**accountPerfilGet**](UsersAPI.md#accountperfilget) | **GET** /perfil/{cpf}/ | Retorna o perfil de um usuário que ainda não foi transformado em cliente.
[**accountPerfilPendenciaGet**](UsersAPI.md#accountperfilpendenciaget) | **GET** /perfil/{cpf}/pendencia/ | Retorna lista de pendências do perfil caso existam
[**accountPerfilPendenciaSolicitaranalisePost**](UsersAPI.md#accountperfilpendenciasolicitaranalisepost) | **POST** /perfil/{cpf}/pendencia/solicitar-analise/ | Solicita a análise das pendências. Este endpoint deve ser utilizado após o upload dos documentos relacionados as pendências.
[**accountPerfilPost**](UsersAPI.md#accountperfilpost) | **POST** /perfil/{cpf}/ | Submete o perfil de usuário associado a um login para ser criado como cliente.
[**accountPerfilPut**](UsersAPI.md#accountperfilput) | **PUT** /perfil/{cpf}/ | Atualiza perfil para criação de conta.
[**accountPerfilSubmetidoGet**](UsersAPI.md#accountperfilsubmetidoget) | **GET** /perfil/{cpf}/submetido/ | Retorna o estado de submissão de um perfil
[**accountPerfilTermosConfirmacaoGet**](UsersAPI.md#accountperfiltermosconfirmacaoget) | **GET** /perfil/{cpf}/termos/confirmacao/ | Estado atual de confirmação do aceite de termos
[**accountPerfilTermosConfirmacaoPost**](UsersAPI.md#accountperfiltermosconfirmacaopost) | **POST** /perfil/{cpf}/termos/confirmacao/ | Confirma o aceite de termos
[**accountPerfilTermosGet**](UsersAPI.md#accountperfiltermosget) | **GET** /perfil/{cpf}/termos/ | Consulta os termos requeridos para o perfil


# **accountAutenticacaoAndroidPost**
```swift
    open class func accountAutenticacaoAndroidPost(usuarioSenhaObjeto: UsuarioSenhaObjeto, completion: @escaping (_ data: AutenticacaoObjeto?, _ error: Error?) -> Void)
```

Autentica um usuário que ainda não é cliente.

Autentica um usuário que ainda não é cliente, caso o usuário não existe, ou a combinação de usuário e senha ou ainda o usuário já seja cliente retorna um erro.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let usuarioSenhaObjeto = UsuarioSenhaObjeto(usuario: "usuario_example", senha: "senha_example") // UsuarioSenhaObjeto | Dados para autenticação do usuário

// Autentica um usuário que ainda não é cliente.
UsersAPI.accountAutenticacaoAndroidPost(usuarioSenhaObjeto: usuarioSenhaObjeto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usuarioSenhaObjeto** | [**UsuarioSenhaObjeto**](UsuarioSenhaObjeto.md) | Dados para autenticação do usuário | 

### Return type

[**AutenticacaoObjeto**](AutenticacaoObjeto.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountAutenticacaoIosPost**
```swift
    open class func accountAutenticacaoIosPost(usuarioSenhaObjeto: UsuarioSenhaObjeto, completion: @escaping (_ data: AutenticacaoObjeto?, _ error: Error?) -> Void)
```

Autentica um usuário que ainda não é cliente.

Autentica um usuário que ainda não é cliente, caso o usuário não existe, ou a combinação de usuário e senha ou ainda o usuário já seja cliente retorna um erro.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let usuarioSenhaObjeto = UsuarioSenhaObjeto(usuario: "usuario_example", senha: "senha_example") // UsuarioSenhaObjeto | Dados para autenticação do usuário

// Autentica um usuário que ainda não é cliente.
UsersAPI.accountAutenticacaoIosPost(usuarioSenhaObjeto: usuarioSenhaObjeto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usuarioSenhaObjeto** | [**UsuarioSenhaObjeto**](UsuarioSenhaObjeto.md) | Dados para autenticação do usuário | 

### Return type

[**AutenticacaoObjeto**](AutenticacaoObjeto.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountAutenticacaoPost**
```swift
    open class func accountAutenticacaoPost(usuarioSenhaObjeto: UsuarioSenhaObjeto, completion: @escaping (_ data: AutenticacaoObjeto?, _ error: Error?) -> Void)
```

Autentica um usuário que ainda não é cliente.

Autentica um usuário que ainda não é cliente, caso o usuário não existe, ou a combinação de usuário e senha ou ainda o usuário já seja cliente retorna um erro.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let usuarioSenhaObjeto = UsuarioSenhaObjeto(usuario: "usuario_example", senha: "senha_example") // UsuarioSenhaObjeto | Dados para autenticação do usuário

// Autentica um usuário que ainda não é cliente.
UsersAPI.accountAutenticacaoPost(usuarioSenhaObjeto: usuarioSenhaObjeto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usuarioSenhaObjeto** | [**UsuarioSenhaObjeto**](UsuarioSenhaObjeto.md) | Dados para autenticação do usuário | 

### Return type

[**AutenticacaoObjeto**](AutenticacaoObjeto.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountAutenticacaoRedefinirSenhaConfirmarSmsPost**
```swift
    open class func accountAutenticacaoRedefinirSenhaConfirmarSmsPost(confirmacaoCodigoSMS: ConfirmacaoCodigoSMS? = nil, completion: @escaping (_ data: ConfirmacaoCodigoSMS?, _ error: Error?) -> Void)
```

Confirmação do código para redefinição de senha

Confirmação do código para redefinição de senha  - O código recebido via SMS deve ser enviado junto as informações do usuário  - Se o usuário errar o código 3 vezes a solicitação para redefinição de senha será cancelada

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let confirmacaoCodigoSMS = ConfirmacaoCodigoSMS(cpf: "cpf_example", email: "email_example", codigo: "codigo_example") // ConfirmacaoCodigoSMS |  (optional)

// Confirmação do código para redefinição de senha
UsersAPI.accountAutenticacaoRedefinirSenhaConfirmarSmsPost(confirmacaoCodigoSMS: confirmacaoCodigoSMS) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmacaoCodigoSMS** | [**ConfirmacaoCodigoSMS**](ConfirmacaoCodigoSMS.md) |  | [optional] 

### Return type

[**ConfirmacaoCodigoSMS**](ConfirmacaoCodigoSMS.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountAutenticacaoRedefinirSenhaEnviarSmsPost**
```swift
    open class func accountAutenticacaoRedefinirSenhaEnviarSmsPost(loginRedefinicaoSenha: LoginRedefinicaoSenha? = nil, completion: @escaping (_ data: RetornoSolicitacaoRedefinicaoSenha?, _ error: Error?) -> Void)
```

Solicitar envio do código para redefinição de senha via SMS

Solicitar código de redefinição de senha  - Após confirmar a data de nascimento pode ser solicitado código via SMS para redefinir a senha  - O código SMS expira após 15 minutos

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let loginRedefinicaoSenha = LoginRedefinicaoSenha(cpf: "cpf_example", email: "email_example") // LoginRedefinicaoSenha | Dados para criação do login (optional)

// Solicitar envio do código para redefinição de senha via SMS
UsersAPI.accountAutenticacaoRedefinirSenhaEnviarSmsPost(loginRedefinicaoSenha: loginRedefinicaoSenha) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRedefinicaoSenha** | [**LoginRedefinicaoSenha**](LoginRedefinicaoSenha.md) | Dados para criação do login | [optional] 

### Return type

[**RetornoSolicitacaoRedefinicaoSenha**](RetornoSolicitacaoRedefinicaoSenha.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountAutenticacaoRedefinirSenhaNovaSenhaPost**
```swift
    open class func accountAutenticacaoRedefinirSenhaNovaSenhaPost(envioNovaSenha: EnvioNovaSenha? = nil, completion: @escaping (_ data: RetornoNovaSenha?, _ error: Error?) -> Void)
```

Salvar nova senha

Salvar nova senha  - A alteração só será confirmada caso o usuário tenha informado o código recebido via SMS

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let envioNovaSenha = EnvioNovaSenha(senha: "senha_example") // EnvioNovaSenha | Dados para criação do login (optional)

// Salvar nova senha
UsersAPI.accountAutenticacaoRedefinirSenhaNovaSenhaPost(envioNovaSenha: envioNovaSenha) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **envioNovaSenha** | [**EnvioNovaSenha**](EnvioNovaSenha.md) | Dados para criação do login | [optional] 

### Return type

[**RetornoNovaSenha**](RetornoNovaSenha.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountAutenticacaoRedefinirSenhaPost**
```swift
    open class func accountAutenticacaoRedefinirSenhaPost(solicitacaoRedefinicaoSenha: SolicitacaoRedefinicaoSenha? = nil, completion: @escaping (_ data: RetornoSolicitacaoRedefinicaoSenha?, _ error: Error?) -> Void)
```

Solicitar início da redefinição de senha

Solicitar início da redefinição de senha  - Após solicitar a redefinição de senha um código será enviado através de SMS  - O código SMS expira após 15 minutos

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let solicitacaoRedefinicaoSenha = SolicitacaoRedefinicaoSenha(cpf: "cpf_example", email: "email_example", dataNascimento: Date()) // SolicitacaoRedefinicaoSenha | Dados para criação do login (optional)

// Solicitar início da redefinição de senha
UsersAPI.accountAutenticacaoRedefinirSenhaPost(solicitacaoRedefinicaoSenha: solicitacaoRedefinicaoSenha) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solicitacaoRedefinicaoSenha** | [**SolicitacaoRedefinicaoSenha**](SolicitacaoRedefinicaoSenha.md) | Dados para criação do login | [optional] 

### Return type

[**RetornoSolicitacaoRedefinicaoSenha**](RetornoSolicitacaoRedefinicaoSenha.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountAutenticacaoWebPost**
```swift
    open class func accountAutenticacaoWebPost(usuarioSenhaObjeto: UsuarioSenhaObjeto, completion: @escaping (_ data: AutenticacaoObjeto?, _ error: Error?) -> Void)
```

Autentica um usuário que ainda não é cliente.

Autentica um usuário que ainda não é cliente, caso o usuário não existe, ou a combinação de usuário e senha ou ainda o usuário já seja cliente retorna um erro.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let usuarioSenhaObjeto = UsuarioSenhaObjeto(usuario: "usuario_example", senha: "senha_example") // UsuarioSenhaObjeto | Dados para autenticação do usuário

// Autentica um usuário que ainda não é cliente.
UsersAPI.accountAutenticacaoWebPost(usuarioSenhaObjeto: usuarioSenhaObjeto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usuarioSenhaObjeto** | [**UsuarioSenhaObjeto**](UsuarioSenhaObjeto.md) | Dados para autenticação do usuário | 

### Return type

[**AutenticacaoObjeto**](AutenticacaoObjeto.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountDocumentoConfirmacaoGet**
```swift
    open class func accountDocumentoConfirmacaoGet(cpf: String, tipoDocumento: TipoDocumento_accountDocumentoConfirmacaoGet, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Consulta o status de confirmação do documento que foi submetido

Consulta o status de confirmação do documento que foi submetido

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil
let tipoDocumento = "tipoDocumento_example" // String | Tipo do documento

// Consulta o status de confirmação do documento que foi submetido
UsersAPI.accountDocumentoConfirmacaoGet(cpf: cpf, tipoDocumento: tipoDocumento) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 
 **tipoDocumento** | **String** | Tipo do documento | 

### Return type

Void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountDocumentoPut**
```swift
    open class func accountDocumentoPut(cpf: String, tipoDocumento: TipoDocumento_accountDocumentoPut, filename: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Anexa ou atualiza documento para conferencia de autenticidade do perfil.

Anexa ou atualiza documento que será usado no processo conferencia de autenticidade do perfil. É recomendado fazer o upload de documentos para comprovação de identidade. Caso o perfil tiver conta bancária conjunta ou a conta seja do banco Itaú é recomendado o upload do documento 'Comprovante Bancário'.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil
let tipoDocumento = "tipoDocumento_example" // String | Tipo do documento
let filename = URL(string: "https://example.com")! // URL | Arquivo binário que será enviado. O formato deve ser PDF, PNG ou JPG

// Anexa ou atualiza documento para conferencia de autenticidade do perfil.
UsersAPI.accountDocumentoPut(cpf: cpf, tipoDocumento: tipoDocumento, filename: filename) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 
 **tipoDocumento** | **String** | Tipo do documento | 
 **filename** | **URL** | Arquivo binário que será enviado. O formato deve ser PDF, PNG ou JPG | 

### Return type

Void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountIdentificacaoPost**
```swift
    open class func accountIdentificacaoPost(loginSenhaObjeto: LoginSenhaObjeto, completion: @escaping (_ data: LoginCriado?, _ error: Error?) -> Void)
```

Cria um login para usuário.

Cria um novo login que será usado para acesso ao sistema.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let loginSenhaObjeto = LoginSenhaObjeto(nome: "nome_example", celular: "celular_example", cpf: "cpf_example", email: "email_example", dataNascimento: Date(), senha: "senha_example") // LoginSenhaObjeto | Dados para criação do login

// Cria um login para usuário.
UsersAPI.accountIdentificacaoPost(loginSenhaObjeto: loginSenhaObjeto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginSenhaObjeto** | [**LoginSenhaObjeto**](LoginSenhaObjeto.md) | Dados para criação do login | 

### Return type

[**LoginCriado**](LoginCriado.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilAprovacaoGet**
```swift
    open class func accountPerfilAprovacaoGet(cpf: String, completion: @escaping (_ data: Aprovacao?, _ error: Error?) -> Void)
```

Retorna o estado de aprovação de um perfil

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Retorna o estado de aprovação de um perfil
UsersAPI.accountPerfilAprovacaoGet(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

[**Aprovacao**](Aprovacao.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilAssinaturaEletronicaGet**
```swift
    open class func accountPerfilAssinaturaEletronicaGet(cpf: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Verifica se a assinatura eletronica já foi definida.

Verifica se a assinatura eletronica já foi definida.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Verifica se a assinatura eletronica já foi definida.
UsersAPI.accountPerfilAssinaturaEletronicaGet(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

Void (empty response body)

### Authorization

[Api-Key](../README.md#Api-Key), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilAssinaturaEletronicaPost**
```swift
    open class func accountPerfilAssinaturaEletronicaPost(cpf: String, assinaturaEletronica: AssinaturaEletronica, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Realiza o cadastro da assinatura eletrônica do perfil.

Cadastra a assinatura eletrônica do perfil, realiza validação da assinatura eletronica.  A assinatura deve respeitar as seguintes condições: - Conter de 6 a 15 dígitos - Conter apenas letras e números - Não deve conter 6 ou mais dígitos sequênciais, ex.: 'abcdef', '123456' - Se a assinatura contém entre 6 e 7 dígitos não deve repetir 3 dígitos seguidos, ex.: '111', 'aaa' - Se a assinatura contém entre 8 e 12 dígitos não deve repetir 4 dígitos seguidos, ex.: '1111', 'aaaa' - Se a assinatura contém entre 13 e 14 dígitos não deve repetir 5 dígitos seguidos, ex.: '11111', 'aaaaa' - Se a assinatura contém 15 dígitos não deve repetir 6 dígitos seguidos, ex.: '111111', 'aaaaaa' - A assinatura não deve conter nenhuma das palavras a seguir:      'select', 'update', 'insert', 'delete', 'drop', 'truncate', 'waitfor', 'delay', 'where', 'from', 'having', 'script', 'applet', 'sha1'

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil
let assinaturaEletronica = AssinaturaEletronica(assinaturaEletronica: "assinaturaEletronica_example") // AssinaturaEletronica | Dados para criação da assinatura eletrônica

// Realiza o cadastro da assinatura eletrônica do perfil.
UsersAPI.accountPerfilAssinaturaEletronicaPost(cpf: cpf, assinaturaEletronica: assinaturaEletronica) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 
 **assinaturaEletronica** | [**AssinaturaEletronica**](AssinaturaEletronica.md) | Dados para criação da assinatura eletrônica | 

### Return type

Void (empty response body)

### Authorization

[Api-Key](../README.md#Api-Key), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilCelularAutenticacaoConfirmacaoGet**
```swift
    open class func accountPerfilCelularAutenticacaoConfirmacaoGet(cpf: String, completion: @escaping (_ data: Confirmado?, _ error: Error?) -> Void)
```

Estado atual de confirmação do celular

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Estado atual de confirmação do celular
UsersAPI.accountPerfilCelularAutenticacaoConfirmacaoGet(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

[**Confirmado**](Confirmado.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilCelularAutenticacaoPost**
```swift
    open class func accountPerfilCelularAutenticacaoPost(cpf: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Gera um código para iniciar o processo de validação do número do celular

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Gera um código para iniciar o processo de validação do número do celular
UsersAPI.accountPerfilCelularAutenticacaoPost(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

Void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilCelularConfirmacaoPost**
```swift
    open class func accountPerfilCelularConfirmacaoPost(cpf: String, codigo: String, completion: @escaping (_ data: Confirmado?, _ error: Error?) -> Void)
```

Confirma o numero de celular, concluindo a validação

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil
let codigo = "codigo_example" // String | Código de validação para confirmar o número de celular

// Confirma o numero de celular, concluindo a validação
UsersAPI.accountPerfilCelularConfirmacaoPost(cpf: cpf, codigo: codigo) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 
 **codigo** | **String** | Código de validação para confirmar o número de celular | 

### Return type

[**Confirmado**](Confirmado.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilEmailAutenticacaoConfirmacaoGet**
```swift
    open class func accountPerfilEmailAutenticacaoConfirmacaoGet(cpf: String, completion: @escaping (_ data: Confirmado?, _ error: Error?) -> Void)
```

Estado atual de confirmação do email

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Estado atual de confirmação do email
UsersAPI.accountPerfilEmailAutenticacaoConfirmacaoGet(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

[**Confirmado**](Confirmado.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilEmailAutenticacaoPost**
```swift
    open class func accountPerfilEmailAutenticacaoPost(cpf: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Gera um código para iniciar o processo de validação do email

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Gera um código para iniciar o processo de validação do email
UsersAPI.accountPerfilEmailAutenticacaoPost(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

Void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilEmailConfirmacaoPost**
```swift
    open class func accountPerfilEmailConfirmacaoPost(cpf: String, codigo: String, completion: @escaping (_ data: Confirmado?, _ error: Error?) -> Void)
```

Confirma o email, concluindo a validação

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil
let codigo = "codigo_example" // String | Código de validação para confirmar o email

// Confirma o email, concluindo a validação
UsersAPI.accountPerfilEmailConfirmacaoPost(cpf: cpf, codigo: codigo) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 
 **codigo** | **String** | Código de validação para confirmar o email | 

### Return type

[**Confirmado**](Confirmado.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilGet**
```swift
    open class func accountPerfilGet(cpf: String, campos: String? = nil, completion: @escaping (_ data: PerfilUsuario?, _ error: Error?) -> Void)
```

Retorna o perfil de um usuário que ainda não foi transformado em cliente.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil
let campos = "campos_example" // String | Lista de campos para ser inclusivamente filtrados (optional)

// Retorna o perfil de um usuário que ainda não foi transformado em cliente.
UsersAPI.accountPerfilGet(cpf: cpf, campos: campos) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 
 **campos** | **String** | Lista de campos para ser inclusivamente filtrados | [optional] 

### Return type

[**PerfilUsuario**](PerfilUsuario.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilPendenciaGet**
```swift
    open class func accountPerfilPendenciaGet(cpf: String, completion: @escaping (_ data: [Pendencia]?, _ error: Error?) -> Void)
```

Retorna lista de pendências do perfil caso existam

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Retorna lista de pendências do perfil caso existam
UsersAPI.accountPerfilPendenciaGet(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

[**[Pendencia]**](Pendencia.md)

### Authorization

[Api-Key](../README.md#Api-Key), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilPendenciaSolicitaranalisePost**
```swift
    open class func accountPerfilPendenciaSolicitaranalisePost(cpf: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Solicita a análise das pendências. Este endpoint deve ser utilizado após o upload dos documentos relacionados as pendências.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Solicita a análise das pendências. Este endpoint deve ser utilizado após o upload dos documentos relacionados as pendências.
UsersAPI.accountPerfilPendenciaSolicitaranalisePost(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

Void (empty response body)

### Authorization

[Api-Key](../README.md#Api-Key), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilPost**
```swift
    open class func accountPerfilPost(cpf: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Submete o perfil de usuário associado a um login para ser criado como cliente.

Submete o perfil de usuário associado a um login para ser criado como cliente. A assinatura eletrônica é obrigatória para a submissão do usuário, ver endpoint /perfil/{cpf}/assinatura-eletronica/. É necessário validar ambos o número do celular e o e-mail para que a submissão seja aceita, veja os endpoints /perfil/{cpf}/celular/autenticacao/ e /perfil/{cpf}/email/autenticacao/. Após submissão deste POST, o perfil não poderá mais ser alterado. Para alterar ou inserir informações no perfil antes de submeter o perfil o método PUT deve ser utilizado.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Submete o perfil de usuário associado a um login para ser criado como cliente.
UsersAPI.accountPerfilPost(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

Void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilPut**
```swift
    open class func accountPerfilPut(cpf: String, perfilUsuario: PerfilUsuario, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Atualiza perfil para criação de conta.

Atualiza um perfil de usuário associado a um login para o processo de criação de um usuário. Cada chamada modifica o perfil. Quando o perfil estiver pronto para ser submetido para criação de conta, basta enviar um POST.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil
let perfilUsuario = PerfilUsuario(usPerson: true, politicamenteExposto: true, investidorQualificado: true, nacionalidade: "nacionalidade_example", ufNascimento: "ufNascimento_example", cidadeNascimento: "cidadeNascimento_example", paisNascimento: "paisNascimento_example", sexo: "sexo_example", estadoCivil: "estadoCivil_example", nomeConjuge: "nomeConjuge_example", nomeMae: "nomeMae_example", nomePai: "nomePai_example", paiDesconhecido: false, login: LoginObjeto(nome: "nome_example", celular: "celular_example", cpf: "cpf_example", email: "email_example", dataNascimento: Date()), documento: [Documento(tipoDocumento: "tipoDocumento_example", numeroDocumento: "numeroDocumento_example", orgaoExpedidor: "orgaoExpedidor_example", ufEmissao: "ufEmissao_example", dataEmissao: Date(), dataValidade: Date(), codigoSegurancaCNH: "codigoSegurancaCNH_example")], profissao: DadosProfissionais(profissao: "profissao_example", empresa: "empresa_example", empregado: true), endereco: Endereco(cep: "cep_example", logradouro: "logradouro_example", bairro: "bairro_example", uf: "uf_example", cidade: "cidade_example", numero: "numero_example", complemento: "complemento_example"), patrimonio: DadosPatrimonial(faixaAplicacoes: "faixaAplicacoes_example", valorAplicacoes: 123, faixaRendimentos: "faixaRendimentos_example", valorOutrosBens: 123), contaBancaria: [ContaBancaria(banco: "banco_example", tipo: "tipo_example", agencia: "agencia_example", conta: "conta_example", digito: "digito_example", contaConjunta: true, segundoParticipanteTitular: true, cpfCotitular: "cpfCotitular_example")], frontEnd: FrontEndStep(step: 123, platform: "platform_example")) // PerfilUsuario | Dados para criação ou atualização do perfil

// Atualiza perfil para criação de conta.
UsersAPI.accountPerfilPut(cpf: cpf, perfilUsuario: perfilUsuario) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 
 **perfilUsuario** | [**PerfilUsuario**](PerfilUsuario.md) | Dados para criação ou atualização do perfil | 

### Return type

Void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilSubmetidoGet**
```swift
    open class func accountPerfilSubmetidoGet(cpf: String, completion: @escaping (_ data: Submetido?, _ error: Error?) -> Void)
```

Retorna o estado de submissão de um perfil

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Retorna o estado de submissão de um perfil
UsersAPI.accountPerfilSubmetidoGet(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

[**Submetido**](Submetido.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilTermosConfirmacaoGet**
```swift
    open class func accountPerfilTermosConfirmacaoGet(cpf: String, completion: @escaping (_ data: Confirmado?, _ error: Error?) -> Void)
```

Estado atual de confirmação do aceite de termos

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Estado atual de confirmação do aceite de termos
UsersAPI.accountPerfilTermosConfirmacaoGet(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

[**Confirmado**](Confirmado.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilTermosConfirmacaoPost**
```swift
    open class func accountPerfilTermosConfirmacaoPost(cpf: String, completion: @escaping (_ data: Confirmado?, _ error: Error?) -> Void)
```

Confirma o aceite de termos

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Confirma o aceite de termos
UsersAPI.accountPerfilTermosConfirmacaoPost(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

[**Confirmado**](Confirmado.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPerfilTermosGet**
```swift
    open class func accountPerfilTermosGet(cpf: String, completion: @escaping (_ data: [Termos]?, _ error: Error?) -> Void)
```

Consulta os termos requeridos para o perfil

Consulta os termos exigidos para o perfil

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil

// Consulta os termos requeridos para o perfil
UsersAPI.accountPerfilTermosGet(cpf: cpf) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cpf** | **String** | CPF do perfil | 

### Return type

[**[Termos]**](Termos.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

