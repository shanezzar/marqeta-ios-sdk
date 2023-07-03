//
// AutoReloadAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class AutoReloadAPI {
    /**
     List auto reloads

     - parameter cardProduct: (query) Unique identifier of the card product whose auto reloads you want to retrieve. (optional)
     - parameter userToken: (query) Unique identifier of the user whose auto reloads you want to retrieve. (optional)
     - parameter businessToken: (query) Unique identifier of the business whose auto reloads you want to retrieve. (optional)
     - parameter count: (query) Number of resources to retrieve. (optional, default to 10)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAutoreloads(cardProduct: String? = nil, userToken: String? = nil, businessToken: String? = nil, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil, completion: @escaping ((_ data: AutoReloadListResponse?,_ error: Error?) -> Void)) {
        getAutoreloadsWithRequestBuilder(cardProduct: cardProduct, userToken: userToken, businessToken: businessToken, count: count, startIndex: startIndex, fields: fields, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List auto reloads
     - GET /autoreloads

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "order_scope" : {
      "gpa" : {
        "trigger_amount" : 0.15658129805029453,
        "reload_amount" : 0.6127456183070403
      },
      "msa" : {
        "campaign_token" : "campaign_token",
        "trigger_amount" : 0.5737376656633328,
        "reload_amount" : 0.6062133916683182
      }
    },
    "active" : true,
    "association" : {
      "card_product_token" : "card_product_token",
      "business_token" : "business_token",
      "user_token" : "user_token"
    },
    "funding_source_address_token" : "funding_source_address_token",
    "currency_code" : "currency_code",
    "funding_source_token" : "funding_source_token",
    "token" : "token"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "order_scope" : {
      "gpa" : {
        "trigger_amount" : 0.15658129805029453,
        "reload_amount" : 0.6127456183070403
      },
      "msa" : {
        "campaign_token" : "campaign_token",
        "trigger_amount" : 0.5737376656633328,
        "reload_amount" : 0.6062133916683182
      }
    },
    "active" : true,
    "association" : {
      "card_product_token" : "card_product_token",
      "business_token" : "business_token",
      "user_token" : "user_token"
    },
    "funding_source_address_token" : "funding_source_address_token",
    "currency_code" : "currency_code",
    "funding_source_token" : "funding_source_token",
    "token" : "token"
  } ],
  "start_index" : 7,
  "count" : 0,
  "end_index" : 2
}}]
     - parameter cardProduct: (query) Unique identifier of the card product whose auto reloads you want to retrieve. (optional)
     - parameter userToken: (query) Unique identifier of the user whose auto reloads you want to retrieve. (optional)
     - parameter businessToken: (query) Unique identifier of the business whose auto reloads you want to retrieve. (optional)
     - parameter count: (query) Number of resources to retrieve. (optional, default to 10)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<AutoReloadListResponse> 
     */
    open class func getAutoreloadsWithRequestBuilder(cardProduct: String? = nil, userToken: String? = nil, businessToken: String? = nil, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil) -> RequestBuilder<AutoReloadListResponse> {
        let path = "/autoreloads"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "card_product": cardProduct, 
                        "user_token": userToken, 
                        "business_token": businessToken, 
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "fields": fields, 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<AutoReloadListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve auto reload

     - parameter token: (path) Unique identifier of the auto reload. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAutoreloadsToken(token: String, fields: String? = nil, completion: @escaping ((_ data: AutoReloadResponseModel?,_ error: Error?) -> Void)) {
        getAutoreloadsTokenWithRequestBuilder(token: token, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve auto reload
     - GET /autoreloads/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "order_scope" : {
    "gpa" : {
      "trigger_amount" : 0.15658129805029453,
      "reload_amount" : 0.6127456183070403
    },
    "msa" : {
      "campaign_token" : "campaign_token",
      "trigger_amount" : 0.5737376656633328,
      "reload_amount" : 0.6062133916683182
    }
  },
  "active" : true,
  "association" : {
    "card_product_token" : "card_product_token",
    "business_token" : "business_token",
    "user_token" : "user_token"
  },
  "funding_source_address_token" : "funding_source_address_token",
  "currency_code" : "currency_code",
  "funding_source_token" : "funding_source_token",
  "token" : "token"
}}]
     - parameter token: (path) Unique identifier of the auto reload. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)

     - returns: RequestBuilder<AutoReloadResponseModel> 
     */
    open class func getAutoreloadsTokenWithRequestBuilder(token: String, fields: String? = nil) -> RequestBuilder<AutoReloadResponseModel> {
        var path = "/autoreloads/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "fields": fields
        ])


        let requestBuilder: RequestBuilder<AutoReloadResponseModel>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create auto reload

     - parameter body: (body) Auto reload object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAutoreloads(body: AutoReloadModel, completion: @escaping ((_ data: AutoReloadResponseModel?,_ error: Error?) -> Void)) {
        postAutoreloadsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create auto reload
     - POST /autoreloads

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "order_scope" : {
    "gpa" : {
      "trigger_amount" : 0.15658129805029453,
      "reload_amount" : 0.6127456183070403
    },
    "msa" : {
      "campaign_token" : "campaign_token",
      "trigger_amount" : 0.5737376656633328,
      "reload_amount" : 0.6062133916683182
    }
  },
  "active" : true,
  "association" : {
    "card_product_token" : "card_product_token",
    "business_token" : "business_token",
    "user_token" : "user_token"
  },
  "funding_source_address_token" : "funding_source_address_token",
  "currency_code" : "currency_code",
  "funding_source_token" : "funding_source_token",
  "token" : "token"
}}]
     - parameter body: (body) Auto reload object 

     - returns: RequestBuilder<AutoReloadResponseModel> 
     */
    open class func postAutoreloadsWithRequestBuilder(body: AutoReloadModel) -> RequestBuilder<AutoReloadResponseModel> {
        let path = "/autoreloads"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AutoReloadResponseModel>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Update auto reload

     - parameter body: (body) Auto reload object 
     - parameter token: (path) Unique identifier of the auto reload. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAutoreloadsToken(body: AutoReloadUpdateModel, token: String, completion: @escaping ((_ data: AutoReloadResponseModel?,_ error: Error?) -> Void)) {
        putAutoreloadsTokenWithRequestBuilder(body: body, token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update auto reload
     - PUT /autoreloads/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "order_scope" : {
    "gpa" : {
      "trigger_amount" : 0.15658129805029453,
      "reload_amount" : 0.6127456183070403
    },
    "msa" : {
      "campaign_token" : "campaign_token",
      "trigger_amount" : 0.5737376656633328,
      "reload_amount" : 0.6062133916683182
    }
  },
  "active" : true,
  "association" : {
    "card_product_token" : "card_product_token",
    "business_token" : "business_token",
    "user_token" : "user_token"
  },
  "funding_source_address_token" : "funding_source_address_token",
  "currency_code" : "currency_code",
  "funding_source_token" : "funding_source_token",
  "token" : "token"
}}]
     - parameter body: (body) Auto reload object 
     - parameter token: (path) Unique identifier of the auto reload. 

     - returns: RequestBuilder<AutoReloadResponseModel> 
     */
    open class func putAutoreloadsTokenWithRequestBuilder(body: AutoReloadUpdateModel, token: String) -> RequestBuilder<AutoReloadResponseModel> {
        var path = "/autoreloads/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AutoReloadResponseModel>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}