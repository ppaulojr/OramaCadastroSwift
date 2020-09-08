//
// DevelopersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension OramaCadastroSwiftAPI {


@objc open class DevelopersAPI : NSObject {
    /**
     Cria um login para usuário.
     
     - parameter loginSenhaObjeto: (body) Dados para criação do login 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func accountIdentificacaoParceiroPost(loginSenhaObjeto: LoginSenhaObjeto, apiResponseQueue: DispatchQueue = OramaCadastroSwiftAPI.apiResponseQueue, completion: @escaping ((_ data: LoginCriado?,_ error: Error?) -> Void)) {
        accountIdentificacaoParceiroPostWithRequestBuilder(loginSenhaObjeto: loginSenhaObjeto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Cria um login para usuário.
     - POST /identificacao-parceiro/
     - Cria um novo login que será usado para acesso ao sistema.
     - API Key:
       - type: apiKey X-Api-Key 
       - name: Api-Key
     - parameter loginSenhaObjeto: (body) Dados para criação do login 
     - returns: RequestBuilder<LoginCriado> 
     */
    open class func accountIdentificacaoParceiroPostWithRequestBuilder(loginSenhaObjeto: LoginSenhaObjeto) -> RequestBuilder<LoginCriado> {
        let path = "/identificacao-parceiro/"
        let URLString = OramaCadastroSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: loginSenhaObjeto)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LoginCriado>.Type = OramaCadastroSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
}
