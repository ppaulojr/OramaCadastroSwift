# RetornoContaBancaria

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**banco** | **String** | Banco da conta, string com o número do banco | [optional] 
**tipo** | **String** | Tipo da conta bancária. O tipo deve ser conta corrente (CC) ou conta poupança (CP). | [optional] [default to .cc]
**agencia** | **String** | Agência da conta bancária | [optional] 
**conta** | **String** | Número da conta bancária sem o dígito verificador | [optional] 
**digito** | **String** | Digito verificador da conta bancária | [optional] 
**contaConjunta** | **Bool** | Informação que define se é uma conta conjunta. Caso seja, deve ser definido como true. | [optional] [default to false]
**segundoParticipanteTitular** | **Bool** | Informação se o segundo participante (co-titular) é o titular da conta, caso não seja, o primeiro participante quem esta preenchendo a conta é o titular. | [optional] [default to false]
**cpfCotitular** | **String** | CPF do co-titular caso seja conta conjunta. CPF deve ser válido. O CPF tem que ter os 11 dígitos com a máscara incluindo os pontos e hífen.  - Obrigatório caso a conta bancária seja conta conjunta | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


