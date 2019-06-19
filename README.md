# Swift4 API client for OramaCadastroSwift

API de Criação de Contas.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec from a remote server, you can easily generate an API client.

- API version: 1.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift4Codegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://virtserver.swaggerhub.com/api/contas/v1.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DevelopersAPI* | [**perfilGet**](docs/DevelopersAPI.md#perfilget) | **GET** /perfil/ | Retorna uma lista composta por objetos do tipo perfil
*UsersAPI* | [**accountAutenticacaoPost**](docs/UsersAPI.md#accountautenticacaopost) | **POST** /autenticacao/ | Autentica um usuário que ainda não é cliente.
*UsersAPI* | [**accountDocumentoPut**](docs/UsersAPI.md#accountdocumentoput) | **PUT** /perfil/{cpf}/documento/ | Anexa ou atualiza documento para conferencia de autenticidade do perfil.
*UsersAPI* | [**accountIdentificacaoPost**](docs/UsersAPI.md#accountidentificacaopost) | **POST** /identificacao/ | Cria um login para usuário.
*UsersAPI* | [**accountPerfilAprovacaoGet**](docs/UsersAPI.md#accountperfilaprovacaoget) | **GET** /perfil/{cpf}/aprovacao/ | Retorna o estado de aprovação de um perfil
*UsersAPI* | [**accountPerfilCelularAutenticacaoConfirmacaoGet**](docs/UsersAPI.md#accountperfilcelularautenticacaoconfirmacaoget) | **GET** /perfil/{cpf}/celular/autenticacao/confirmacao/ | Estado atual de confirmação do celular
*UsersAPI* | [**accountPerfilCelularAutenticacaoPost**](docs/UsersAPI.md#accountperfilcelularautenticacaopost) | **POST** /perfil/{cpf}/celular/autenticacao/ | Gera um código para iniciar o processo de validação do número do celular
*UsersAPI* | [**accountPerfilCelularConfirmacaoPost**](docs/UsersAPI.md#accountperfilcelularconfirmacaopost) | **POST** /perfil/{cpf}/celular/autenticacao/confirmacao/ | Confirma o numero de celular, concluindo a validação
*UsersAPI* | [**accountPerfilCelularSenhaRecuperacaoConfirmacaoGet**](docs/UsersAPI.md#accountperfilcelularsenharecuperacaoconfirmacaoget) | **GET** /perfil/{cpf}/celular/senha/recuperacao/confirmacao/ | Estado atual de confirmação da recuperação de senha através do celular
*UsersAPI* | [**accountPerfilCpfCelularSenhaPost**](docs/UsersAPI.md#accountperfilcpfcelularsenhapost) | **POST** /perfil/{cpf}/celular/senha/ | Redefine a senha do perfil dado o número de celular
*UsersAPI* | [**accountPerfilCpfEmailSenhaPost**](docs/UsersAPI.md#accountperfilcpfemailsenhapost) | **POST** /perfil/{cpf}/email/senha/ | Redefine a senha do perfil dado o email
*UsersAPI* | [**accountPerfilEmailAutenticacaoConfirmacaoGet**](docs/UsersAPI.md#accountperfilemailautenticacaoconfirmacaoget) | **GET** /perfil/{cpf}/email/autenticacao/confirmacao/ | Estado atual de confirmação do email
*UsersAPI* | [**accountPerfilEmailAutenticacaoPost**](docs/UsersAPI.md#accountperfilemailautenticacaopost) | **POST** /perfil/{cpf}/email/autenticacao/ | Gera um código para iniciar o processo de validação do email
*UsersAPI* | [**accountPerfilEmailConfirmacaoPost**](docs/UsersAPI.md#accountperfilemailconfirmacaopost) | **POST** /perfil/{cpf}/email/autenticacao/confirmacao/ | Confirma o email, concluindo a validação
*UsersAPI* | [**accountPerfilEmailSenhaRecuperacaoConfirmacaoGet**](docs/UsersAPI.md#accountperfilemailsenharecuperacaoconfirmacaoget) | **GET** /perfil/{cpf}/email/senha/recuperacao/confirmacao/ | Estado atual de confirmação da recuperação de senha através de email
*UsersAPI* | [**accountPerfilGet**](docs/UsersAPI.md#accountperfilget) | **GET** /perfil/{cpf}/ | Retorna o perfil de um usuário que ainda não foi transformado em cliente.
*UsersAPI* | [**accountPerfilPost**](docs/UsersAPI.md#accountperfilpost) | **POST** /perfil/{cpf}/ | Submete o perfil de usuário associado a um login para ser criado como cliente.
*UsersAPI* | [**accountPerfilPut**](docs/UsersAPI.md#accountperfilput) | **PUT** /perfil/{cpf}/ | Atualiza perfil para criação de conta.
*UsersAPI* | [**accountSenhaCelularRecuperacaoPost**](docs/UsersAPI.md#accountsenhacelularrecuperacaopost) | **POST** /perfil/{cpf}/celular/senha/recuperacao/ | Gera um código para iniciar o processo de recuperação de senha através do celular
*UsersAPI* | [**accountSenhaEmailRecuperacaoPost**](docs/UsersAPI.md#accountsenhaemailrecuperacaopost) | **POST** /perfil/{cpf}/email/senha/recuperacao/ | Gera um código para iniciar o processo de recuperação de senha através do email


## Documentation For Models

 - [Aprovacao](docs/Aprovacao.md)
 - [AutenticacaoCodigoObjeto](docs/AutenticacaoCodigoObjeto.md)
 - [AutenticacaoObjeto](docs/AutenticacaoObjeto.md)
 - [Confirmado](docs/Confirmado.md)
 - [ContaBancaria](docs/ContaBancaria.md)
 - [DadosPatrimonial](docs/DadosPatrimonial.md)
 - [DadosProfissionais](docs/DadosProfissionais.md)
 - [Documento](docs/Documento.md)
 - [DocumentoCorpo](docs/DocumentoCorpo.md)
 - [Endereco](docs/Endereco.md)
 - [Erro](docs/Erro.md)
 - [ListaPerfilUsuario](docs/ListaPerfilUsuario.md)
 - [LoginCriado](docs/LoginCriado.md)
 - [LoginObjeto](docs/LoginObjeto.md)
 - [LoginSenhaObjeto](docs/LoginSenhaObjeto.md)
 - [PerfilUsuario](docs/PerfilUsuario.md)
 - [UsuarioSenhaObjeto](docs/UsuarioSenhaObjeto.md)


## Documentation For Authorization


## Api-Key

- **Type**: HTTP basic authentication

## JWT

- **Type**: HTTP basic authentication


## Author

pedro.junior@developers.orama.com.br
