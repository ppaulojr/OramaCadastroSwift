# AssinaturaEletronica

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assinaturaEletronica** | **String** | Assinatura eletrônica do usuário.  A assinatura deve respeitar as seguintes condições: - Conter de 6 a 15 dígitos - Conter apenas letras e números - Não deve conter 6 ou mais dígitos sequênciais, ex.: &#39;abcdef&#39;, &#39;123456&#39; - Se a assinatura contém entre 6 e 7 dígitos não deve repetir 3 dígitos seguidos, ex.: &#39;111&#39;, &#39;aaa&#39; - Se a assinatura contém entre 8 e 12 dígitos não deve repetir 4 dígitos seguidos, ex.: &#39;1111&#39;, &#39;aaaa&#39; - Se a assinatura contém entre 13 e 14 dígitos não deve repetir 5 dígitos seguidos, ex.: &#39;11111&#39;, &#39;aaaaa&#39; - Se a assinatura contém 15 dígitos não deve repetir 6 dígitos seguidos, ex.: &#39;111111&#39;, &#39;aaaaaa&#39; - A assinatura não deve conter nenhuma das palavras a seguir:      &#39;select&#39;, &#39;update&#39;, &#39;insert&#39;, &#39;delete&#39;, &#39;drop&#39;, &#39;truncate&#39;, &#39;waitfor&#39;, &#39;delay&#39;, &#39;where&#39;, &#39;from&#39;, &#39;having&#39;, &#39;script&#39;, &#39;applet&#39;, &#39;sha1&#39; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


