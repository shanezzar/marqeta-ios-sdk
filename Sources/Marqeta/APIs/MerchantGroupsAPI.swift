//
// MerchantGroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class MerchantGroupsAPI {
    /**
     Retrieve merchant group

     - parameter token: (path) Unique identifier of the merchant group. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMerchantGroup(token: String, completion: @escaping ((_ data: MerchantGroupResponse?,_ error: Error?) -> Void)) {
        getMerchantGroupWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve merchant group
     - GET /merchantgroups/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "mids" : [ "mids", "mids" ],
  "name" : "name",
  "active" : false,
  "token" : "token"
}}]
     - parameter token: (path) Unique identifier of the merchant group. 

     - returns: RequestBuilder<MerchantGroupResponse> 
     */
    open class func getMerchantGroupWithRequestBuilder(token: String) -> RequestBuilder<MerchantGroupResponse> {
        var path = "/merchantgroups/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<MerchantGroupResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     List merchant groups

     - parameter mid: (query) Returns all merchant groups that contain the specified merchant identifier. (optional)
     - parameter count: (query) Number of resources to retrieve. (optional, default to 10)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMerchantGroups(mid: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, completion: @escaping ((_ data: MerchantGroupListResponse?,_ error: Error?) -> Void)) {
        getMerchantGroupsWithRequestBuilder(mid: mid, count: count, startIndex: startIndex, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List merchant groups
     - GET /merchantgroups

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "mids" : [ "mids", "mids" ],
    "name" : "name",
    "active" : false,
    "token" : "token"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "mids" : [ "mids", "mids" ],
    "name" : "name",
    "active" : false,
    "token" : "token"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter mid: (query) Returns all merchant groups that contain the specified merchant identifier. (optional)
     - parameter count: (query) Number of resources to retrieve. (optional, default to 10)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<MerchantGroupListResponse> 
     */
    open class func getMerchantGroupsWithRequestBuilder(mid: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil) -> RequestBuilder<MerchantGroupListResponse> {
        let path = "/merchantgroups"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "mid": mid, 
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<MerchantGroupListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create merchant group

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postMerchantGroup(body: MerchantGroupRequest? = nil, completion: @escaping ((_ data: MerchantGroupResponse?,_ error: Error?) -> Void)) {
        postMerchantGroupWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create merchant group
     - POST /merchantgroups

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "mids" : [ "mids", "mids" ],
  "name" : "name",
  "active" : false,
  "token" : "token"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<MerchantGroupResponse> 
     */
    open class func postMerchantGroupWithRequestBuilder(body: MerchantGroupRequest? = nil) -> RequestBuilder<MerchantGroupResponse> {
        let path = "/merchantgroups"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<MerchantGroupResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Update merchant group

     - parameter body: (body) Merchant Group 
     - parameter token: (path) Unique identifier of the merchant group. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putMerchantGroupsToken(body: MerchantGroupUpdateRequest, token: String, completion: @escaping ((_ data: MerchantGroupResponse?,_ error: Error?) -> Void)) {
        putMerchantGroupsTokenWithRequestBuilder(body: body, token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update merchant group
     - PUT /merchantgroups/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "mids" : [ "mids", "mids" ],
  "name" : "name",
  "active" : false,
  "token" : "token"
}}]
     - parameter body: (body) Merchant Group 
     - parameter token: (path) Unique identifier of the merchant group. 

     - returns: RequestBuilder<MerchantGroupResponse> 
     */
    open class func putMerchantGroupsTokenWithRequestBuilder(body: MerchantGroupUpdateRequest, token: String) -> RequestBuilder<MerchantGroupResponse> {
        var path = "/merchantgroups/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<MerchantGroupResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
