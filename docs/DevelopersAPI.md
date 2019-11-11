# DevelopersAPI

All URIs are relative to *https://cadastro.orama.com.br/api/contas/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountIdentificacaoParceiroPost**](DevelopersAPI.md#accountidentificacaoparceiropost) | **POST** /identificacao-parceiro/ | Cria um login para usuário.


# **accountIdentificacaoParceiroPost**
```swift
    open class func accountIdentificacaoParceiroPost(loginSenhaObjeto: LoginSenhaObjeto, completion: @escaping (_ data: LoginCriado?, _ error: Error?) -> Void)
```

Cria um login para usuário.

Cria um novo login que será usado para acesso ao sistema.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let loginSenhaObjeto = LoginSenhaObjeto(nome: "nome_example", celular: "celular_example", cpf: "cpf_example", email: "email_example", dataNascimento: Date(), senha: "senha_example") // LoginSenhaObjeto | Dados para criação do login

// Cria um login para usuário.
DevelopersAPI.accountIdentificacaoParceiroPost(loginSenhaObjeto: loginSenhaObjeto) { (response, error) in
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

