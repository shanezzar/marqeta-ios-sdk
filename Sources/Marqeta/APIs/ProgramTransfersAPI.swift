//
// ProgramTransfersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ProgramTransfersAPI {
    /**
     List program transfers

     - parameter count: (query) Number of program transfers to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter userToken: (query) Unique identifier of the user account holder whose program transfers you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/users&#x60; to retrieve user tokens. (optional)
     - parameter businessToken: (query) Unique identifier of the business account holder whose program transfers you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/businesses&#x60; to retrieve business tokens. (optional)
     - parameter typeToken: (query) Unique identifier of program transfer type to retrieve. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProgramtransfers(count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil, userToken: String? = nil, businessToken: String? = nil, typeToken: String? = nil, completion: @escaping ((_ data: ProgramTransferListResponse?,_ error: Error?) -> Void)) {
        getProgramtransfersWithRequestBuilder(count: count, startIndex: startIndex, fields: fields, sortBy: sortBy, userToken: userToken, businessToken: businessToken, typeToken: typeToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List program transfers
     - GET /programtransfers

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "jit_funding" : {
      "amount" : 0.5962133916683182,
      "address_verification" : {
        "gateway" : {
          "response" : {
            "additional_information" : "additional_information",
            "code" : "code",
            "memo" : "memo"
          },
          "on_file" : {
            "zip" : "zip",
            "street_address" : "street_address",
            "postal_code" : "postal_code"
          }
        }
      },
      "business_token" : "business_token",
      "method" : "pgfs.authorization",
      "memo" : "memo",
      "tags" : "tags",
      "token" : "token",
      "balances" : {
        "key" : {
          "ledger_balance" : 5.637376656633329,
          "balances" : { },
          "last_updated_time" : "2000-01-23T04:56:07.000+00:00",
          "credit_balance" : 1.4658129805029452,
          "impacted_amount" : 5.962133916683182,
          "pending_credits" : 2.3021358869347655,
          "available_balance" : 0.8008281904610115,
          "cached_balance" : 6.027456183070403,
          "currency_code" : "currency_code"
        }
      },
      "acting_user_token" : "acting_user_token",
      "decline_reason" : "INVALID_AMOUNT",
      "original_jit_funding_token" : "original_jit_funding_token",
      "user_token" : "user_token",
      "incremental_authorization_jit_funding_tokens" : [ "incremental_authorization_jit_funding_tokens", "incremental_authorization_jit_funding_tokens" ]
    },
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "amount" : 6.027456183070403,
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
    "memo" : "memo",
    "user_token" : "user_token",
    "transaction_token" : "transaction_token",
    "currency_code" : "currency_code",
    "tags" : "tags",
    "token" : "token",
    "type_token" : "type_token"
  }, {
    "jit_funding" : {
      "amount" : 0.5962133916683182,
      "address_verification" : {
        "gateway" : {
          "response" : {
            "additional_information" : "additional_information",
            "code" : "code",
            "memo" : "memo"
          },
          "on_file" : {
            "zip" : "zip",
            "street_address" : "street_address",
            "postal_code" : "postal_code"
          }
        }
      },
      "business_token" : "business_token",
      "method" : "pgfs.authorization",
      "memo" : "memo",
      "tags" : "tags",
      "token" : "token",
      "balances" : {
        "key" : {
          "ledger_balance" : 5.637376656633329,
          "balances" : { },
          "last_updated_time" : "2000-01-23T04:56:07.000+00:00",
          "credit_balance" : 1.4658129805029452,
          "impacted_amount" : 5.962133916683182,
          "pending_credits" : 2.3021358869347655,
          "available_balance" : 0.8008281904610115,
          "cached_balance" : 6.027456183070403,
          "currency_code" : "currency_code"
        }
      },
      "acting_user_token" : "acting_user_token",
      "decline_reason" : "INVALID_AMOUNT",
      "original_jit_funding_token" : "original_jit_funding_token",
      "user_token" : "user_token",
      "incremental_authorization_jit_funding_tokens" : [ "incremental_authorization_jit_funding_tokens", "incremental_authorization_jit_funding_tokens" ]
    },
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "amount" : 6.027456183070403,
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
    "memo" : "memo",
    "user_token" : "user_token",
    "transaction_token" : "transaction_token",
    "currency_code" : "currency_code",
    "tags" : "tags",
    "token" : "token",
    "type_token" : "type_token"
  } ],
  "start_index" : 5,
  "count" : 0,
  "end_index" : 1
}}]
     - parameter count: (query) Number of program transfers to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter userToken: (query) Unique identifier of the user account holder whose program transfers you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/users&#x60; to retrieve user tokens. (optional)
     - parameter businessToken: (query) Unique identifier of the business account holder whose program transfers you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/businesses&#x60; to retrieve business tokens. (optional)
     - parameter typeToken: (query) Unique identifier of program transfer type to retrieve. (optional)

     - returns: RequestBuilder<ProgramTransferListResponse> 
     */
    open class func getProgramtransfersWithRequestBuilder(count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil, userToken: String? = nil, businessToken: String? = nil, typeToken: String? = nil) -> RequestBuilder<ProgramTransferListResponse> {
        let path = "/programtransfers"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "fields": fields, 
                        "sort_by": sortBy, 
                        "user_token": userToken, 
                        "business_token": businessToken, 
                        "type_token": typeToken
        ])


        let requestBuilder: RequestBuilder<ProgramTransferListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve program transfer

     - parameter token: (path) Unique identifier of the program transfer. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProgramtransfersToken(token: String, completion: @escaping ((_ data: ProgramTransferResponse?,_ error: Error?) -> Void)) {
        getProgramtransfersTokenWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve program transfer
     - GET /programtransfers/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "jit_funding" : {
    "amount" : 0.5962133916683182,
    "address_verification" : {
      "gateway" : {
        "response" : {
          "additional_information" : "additional_information",
          "code" : "code",
          "memo" : "memo"
        },
        "on_file" : {
          "zip" : "zip",
          "street_address" : "street_address",
          "postal_code" : "postal_code"
        }
      }
    },
    "business_token" : "business_token",
    "method" : "pgfs.authorization",
    "memo" : "memo",
    "tags" : "tags",
    "token" : "token",
    "balances" : {
      "key" : {
        "ledger_balance" : 5.637376656633329,
        "balances" : { },
        "last_updated_time" : "2000-01-23T04:56:07.000+00:00",
        "credit_balance" : 1.4658129805029452,
        "impacted_amount" : 5.962133916683182,
        "pending_credits" : 2.3021358869347655,
        "available_balance" : 0.8008281904610115,
        "cached_balance" : 6.027456183070403,
        "currency_code" : "currency_code"
      }
    },
    "acting_user_token" : "acting_user_token",
    "decline_reason" : "INVALID_AMOUNT",
    "original_jit_funding_token" : "original_jit_funding_token",
    "user_token" : "user_token",
    "incremental_authorization_jit_funding_tokens" : [ "incremental_authorization_jit_funding_tokens", "incremental_authorization_jit_funding_tokens" ]
  },
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "amount" : 6.027456183070403,
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
  "memo" : "memo",
  "user_token" : "user_token",
  "transaction_token" : "transaction_token",
  "currency_code" : "currency_code",
  "tags" : "tags",
  "token" : "token",
  "type_token" : "type_token"
}}]
     - parameter token: (path) Unique identifier of the program transfer. 

     - returns: RequestBuilder<ProgramTransferResponse> 
     */
    open class func getProgramtransfersTokenWithRequestBuilder(token: String) -> RequestBuilder<ProgramTransferResponse> {
        var path = "/programtransfers/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ProgramTransferResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     List program transfer types

     - parameter count: (query) Number of program transfer types to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProgramtransfersTypes(count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil, completion: @escaping ((_ data: ProgramTransferTypeListResponse?,_ error: Error?) -> Void)) {
        getProgramtransfersTypesWithRequestBuilder(count: count, startIndex: startIndex, fields: fields, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List program transfer types
     - GET /programtransfers/types

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "memo" : "memo",
    "program_funding_source_token" : "program_funding_source_token",
    "tags" : "tags",
    "token" : "token"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "memo" : "memo",
    "program_funding_source_token" : "program_funding_source_token",
    "tags" : "tags",
    "token" : "token"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter count: (query) Number of program transfer types to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<ProgramTransferTypeListResponse> 
     */
    open class func getProgramtransfersTypesWithRequestBuilder(count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil) -> RequestBuilder<ProgramTransferTypeListResponse> {
        let path = "/programtransfers/types"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "fields": fields, 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<ProgramTransferTypeListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve program transfer type

     - parameter typeToken: (path) Unique identifier of the program transfer type 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProgramtransfersTypesTypetoken(typeToken: String, completion: @escaping ((_ data: ProgramTransferTypeResponse?,_ error: Error?) -> Void)) {
        getProgramtransfersTypesTypetokenWithRequestBuilder(typeToken: typeToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve program transfer type
     - GET /programtransfers/types/{type_token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "memo" : "memo",
  "program_funding_source_token" : "program_funding_source_token",
  "tags" : "tags",
  "token" : "token"
}}]
     - parameter typeToken: (path) Unique identifier of the program transfer type 

     - returns: RequestBuilder<ProgramTransferTypeResponse> 
     */
    open class func getProgramtransfersTypesTypetokenWithRequestBuilder(typeToken: String) -> RequestBuilder<ProgramTransferTypeResponse> {
        var path = "/programtransfers/types/{type_token}"
        let typeTokenPreEscape = "\(typeToken)"
        let typeTokenPostEscape = typeTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{type_token}", with: typeTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ProgramTransferTypeResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Transfers to a program funding source

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postProgramtransfers(body: ProgramTransfer? = nil, completion: @escaping ((_ data: ProgramTransferResponse?,_ error: Error?) -> Void)) {
        postProgramtransfersWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Transfers to a program funding source
     - POST /programtransfers

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "jit_funding" : {
    "amount" : 0.5962133916683182,
    "address_verification" : {
      "gateway" : {
        "response" : {
          "additional_information" : "additional_information",
          "code" : "code",
          "memo" : "memo"
        },
        "on_file" : {
          "zip" : "zip",
          "street_address" : "street_address",
          "postal_code" : "postal_code"
        }
      }
    },
    "business_token" : "business_token",
    "method" : "pgfs.authorization",
    "memo" : "memo",
    "tags" : "tags",
    "token" : "token",
    "balances" : {
      "key" : {
        "ledger_balance" : 5.637376656633329,
        "balances" : { },
        "last_updated_time" : "2000-01-23T04:56:07.000+00:00",
        "credit_balance" : 1.4658129805029452,
        "impacted_amount" : 5.962133916683182,
        "pending_credits" : 2.3021358869347655,
        "available_balance" : 0.8008281904610115,
        "cached_balance" : 6.027456183070403,
        "currency_code" : "currency_code"
      }
    },
    "acting_user_token" : "acting_user_token",
    "decline_reason" : "INVALID_AMOUNT",
    "original_jit_funding_token" : "original_jit_funding_token",
    "user_token" : "user_token",
    "incremental_authorization_jit_funding_tokens" : [ "incremental_authorization_jit_funding_tokens", "incremental_authorization_jit_funding_tokens" ]
  },
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "amount" : 6.027456183070403,
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
  "memo" : "memo",
  "user_token" : "user_token",
  "transaction_token" : "transaction_token",
  "currency_code" : "currency_code",
  "tags" : "tags",
  "token" : "token",
  "type_token" : "type_token"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ProgramTransferResponse> 
     */
    open class func postProgramtransfersWithRequestBuilder(body: ProgramTransfer? = nil) -> RequestBuilder<ProgramTransferResponse> {
        let path = "/programtransfers"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ProgramTransferResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Create program transfer type

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postProgramtransfersTypes(body: ProgramTransferTypeRequest? = nil, completion: @escaping ((_ data: ProgramTransferTypeResponse?,_ error: Error?) -> Void)) {
        postProgramtransfersTypesWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create program transfer type
     - POST /programtransfers/types

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "memo" : "memo",
  "program_funding_source_token" : "program_funding_source_token",
  "tags" : "tags",
  "token" : "token"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ProgramTransferTypeResponse> 
     */
    open class func postProgramtransfersTypesWithRequestBuilder(body: ProgramTransferTypeRequest? = nil) -> RequestBuilder<ProgramTransferTypeResponse> {
        let path = "/programtransfers/types"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ProgramTransferTypeResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Update program transfer type

     - parameter typeToken: (path) Unique identifier of the program transfer type 
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putProgramtransfersTypesTypetoken(typeToken: String, body: ProgramTransferTypeRequest? = nil, completion: @escaping ((_ data: ProgramTransferTypeResponse?,_ error: Error?) -> Void)) {
        putProgramtransfersTypesTypetokenWithRequestBuilder(typeToken: typeToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update program transfer type
     - PUT /programtransfers/types/{type_token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "memo" : "memo",
  "program_funding_source_token" : "program_funding_source_token",
  "tags" : "tags",
  "token" : "token"
}}]
     - parameter typeToken: (path) Unique identifier of the program transfer type 
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ProgramTransferTypeResponse> 
     */
    open class func putProgramtransfersTypesTypetokenWithRequestBuilder(typeToken: String, body: ProgramTransferTypeRequest? = nil) -> RequestBuilder<ProgramTransferTypeResponse> {
        var path = "/programtransfers/types/{type_token}"
        let typeTokenPreEscape = "\(typeToken)"
        let typeTokenPostEscape = typeTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{type_token}", with: typeTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ProgramTransferTypeResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
