# PerfilUsuario

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usPerson** | **Bool** | define se o usuário pode ou não ser enquadrado como US person de acordo com a definição da CVM | [default to false]
**politicamenteExposto** | **Bool** | define se o usuário pode ou não ser enquadrado como pessoa politicamente exposta de acordo com a definição da Deliberação Coremec nº 2, de 1º de dezembro de 2006 | [default to false]
**investidorQualificado** | **Bool** | Define se o usuário é investidor qualifiquado. Investidor Qualificado - PF ou PJ que possuam investimentos financeiros em valor superior a 1 Milhão, Investidor aprovado em exame de qualificação técnica, e atestem por escrito sua condição de investidor qualificado. Investidores Profissionais, etc. | [default to false]
**nacionalidade** | **String** | Definição de Nacionalidade de acordo com o Art. 12 da CF | 
**ufNascimento** | **String** | Unidade da Federação em que a pessoa nasceu  - É obrigatório caso &#39;nacinalidade&#39; seja &#39;Brasileiro nato&#39; | [optional] 
**cidadeNascimento** | **String** | Município em que a pessoa nascida no Brasil nasceu. Formato é o nome lexicograficamente igual a descrição do IBGE ou o código de cidade completo do IBGE  - É obrigatório caso &#39;nacinalidade&#39; seja &#39;Brasileiro nato&#39; | [optional] 
**paisNascimento** | **String** | País em que a pessoa nasceu. Código ISO 3166-1 alpha-2 | 
**sexo** | **String** | Sexo do indivíduo | 
**estadoCivil** | **String** | Estado civil do usuário | 
**nomeConjuge** | **String** | Nome do conjuge ou companheiro, necessário em casos que o estado civil seja &#39;Casado(a)&#39; ou &#39;União estável&#39; | [optional] 
**nomeMae** | **String** | Nome da mãe do usuário | 
**nomePai** | **String** | Nome do pai do usuário.   - É obrigatório caso o usuário não possua pai desconhecido. | [optional] 
**paiDesconhecido** | **Bool** | Se o usuário não possui Nome do Pai nos documentos. | [default to false]
**login** | [**LoginObjeto**](LoginObjeto.md) |  | 
**documento** | [Documento] |  | 
**profissao** | [**DadosProfissionais**](DadosProfissionais.md) |  | 
**endereco** | [**Endereco**](Endereco.md) |  | 
**patrimonio** | [**DadosPatrimonial**](DadosPatrimonial.md) |  | 
**contaBancaria** | [ContaBancaria] |  | 
**frontEnd** | [**FrontEndStep**](FrontEndStep.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


