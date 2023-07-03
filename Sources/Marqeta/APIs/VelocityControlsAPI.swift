//
// VelocityControlsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class VelocityControlsAPI {
    /**
     List velocity controls

     - parameter cardProduct: (query) Unique identifier of the card product. Enter the string &#x60;null&#x60; to retrieve velocity controls that are not associated with any card product. (optional)
     - parameter user: (query) Unique identifier of the user. Enter the string &#x60;null&#x60; to retrieve velocity controls that are not associated with any user. (optional)
     - parameter count: (query) Number of velocity control resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVelocitycontrols(cardProduct: String? = nil, user: String? = nil, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil, completion: @escaping ((_ data: VelocityControlListResponse?,_ error: Error?) -> Void)) {
        getVelocitycontrolsWithRequestBuilder(cardProduct: cardProduct, user: user, count: count, startIndex: startIndex, fields: fields, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List velocity controls
     - GET /velocitycontrols

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "include_withdrawals" : true,
    "usage_limit" : 0,
    "include_purchases" : true,
    "active" : true,
    "association" : {
      "card_product_token" : "card_product_token",
      "user_token" : "user_token"
    },
    "currency_code" : "currency_code",
    "money_in_transaction" : {
      "include_network_load_types" : [ "include_network_load_types", "include_network_load_types" ],
      "include_credits_types" : [ "include_credits_types", "include_credits_types" ]
    },
    "token" : "token",
    "include_cashback" : true,
    "approvals_only" : true,
    "include_transfers" : true,
    "amount_limit" : 0.6027456183070403,
    "name" : "name",
    "merchant_scope" : {
      "mcc_group" : "mcc_group",
      "mid" : "mid",
      "mcc" : "mcc"
    },
    "include_credits" : true,
    "velocity_window" : "DAY"
  }, {
    "include_withdrawals" : true,
    "usage_limit" : 0,
    "include_purchases" : true,
    "active" : true,
    "association" : {
      "card_product_token" : "card_product_token",
      "user_token" : "user_token"
    },
    "currency_code" : "currency_code",
    "money_in_transaction" : {
      "include_network_load_types" : [ "include_network_load_types", "include_network_load_types" ],
      "include_credits_types" : [ "include_credits_types", "include_credits_types" ]
    },
    "token" : "token",
    "include_cashback" : true,
    "approvals_only" : true,
    "include_transfers" : true,
    "amount_limit" : 0.6027456183070403,
    "name" : "name",
    "merchant_scope" : {
      "mcc_group" : "mcc_group",
      "mid" : "mid",
      "mcc" : "mcc"
    },
    "include_credits" : true,
    "velocity_window" : "DAY"
  } ],
  "start_index" : 5,
  "count" : 0,
  "end_index" : 5
}}]
     - parameter cardProduct: (query) Unique identifier of the card product. Enter the string &#x60;null&#x60; to retrieve velocity controls that are not associated with any card product. (optional)
     - parameter user: (query) Unique identifier of the user. Enter the string &#x60;null&#x60; to retrieve velocity controls that are not associated with any user. (optional)
     - parameter count: (query) Number of velocity control resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<VelocityControlListResponse> 
     */
    open class func getVelocitycontrolsWithRequestBuilder(cardProduct: String? = nil, user: String? = nil, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil) -> RequestBuilder<VelocityControlListResponse> {
        let path = "/velocitycontrols"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "card_product": cardProduct, 
                        "user": user, 
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "fields": fields, 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<VelocityControlListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Returns a specific velocity control

     - parameter token: (path) Unique identifier of the velocity control resource. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVelocitycontrolsToken(token: String, fields: String? = nil, completion: @escaping ((_ data: VelocityControlResponse?,_ error: Error?) -> Void)) {
        getVelocitycontrolsTokenWithRequestBuilder(token: token, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a specific velocity control
     - GET /velocitycontrols/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "include_withdrawals" : true,
  "usage_limit" : 0,
  "include_purchases" : true,
  "active" : true,
  "association" : {
    "card_product_token" : "card_product_token",
    "user_token" : "user_token"
  },
  "currency_code" : "currency_code",
  "money_in_transaction" : {
    "include_network_load_types" : [ "include_network_load_types", "include_network_load_types" ],
    "include_credits_types" : [ "include_credits_types", "include_credits_types" ]
  },
  "token" : "token",
  "include_cashback" : true,
  "approvals_only" : true,
  "include_transfers" : true,
  "amount_limit" : 0.6027456183070403,
  "name" : "name",
  "merchant_scope" : {
    "mcc_group" : "mcc_group",
    "mid" : "mid",
    "mcc" : "mcc"
  },
  "include_credits" : true,
  "velocity_window" : "DAY"
}}]
     - parameter token: (path) Unique identifier of the velocity control resource. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)

     - returns: RequestBuilder<VelocityControlResponse> 
     */
    open class func getVelocitycontrolsTokenWithRequestBuilder(token: String, fields: String? = nil) -> RequestBuilder<VelocityControlResponse> {
        var path = "/velocitycontrols/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "fields": fields
        ])


        let requestBuilder: RequestBuilder<VelocityControlResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     List user velocity control balances

     - parameter userToken: (path) Unique identifier of the cardholder. 
     - parameter count: (query) Number of available balance resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) The sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVelocitycontrolsUserUsertokenAvailable(userToken: String, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil, completion: @escaping ((_ data: VelocityControlBalanceListResponse?,_ error: Error?) -> Void)) {
        getVelocitycontrolsUserUsertokenAvailableWithRequestBuilder(userToken: userToken, count: count, startIndex: startIndex, fields: fields, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List user velocity control balances
     - GET /velocitycontrols/user/{user_token}/available

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "include_withdrawals" : true,
    "usage_limit" : 0,
    "include_purchases" : true,
    "available" : {
      "amount" : 0.14658129805029452,
      "uses" : 5,
      "days_remaining" : 5
    },
    "active" : true,
    "association" : {
      "card_product_token" : "card_product_token",
      "user_token" : "user_token"
    },
    "currency_code" : "currency_code",
    "money_in_transaction" : {
      "include_network_load_types" : [ "include_network_load_types", "include_network_load_types" ],
      "include_credits_types" : [ "include_credits_types", "include_credits_types" ]
    },
    "token" : "token",
    "include_cashback" : true,
    "approvals_only" : true,
    "include_transfers" : true,
    "amount_limit" : 0.6027456183070403,
    "name" : "name",
    "merchant_scope" : {
      "mcc_group" : "mcc_group",
      "mid" : "mid",
      "mcc" : "mcc"
    },
    "include_credits" : true,
    "velocity_window" : "DAY"
  }, {
    "include_withdrawals" : true,
    "usage_limit" : 0,
    "include_purchases" : true,
    "available" : {
      "amount" : 0.14658129805029452,
      "uses" : 5,
      "days_remaining" : 5
    },
    "active" : true,
    "association" : {
      "card_product_token" : "card_product_token",
      "user_token" : "user_token"
    },
    "currency_code" : "currency_code",
    "money_in_transaction" : {
      "include_network_load_types" : [ "include_network_load_types", "include_network_load_types" ],
      "include_credits_types" : [ "include_credits_types", "include_credits_types" ]
    },
    "token" : "token",
    "include_cashback" : true,
    "approvals_only" : true,
    "include_transfers" : true,
    "amount_limit" : 0.6027456183070403,
    "name" : "name",
    "merchant_scope" : {
      "mcc_group" : "mcc_group",
      "mid" : "mid",
      "mcc" : "mcc"
    },
    "include_credits" : true,
    "velocity_window" : "DAY"
  } ],
  "start_index" : 9,
  "count" : 0,
  "end_index" : 7
}}]
     - parameter userToken: (path) Unique identifier of the cardholder. 
     - parameter count: (query) Number of available balance resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) The sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<VelocityControlBalanceListResponse> 
     */
    open class func getVelocitycontrolsUserUsertokenAvailableWithRequestBuilder(userToken: String, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil) -> RequestBuilder<VelocityControlBalanceListResponse> {
        var path = "/velocitycontrols/user/{user_token}/available"
        let userTokenPreEscape = "\(userToken)"
        let userTokenPostEscape = userTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{user_token}", with: userTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "fields": fields, 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<VelocityControlBalanceListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create velocity control

     - parameter body: (body) Velocity control object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postVelocitycontrols(body: VelocityControlRequest, completion: @escaping ((_ data: VelocityControlResponse?,_ error: Error?) -> Void)) {
        postVelocitycontrolsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create velocity control
     - POST /velocitycontrols

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "include_withdrawals" : true,
  "usage_limit" : 0,
  "include_purchases" : true,
  "active" : true,
  "association" : {
    "card_product_token" : "card_product_token",
    "user_token" : "user_token"
  },
  "currency_code" : "currency_code",
  "money_in_transaction" : {
    "include_network_load_types" : [ "include_network_load_types", "include_network_load_types" ],
    "include_credits_types" : [ "include_credits_types", "include_credits_types" ]
  },
  "token" : "token",
  "include_cashback" : true,
  "approvals_only" : true,
  "include_transfers" : true,
  "amount_limit" : 0.6027456183070403,
  "name" : "name",
  "merchant_scope" : {
    "mcc_group" : "mcc_group",
    "mid" : "mid",
    "mcc" : "mcc"
  },
  "include_credits" : true,
  "velocity_window" : "DAY"
}}]
     - parameter body: (body) Velocity control object 

     - returns: RequestBuilder<VelocityControlResponse> 
     */
    open class func postVelocitycontrolsWithRequestBuilder(body: VelocityControlRequest) -> RequestBuilder<VelocityControlResponse> {
        let path = "/velocitycontrols"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<VelocityControlResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Update velocity control

     - parameter body: (body) Velocity control object 
     - parameter token: (path) Unique identifier of the velocity control resource. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putVelocitycontrolsToken(body: VelocityControlUpdateRequest, token: String, completion: @escaping ((_ data: VelocityControlResponse?,_ error: Error?) -> Void)) {
        putVelocitycontrolsTokenWithRequestBuilder(body: body, token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update velocity control
     - PUT /velocitycontrols/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "include_withdrawals" : true,
  "usage_limit" : 0,
  "include_purchases" : true,
  "active" : true,
  "association" : {
    "card_product_token" : "card_product_token",
    "user_token" : "user_token"
  },
  "currency_code" : "currency_code",
  "money_in_transaction" : {
    "include_network_load_types" : [ "include_network_load_types", "include_network_load_types" ],
    "include_credits_types" : [ "include_credits_types", "include_credits_types" ]
  },
  "token" : "token",
  "include_cashback" : true,
  "approvals_only" : true,
  "include_transfers" : true,
  "amount_limit" : 0.6027456183070403,
  "name" : "name",
  "merchant_scope" : {
    "mcc_group" : "mcc_group",
    "mid" : "mid",
    "mcc" : "mcc"
  },
  "include_credits" : true,
  "velocity_window" : "DAY"
}}]
     - parameter body: (body) Velocity control object 
     - parameter token: (path) Unique identifier of the velocity control resource. 

     - returns: RequestBuilder<VelocityControlResponse> 
     */
    open class func putVelocitycontrolsTokenWithRequestBuilder(body: VelocityControlUpdateRequest, token: String) -> RequestBuilder<VelocityControlResponse> {
        var path = "/velocitycontrols/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<VelocityControlResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
