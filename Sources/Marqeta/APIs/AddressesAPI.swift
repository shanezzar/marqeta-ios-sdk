//
// AddressesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class AddressesAPI {
    /**
     List business addresses

     - parameter businessToken: (path) Unique identifier of the business account holder. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFundingsourcesAddressesBusinessBusinesstoken(businessToken: String, fields: String? = nil, completion: @escaping ((_ data: CardholderAddressListResponse?,_ error: Error?) -> Void)) {
        getFundingsourcesAddressesBusinessBusinesstokenWithRequestBuilder(businessToken: businessToken, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List business addresses
     - GET /fundingsources/addresses/business/{business_token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "zip" : "zip",
    "country" : "country",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "business_token" : "business_token",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "city" : "city",
    "address_1" : "address_1",
    "address_2" : "address_2",
    "active" : false,
    "last_name" : "last_name",
    "is_default_address" : false,
    "token" : "token",
    "phone" : "phone",
    "state" : "state",
    "user_token" : "user_token",
    "postal_code" : "postal_code",
    "first_name" : "first_name"
  }, {
    "zip" : "zip",
    "country" : "country",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "business_token" : "business_token",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "city" : "city",
    "address_1" : "address_1",
    "address_2" : "address_2",
    "active" : false,
    "last_name" : "last_name",
    "is_default_address" : false,
    "token" : "token",
    "phone" : "phone",
    "state" : "state",
    "user_token" : "user_token",
    "postal_code" : "postal_code",
    "first_name" : "first_name"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter businessToken: (path) Unique identifier of the business account holder. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)

     - returns: RequestBuilder<CardholderAddressListResponse> 
     */
    open class func getFundingsourcesAddressesBusinessBusinesstokenWithRequestBuilder(businessToken: String, fields: String? = nil) -> RequestBuilder<CardholderAddressListResponse> {
        var path = "/fundingsources/addresses/business/{business_token}"
        let businessTokenPreEscape = "\(businessToken)"
        let businessTokenPostEscape = businessTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{business_token}", with: businessTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "fields": fields
        ])


        let requestBuilder: RequestBuilder<CardholderAddressListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve address

     - parameter fundingSourceAddressToken: (path) Unique identifier of the funding source address. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFundingsourcesAddressesFundingsourceaddresstoken(fundingSourceAddressToken: String, completion: @escaping ((_ data: CardholderAddressResponse?,_ error: Error?) -> Void)) {
        getFundingsourcesAddressesFundingsourceaddresstokenWithRequestBuilder(fundingSourceAddressToken: fundingSourceAddressToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve address
     - GET /fundingsources/addresses/{funding_source_address_token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "zip" : "zip",
  "country" : "country",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "business_token" : "business_token",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "address_1" : "address_1",
  "address_2" : "address_2",
  "active" : false,
  "last_name" : "last_name",
  "is_default_address" : false,
  "token" : "token",
  "phone" : "phone",
  "state" : "state",
  "user_token" : "user_token",
  "postal_code" : "postal_code",
  "first_name" : "first_name"
}}]
     - parameter fundingSourceAddressToken: (path) Unique identifier of the funding source address. 

     - returns: RequestBuilder<CardholderAddressResponse> 
     */
    open class func getFundingsourcesAddressesFundingsourceaddresstokenWithRequestBuilder(fundingSourceAddressToken: String) -> RequestBuilder<CardholderAddressResponse> {
        var path = "/fundingsources/addresses/{funding_source_address_token}"
        let fundingSourceAddressTokenPreEscape = "\(fundingSourceAddressToken)"
        let fundingSourceAddressTokenPostEscape = fundingSourceAddressTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{funding_source_address_token}", with: fundingSourceAddressTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CardholderAddressResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Lists all addresses for a user

     - parameter userToken: (path) Unique identifier of the user account holder. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFundingsourcesAddressesUserUsertoken(userToken: String, fields: String? = nil, completion: @escaping ((_ data: CardholderAddressListResponse?,_ error: Error?) -> Void)) {
        getFundingsourcesAddressesUserUsertokenWithRequestBuilder(userToken: userToken, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Lists all addresses for a user
     - GET /fundingsources/addresses/user/{user_token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "zip" : "zip",
    "country" : "country",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "business_token" : "business_token",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "city" : "city",
    "address_1" : "address_1",
    "address_2" : "address_2",
    "active" : false,
    "last_name" : "last_name",
    "is_default_address" : false,
    "token" : "token",
    "phone" : "phone",
    "state" : "state",
    "user_token" : "user_token",
    "postal_code" : "postal_code",
    "first_name" : "first_name"
  }, {
    "zip" : "zip",
    "country" : "country",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "business_token" : "business_token",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "city" : "city",
    "address_1" : "address_1",
    "address_2" : "address_2",
    "active" : false,
    "last_name" : "last_name",
    "is_default_address" : false,
    "token" : "token",
    "phone" : "phone",
    "state" : "state",
    "user_token" : "user_token",
    "postal_code" : "postal_code",
    "first_name" : "first_name"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter userToken: (path) Unique identifier of the user account holder. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)

     - returns: RequestBuilder<CardholderAddressListResponse> 
     */
    open class func getFundingsourcesAddressesUserUsertokenWithRequestBuilder(userToken: String, fields: String? = nil) -> RequestBuilder<CardholderAddressListResponse> {
        var path = "/fundingsources/addresses/user/{user_token}"
        let userTokenPreEscape = "\(userToken)"
        let userTokenPostEscape = userTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{user_token}", with: userTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "fields": fields
        ])


        let requestBuilder: RequestBuilder<CardholderAddressListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create address

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postFundingsourcesAddresses(body: CardHolderAddressModel? = nil, completion: @escaping ((_ data: CardholderAddressResponse?,_ error: Error?) -> Void)) {
        postFundingsourcesAddressesWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create address
     - POST /fundingsources/addresses

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "zip" : "zip",
  "country" : "country",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "business_token" : "business_token",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "address_1" : "address_1",
  "address_2" : "address_2",
  "active" : false,
  "last_name" : "last_name",
  "is_default_address" : false,
  "token" : "token",
  "phone" : "phone",
  "state" : "state",
  "user_token" : "user_token",
  "postal_code" : "postal_code",
  "first_name" : "first_name"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<CardholderAddressResponse> 
     */
    open class func postFundingsourcesAddressesWithRequestBuilder(body: CardHolderAddressModel? = nil) -> RequestBuilder<CardholderAddressResponse> {
        let path = "/fundingsources/addresses"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CardholderAddressResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Updates the account holder address for a funding source

     - parameter fundingSourceAddressToken: (path) Unique identifier of the funding source address. 
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putFundingsourcesAddressesFundingsourceaddresstoken(fundingSourceAddressToken: String, body: CardHolderAddressUpdateModel? = nil, completion: @escaping ((_ data: CardholderAddressResponse?,_ error: Error?) -> Void)) {
        putFundingsourcesAddressesFundingsourceaddresstokenWithRequestBuilder(fundingSourceAddressToken: fundingSourceAddressToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Updates the account holder address for a funding source
     - PUT /fundingsources/addresses/{funding_source_address_token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "zip" : "zip",
  "country" : "country",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "business_token" : "business_token",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "city" : "city",
  "address_1" : "address_1",
  "address_2" : "address_2",
  "active" : false,
  "last_name" : "last_name",
  "is_default_address" : false,
  "token" : "token",
  "phone" : "phone",
  "state" : "state",
  "user_token" : "user_token",
  "postal_code" : "postal_code",
  "first_name" : "first_name"
}}]
     - parameter fundingSourceAddressToken: (path) Unique identifier of the funding source address. 
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<CardholderAddressResponse> 
     */
    open class func putFundingsourcesAddressesFundingsourceaddresstokenWithRequestBuilder(fundingSourceAddressToken: String, body: CardHolderAddressUpdateModel? = nil) -> RequestBuilder<CardholderAddressResponse> {
        var path = "/fundingsources/addresses/{funding_source_address_token}"
        let fundingSourceAddressTokenPreEscape = "\(fundingSourceAddressToken)"
        let fundingSourceAddressTokenPostEscape = fundingSourceAddressTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{funding_source_address_token}", with: fundingSourceAddressTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CardholderAddressResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}