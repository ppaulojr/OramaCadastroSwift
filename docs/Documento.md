# Documento

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tipoDocumento** | **String** |  | 
**numeroDocumento** | **String** |  | 
**orgaoExpedidor** | **String** | Orgão expedidor de acordo com o tipo de documento | 
**ufEmissao** | **String** | Unidade da Federação onde foi emitido o documeto | 
**dataEmissao** | **Date** | Data em que o documento foi emitido no formato YYYY-MM-DD (cf. RFC 3339, section 5.8) | 
**dataValidade** | **Date** | Data de validade do documento no formato YYYY-MM-DD (cf. RFC 3339, section 5.8) | [optional] 
**codigoSegurancaCNH** | **String** | Código de Segurança da Carteira Nacional de Habilitação  - Obrigatório caso &#39;tipoDocumento&#39; seja &#39;Carteira de Habilitação - CNH&#39; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


