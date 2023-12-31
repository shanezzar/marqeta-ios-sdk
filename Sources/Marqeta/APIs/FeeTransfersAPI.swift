//
// FeeTransfersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class FeeTransfersAPI {
    /**
     Retrieve fee transfer

     - parameter token: (path) Unique identifier of the fee transfer to retrieve. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFeetransfersToken(token: String, completion: @escaping ((_ data: FeeTransferResponse?,_ error: Error?) -> Void)) {
        getFeetransfersTokenWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve fee transfer
     - GET /feetransfers/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "fees" : [ {
    "fee" : {
      "created_time" : "2000-01-23T04:56:07.000+00:00",
      "amount" : 6.027456183070403,
      "real_time_assessment" : {
        "domestic_enabled" : false,
        "international_enabled" : false,
        "transaction_type" : "transaction_type"
      },
      "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
      "name" : "name",
      "active" : false,
      "currency_code" : "currency_code",
      "tags" : "tags",
      "token" : "token"
    },
    "memo" : "memo",
    "transaction_token" : "transaction_token",
    "tags" : "tags",
    "token" : "token"
  }, {
    "fee" : {
      "created_time" : "2000-01-23T04:56:07.000+00:00",
      "amount" : 6.027456183070403,
      "real_time_assessment" : {
        "domestic_enabled" : false,
        "international_enabled" : false,
        "transaction_type" : "transaction_type"
      },
      "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
      "name" : "name",
      "active" : false,
      "currency_code" : "currency_code",
      "tags" : "tags",
      "token" : "token"
    },
    "memo" : "memo",
    "transaction_token" : "transaction_token",
    "tags" : "tags",
    "token" : "token"
  } ],
  "business_token" : "business_token",
  "user_token" : "user_token",
  "tags" : "tags",
  "token" : "token"
}}]
     - parameter token: (path) Unique identifier of the fee transfer to retrieve. 

     - returns: RequestBuilder<FeeTransferResponse> 
     */
    open class func getFeetransfersTokenWithRequestBuilder(token: String) -> RequestBuilder<FeeTransferResponse> {
        var path = "/feetransfers/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<FeeTransferResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create fee transfer

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postFeetransfers(body: FeeTransferRequest? = nil, completion: @escaping ((_ data: FeeTransferResponse?,_ error: Error?) -> Void)) {
        postFeetransfersWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create fee transfer
     - POST /feetransfers

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "fees" : [ {
    "fee" : {
      "created_time" : "2000-01-23T04:56:07.000+00:00",
      "amount" : 6.027456183070403,
      "real_time_assessment" : {
        "domestic_enabled" : false,
        "international_enabled" : false,
        "transaction_type" : "transaction_type"
      },
      "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
      "name" : "name",
      "active" : false,
      "currency_code" : "currency_code",
      "tags" : "tags",
      "token" : "token"
    },
    "memo" : "memo",
    "transaction_token" : "transaction_token",
    "tags" : "tags",
    "token" : "token"
  }, {
    "fee" : {
      "created_time" : "2000-01-23T04:56:07.000+00:00",
      "amount" : 6.027456183070403,
      "real_time_assessment" : {
        "domestic_enabled" : false,
        "international_enabled" : false,
        "transaction_type" : "transaction_type"
      },
      "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
      "name" : "name",
      "active" : false,
      "currency_code" : "currency_code",
      "tags" : "tags",
      "token" : "token"
    },
    "memo" : "memo",
    "transaction_token" : "transaction_token",
    "tags" : "tags",
    "token" : "token"
  } ],
  "business_token" : "business_token",
  "user_token" : "user_token",
  "tags" : "tags",
  "token" : "token"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<FeeTransferResponse> 
     */
    open class func postFeetransfersWithRequestBuilder(body: FeeTransferRequest? = nil) -> RequestBuilder<FeeTransferResponse> {
        let path = "/feetransfers"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<FeeTransferResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
