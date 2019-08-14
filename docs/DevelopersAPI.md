# DevelopersAPI

All URIs are relative to *https://cadastro.orama.com.br/api/contas/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**perfilGet**](DevelopersAPI.md#perfilget) | **GET** /perfil/ | Retorna uma lista composta por objetos do tipo perfil


# **perfilGet**
```swift
    open class func perfilGet(limite: Double? = nil, deslocamento: Double? = nil, campos: String? = nil, completion: @escaping (_ data: ListaPerfilUsuario?, _ error: Error?) -> Void)
```

Retorna uma lista composta por objetos do tipo perfil

Returna uma lista composta por objetos do tipo perfil

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OramaCadastroSwift

let limite = 987 // Double | Número máximo de elementos (optional)
let deslocamento = 987 // Double | Número de deslocamento (offset) dos elementos (optional)
let campos = "campos_example" // String | Lista de campos para ser inclusivamente filtrados (optional)

// Retorna uma lista composta por objetos do tipo perfil
DevelopersAPI.perfilGet(limite: limite, deslocamento: deslocamento, campos: campos) { (response, error) in
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
 **limite** | **Double** | Número máximo de elementos | [optional] 
 **deslocamento** | **Double** | Número de deslocamento (offset) dos elementos | [optional] 
 **campos** | **String** | Lista de campos para ser inclusivamente filtrados | [optional] 

### Return type

[**ListaPerfilUsuario**](ListaPerfilUsuario.md)

### Authorization

[Api-Key](../README.md#Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

