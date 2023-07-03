//
// PushToCardAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class PushToCardAPI {
    /**
     Lists all push-to-card disbursements

     - parameter count: (query) Number of push-to-card disbursements to retrieve (optional, default to 10)
     - parameter fields: (query) Comma-delimited list of fields to return (e.g. field_1,field_2,..). Leave blank to return all fields. (optional)
     - parameter startIndex: (query) Start index (optional, default to 0)
     - parameter sortBy: (query) Sort order (optional, default to -createdTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPushtocardsDisburse(count: Int? = nil, fields: String? = nil, startIndex: Int? = nil, sortBy: String? = nil, completion: @escaping ((_ data: PushToCardDisburseListResponse?,_ error: Error?) -> Void)) {
        getPushtocardsDisburseWithRequestBuilder(count: count, fields: fields, startIndex: startIndex, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Lists all push-to-card disbursements
     - GET /pushtocards/disburse
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "amount" : 6.027456183070403,
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "payment_instrument_token" : "payment_instrument_token",
    "memo" : "memo",
    "currency_code" : "currency_code",
    "status" : "status",
    "tags" : "tags",
    "token" : "token"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "amount" : 6.027456183070403,
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "payment_instrument_token" : "payment_instrument_token",
    "memo" : "memo",
    "currency_code" : "currency_code",
    "status" : "status",
    "tags" : "tags",
    "token" : "token"
  } ],
  "start_index" : 5,
  "count" : 0,
  "end_index" : 1
}}]
     - parameter count: (query) Number of push-to-card disbursements to retrieve (optional, default to 10)
     - parameter fields: (query) Comma-delimited list of fields to return (e.g. field_1,field_2,..). Leave blank to return all fields. (optional)
     - parameter startIndex: (query) Start index (optional, default to 0)
     - parameter sortBy: (query) Sort order (optional, default to -createdTime)

     - returns: RequestBuilder<PushToCardDisburseListResponse> 
     */
    open class func getPushtocardsDisburseWithRequestBuilder(count: Int? = nil, fields: String? = nil, startIndex: Int? = nil, sortBy: String? = nil) -> RequestBuilder<PushToCardDisburseListResponse> {
        let path = "/pushtocards/disburse"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "fields": fields, 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<PushToCardDisburseListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Returns a specific push-to-card disbursement

     - parameter token: (path) Push-to-card disbursement token 
     - parameter fields: (query) Comma-delimited list of fields to return (e.g. field_1,field_2,..). Leave blank to return all fields. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPushtocardsDisburseToken(token: String, fields: String? = nil, completion: @escaping ((_ data: PushToCardDisbursementResponse?,_ error: Error?) -> Void)) {
        getPushtocardsDisburseTokenWithRequestBuilder(token: token, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a specific push-to-card disbursement
     - GET /pushtocards/disburse/{token}
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "amount" : 6.027456183070403,
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "payment_instrument_token" : "payment_instrument_token",
  "memo" : "memo",
  "currency_code" : "currency_code",
  "status" : "status",
  "tags" : "tags",
  "token" : "token"
}}]
     - parameter token: (path) Push-to-card disbursement token 
     - parameter fields: (query) Comma-delimited list of fields to return (e.g. field_1,field_2,..). Leave blank to return all fields. (optional)

     - returns: RequestBuilder<PushToCardDisbursementResponse> 
     */
    open class func getPushtocardsDisburseTokenWithRequestBuilder(token: String, fields: String? = nil) -> RequestBuilder<PushToCardDisbursementResponse> {
        var path = "/pushtocards/disburse/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "fields": fields
        ])


        let requestBuilder: RequestBuilder<PushToCardDisbursementResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Returns all push-to-card payment card details

     - parameter userToken: (query) User token 
     - parameter count: (query) Number of push-to-card payment cards to retrieve (optional, default to 10)
     - parameter fields: (query) Comma-delimited list of fields to return (e.g. field_1,field_2,..). Leave blank to return all fields. (optional)
     - parameter startIndex: (query) Start index (optional, default to 0)
     - parameter sortBy: (query) Sort order (optional, default to -createdTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPushtocardsPaymentcard(userToken: String, count: Int? = nil, fields: String? = nil, startIndex: Int? = nil, sortBy: String? = nil, completion: @escaping ((_ data: PushToCardListResponse?,_ error: Error?) -> Void)) {
        getPushtocardsPaymentcardWithRequestBuilder(userToken: userToken, count: count, fields: fields, startIndex: startIndex, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns all push-to-card payment card details
     - GET /pushtocards/paymentcard
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "country" : "country",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "fast_fund_transfer_eligible" : false,
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "city" : "city",
    "address_1" : "address_1",
    "address_2" : "address_2",
    "last_name" : "last_name",
    "gambling_fund_transfer_eligible" : false,
    "token" : "token",
    "last_four" : "last_four",
    "exp_date" : "exp_date",
    "state" : "state",
    "postal_code" : "postal_code",
    "name_on_card" : "name_on_card"
  }, {
    "country" : "country",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "fast_fund_transfer_eligible" : false,
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "city" : "city",
    "address_1" : "address_1",
    "address_2" : "address_2",
    "last_name" : "last_name",
    "gambling_fund_transfer_eligible" : false,
    "token" : "token",
    "last_four" : "last_four",
    "exp_date" : "exp_date",
    "state" : "state",
    "postal_code" : "postal_code",
    "name_on_card" : "name_on_card"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter userToken: (query) User token 
     - parameter count: (query) Number of push-to-card payment cards to retrieve (optional, default to 10)
     - parameter fields: (query) Comma-delimited list of fields to return (e.g. field_1,field_2,..). Leave blank to return all fields. (optional)
     - parameter startIndex: (query) Start index (optional, default to 0)
     - parameter sortBy: (query) Sort order (optional, default to -createdTime)

     - returns: RequestBuilder<PushToCardListResponse> 
     */
    open class func getPushtocardsPaymentcardWithRequestBuilder(userToken: String, count: Int? = nil, fields: String? = nil, startIndex: Int? = nil, sortBy: String? = nil) -> RequestBuilder<PushToCardListResponse> {
        let path = "/pushtocards/paymentcard"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "user_token": userToken, 
                        "fields": fields, 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<PushToCardListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Returns a specific paymentcard object

     - parameter token: (path) Push-to-card token 
     - parameter fields: (query) Comma-delimited list of fields to return (e.g. field_1,field_2,..). Leave blank to return all fields. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPushtocardsPaymentcardToken(token: String, fields: String? = nil, completion: @escaping ((_ data: PushToCardResponse?,_ error: Error?) -> Void)) {
        getPushtocardsPaymentcardTokenWithRequestBuilder(token: token, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a specific paymentcard object
     - GET /pushtocards/paymentcard/{token}
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "country" : "country",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "fast_fund_transfer_eligible" : false,
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "address_1" : "address_1",
  "address_2" : "address_2",
  "last_name" : "last_name",
  "gambling_fund_transfer_eligible" : false,
  "token" : "token",
  "last_four" : "last_four",
  "exp_date" : "exp_date",
  "state" : "state",
  "postal_code" : "postal_code",
  "name_on_card" : "name_on_card"
}}]
     - parameter token: (path) Push-to-card token 
     - parameter fields: (query) Comma-delimited list of fields to return (e.g. field_1,field_2,..). Leave blank to return all fields. (optional)

     - returns: RequestBuilder<PushToCardResponse> 
     */
    open class func getPushtocardsPaymentcardTokenWithRequestBuilder(token: String, fields: String? = nil) -> RequestBuilder<PushToCardResponse> {
        var path = "/pushtocards/paymentcard/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "fields": fields
        ])


        let requestBuilder: RequestBuilder<PushToCardResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Initiates a push-to-card money disbursement

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPushtocardsDisburse(body: PushToCardDisburseRequest? = nil, completion: @escaping ((_ data: PushToCardDisbursementResponse?,_ error: Error?) -> Void)) {
        postPushtocardsDisburseWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Initiates a push-to-card money disbursement
     - POST /pushtocards/disburse
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "amount" : 6.027456183070403,
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "payment_instrument_token" : "payment_instrument_token",
  "memo" : "memo",
  "currency_code" : "currency_code",
  "status" : "status",
  "tags" : "tags",
  "token" : "token"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<PushToCardDisbursementResponse> 
     */
    open class func postPushtocardsDisburseWithRequestBuilder(body: PushToCardDisburseRequest? = nil) -> RequestBuilder<PushToCardDisbursementResponse> {
        let path = "/pushtocards/disburse"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PushToCardDisbursementResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Adds an external card to which funds will be pushed

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPushtocardsPaymentcard(body: PushToCardRequest? = nil, completion: @escaping ((_ data: PushToCardResponse?,_ error: Error?) -> Void)) {
        postPushtocardsPaymentcardWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Adds an external card to which funds will be pushed
     - POST /pushtocards/paymentcard
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "country" : "country",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "fast_fund_transfer_eligible" : false,
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "address_1" : "address_1",
  "address_2" : "address_2",
  "last_name" : "last_name",
  "gambling_fund_transfer_eligible" : false,
  "token" : "token",
  "last_four" : "last_four",
  "exp_date" : "exp_date",
  "state" : "state",
  "postal_code" : "postal_code",
  "name_on_card" : "name_on_card"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<PushToCardResponse> 
     */
    open class func postPushtocardsPaymentcardWithRequestBuilder(body: PushToCardRequest? = nil) -> RequestBuilder<PushToCardResponse> {
        let path = "/pushtocards/paymentcard"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PushToCardResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}