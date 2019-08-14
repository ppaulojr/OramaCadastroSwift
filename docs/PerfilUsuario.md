# PerfilUsuario

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usPerson** | **Bool** | define se o usuário pode ou não ser enquadrado como US person de acordo com a definição da CVM | [optional] [default to false]
**politicamenteExposto** | **Bool** | define se o usuário pode ou não ser enquadrado como pessoa politicamente exposta de acordo com a definição da Deliberação Coremec nº 2, de 1º de dezembro de 2006 | [optional] [default to false]
**nacionalidade** | **String** | Definição de Nacionalidade de acordo com o Art. 12 da CF | [optional] 
**ufNascimento** | **String** | Unidade da Federação em que a pessoa nasceu | [optional] 
**cidadeNascimento** | **String** | Município em que a pessoa nascida no Brasil nasceu. Formato é o nome lexicograficamente igual a descrição do IBGE ou o código de cidade completo do IBGE | [optional] 
**paisNascimento** | **String** | País em que a pessoa nasceu. Código ISO 3166-1 alpha-2 | [optional] 
**sexo** | **String** | Sexo do indivíduo | [optional] 
**estadoCivil** | **String** | Estado civil do usuário | [optional] 
**nomeConjuge** | **String** | Nome do conjuge ou companheiro, necessário em casos que o estado civil seja &#39;Casado(a)&#39; ou &#39;União estável&#39; | [optional] 
**nomeMae** | **String** | Nome da mãe do usuário | [optional] 
**nomePai** | **String** | Nome do pai do usuário | [optional] 
**login** | [**LoginObjeto**](LoginObjeto.md) |  | [optional] 
**documento** | [Documento] |  | [optional] 
**profissao** | [**DadosProfissionais**](DadosProfissionais.md) |  | [optional] 
**endereco** | [**Endereco**](Endereco.md) |  | [optional] 
**patrimonio** | [**DadosPatrimonial**](DadosPatrimonial.md) |  | [optional] 
**contaBancaria** | [ContaBancaria] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


