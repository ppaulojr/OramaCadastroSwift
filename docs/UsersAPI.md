# UsersAPI

All URIs are relative to *https://cadastro.orama.com.br/api/contas/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountAutenticacaoPost**](UsersAPI.md#accountautenticacaopost) | **POST** /autenticacao/ | Autentica um usuário que ainda não é cliente.
[**accountDocumentoConfirmacaoGet**](UsersAPI.md#accountdocumentoconfirmacaoget) | **GET** /perfil/{cpf}/documento/confirmacao/ | Consulta o status de confirmação do documento que foi submetido
[**accountDocumentoPut**](UsersAPI.md#accountdocumentoput) | **PUT** /perfil/{cpf}/documento/ | Anexa ou atualiza documento para conferencia de autenticidade do perfil.
[**accountIdentificacaoPost**](UsersAPI.md#accountidentificacaopost) | **POST** /identificacao/ | Cria um login para usuário.
[**accountPerfilAprovacaoGet**](UsersAPI.md#accountperfilaprovacaoget) | **GET** /perfil/{cpf}/aprovacao/ | Retorna o estado de aprovação de um perfil
[**accountPerfilCelularAutenticacaoConfirmacaoGet**](UsersAPI.md#accountperfilcelularautenticacaoconfirmacaoget) | **GET** /perfil/{cpf}/celular/autenticacao/confirmacao/ | Estado atual de confirmação do celular
[**accountPerfilCelularAutenticacaoPost**](UsersAPI.md#accountperfilcelularautenticacaopost) | **POST** /perfil/{cpf}/celular/autenticacao/ | Gera um código para iniciar o processo de validação do número do celular
[**accountPerfilCelularConfirmacaoPost**](UsersAPI.md#accountperfilcelularconfirmacaopost) | **POST** /perfil/{cpf}/celular/autenticacao/confirmacao/ | Confirma o numero de celular, concluindo a validação
[**accountPerfilEmailAutenticacaoConfirmacaoGet**](UsersAPI.md#accountperfilemailautenticacaoconfirmacaoget) | **GET** /perfil/{cpf}/email/autenticacao/confirmacao/ | Estado atual de confirmação do email
[**accountPerfilEmailAutenticacaoPost**](UsersAPI.md#accountperfilemailautenticacaopost) | **POST** /perfil/{cpf}/email/autenticacao/ | Gera um código para iniciar o processo de validação do email
[**accountPerfilEmailConfirmacaoPost**](UsersAPI.md#accountperfilemailconfirmacaopost) | **POST** /perfil/{cpf}/email/autenticacao/confirmacao/ | Confirma o email, concluindo a validação
[**accountPerfilGet**](UsersAPI.md#accountperfilget) | **GET** /perfil/{cpf}/ | Retorna o perfil de um usuário que ainda não foi transformado em cliente.
[**accountPerfilPost**](UsersAPI.md#accountperfilpost) | **POST** /perfil/{cpf}/ | Submete o perfil de usuário associado a um login para ser criado como cliente.
[**accountPerfilPut**](UsersAPI.md#accountperfilput) | **PUT** /perfil/{cpf}/ | Atualiza perfil para criação de conta.
[**accountPerfilSubmetidoGet**](UsersAPI.md#accountperfilsubmetidoget) | **GET** /perfil/{cpf}/submetido/ | Retorna o estado de submissão de um perfil


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
    open class func accountDocumentoPut(cpf: String, tipoDocumento: TipoDocumento_accountDocumentoPut, name: String, filename: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Anexa ou atualiza documento para conferencia de autenticidade do perfil.

Anexa ou atualiza documento que será usado no processo conferencia de autenticidade do perfil. É recomendado fazer o upload de documentos para comprovação de identidade. Caso o perfil tiver conta bancária conjunta ou a conta seja do banco Itaú é recomendado o upload do documento 'Comprovante Bancário'.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let cpf = "cpf_example" // String | CPF do perfil
let tipoDocumento = "tipoDocumento_example" // String | Tipo do documento
let name = "name_example" // String | Nome do atributo codificado em form-data 'image'
let filename = URL(string: "https://example.com")! // URL | Arquivo binário que será enviado. O formato deve ser PDF, PNG ou JPG

// Anexa ou atualiza documento para conferencia de autenticidade do perfil.
UsersAPI.accountDocumentoPut(cpf: cpf, tipoDocumento: tipoDocumento, name: name, filename: filename) { (response, error) in
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
 **name** | **String** | Nome do atributo codificado em form-data &#39;image&#39; | 
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

No authorization required

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

# **accountPerfilPost**
```swift
    open class func accountPerfilPost(cpf: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Submete o perfil de usuário associado a um login para ser criado como cliente.

Submete o perfil de usuário associado a um login para ser criado como cliente. Após submissão deste POST, o perfil não poderá mais ser alterado. Para alterar ou inserir informações no perfil antes de submeter o perfil o método PUT deve ser utilizado.

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
let perfilUsuario = PerfilUsuario(usPerson: false, politicamenteExposto: false, nacionalidade: "nacionalidade_example", ufNascimento: "ufNascimento_example", cidadeNascimento: "cidadeNascimento_example", paisNascimento: "paisNascimento_example", sexo: "sexo_example", estadoCivil: "estadoCivil_example", nomeConjuge: "nomeConjuge_example", nomeMae: "nomeMae_example", nomePai: "nomePai_example", login: LoginObjeto(nome: "nome_example", celular: "celular_example", cpf: "cpf_example", email: "email_example", dataNascimento: Date()), documento: [Documento(tipoDocumento: "tipoDocumento_example", numeroDocumento: "numeroDocumento_example", orgaoExpedidor: "orgaoExpedidor_example", ufEmissao: "ufEmissao_example", dataEmissao: Date(), dataValidade: Date(), codigoSegurancaCNH: "codigoSegurancaCNH_example")], profissao: DadosProfissionais(profissao: "profissao_example", empresa: "empresa_example"), endereco: Endereco(cep: "cep_example", logradouro: "logradouro_example", bairro: "bairro_example", uf: "uf_example", cidade: "cidade_example", numero: "numero_example", complemento: "complemento_example"), patrimonio: DadosPatrimonial(valorDePatrimonio: "valorDePatrimonio_example", valorDeInvestimento: 123, rendimentoMensal: "rendimentoMensal_example", outrosBensValor: 123), contaBancaria: [ContaBancaria(banco: "banco_example", agencia: "agencia_example", conta: "conta_example", digito: "digito_example", cotitularConjuge: false, cpfConjuge: "cpfConjuge_example")]) // PerfilUsuario | Dados para criação ou atualização do perfil

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

