//
// CommandoModeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class CommandoModeAPI {
    /**
     List Commando Mode control sets

     - parameter count: (query) Number of Commando Mode control sets to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCommandomodes(count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, completion: @escaping ((_ data: CommandoModeListResponse?,_ error: Error?) -> Void)) {
        getCommandomodesWithRequestBuilder(count: count, startIndex: startIndex, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List Commando Mode control sets
     - GET /commandomodes

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "real_time_standin_criteria" : {
      "include_application_errors" : false,
      "include_response_timeouts" : false,
      "enabled" : false,
      "include_connection_errors" : false
    },
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "program_gateway_funding_source_token" : "program_gateway_funding_source_token",
    "current_state" : {
      "reason" : "reason",
      "commando_enabled" : false,
      "channel" : "API",
      "username" : "username"
    },
    "commando_mode_enables" : {
      "use_cache_balance" : false,
      "velocity_controls" : [ "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls" ],
      "program_funding_source" : "program_funding_source",
      "auth_controls" : [ "auth_controls", "auth_controls" ],
      "ignore_card_suspended_state" : false
    },
    "token" : "token"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "real_time_standin_criteria" : {
      "include_application_errors" : false,
      "include_response_timeouts" : false,
      "enabled" : false,
      "include_connection_errors" : false
    },
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "program_gateway_funding_source_token" : "program_gateway_funding_source_token",
    "current_state" : {
      "reason" : "reason",
      "commando_enabled" : false,
      "channel" : "API",
      "username" : "username"
    },
    "commando_mode_enables" : {
      "use_cache_balance" : false,
      "velocity_controls" : [ "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls" ],
      "program_funding_source" : "program_funding_source",
      "auth_controls" : [ "auth_controls", "auth_controls" ],
      "ignore_card_suspended_state" : false
    },
    "token" : "token"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter count: (query) Number of Commando Mode control sets to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<CommandoModeListResponse> 
     */
    open class func getCommandomodesWithRequestBuilder(count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil) -> RequestBuilder<CommandoModeListResponse> {
        let path = "/commandomodes"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<CommandoModeListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     List Commando Mode transitions set

     - parameter commandomodeToken: (path) Unique identifier of the Commando Mode control set. 
     - parameter count: (query) Number of Commando Mode control set transitions to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -createdTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCommandomodesCommandomodetokenTransitions(commandomodeToken: String, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, completion: @escaping ((_ data: CommandoModeTransitionListResponse?,_ error: Error?) -> Void)) {
        getCommandomodesCommandomodetokenTransitionsWithRequestBuilder(commandomodeToken: commandomodeToken, count: count, startIndex: startIndex, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List Commando Mode transitions set
     - GET /commandomodes/{commandomode_token}/transitions

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "name" : "name",
    "type" : "type",
    "commando_mode_token" : "commando_mode_token",
    "transition" : {
      "reason" : "reason",
      "commando_enabled" : false,
      "channel" : "API",
      "username" : "username"
    },
    "token" : "token"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "name" : "name",
    "type" : "type",
    "commando_mode_token" : "commando_mode_token",
    "transition" : {
      "reason" : "reason",
      "commando_enabled" : false,
      "channel" : "API",
      "username" : "username"
    },
    "token" : "token"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter commandomodeToken: (path) Unique identifier of the Commando Mode control set. 
     - parameter count: (query) Number of Commando Mode control set transitions to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -createdTime)

     - returns: RequestBuilder<CommandoModeTransitionListResponse> 
     */
    open class func getCommandomodesCommandomodetokenTransitionsWithRequestBuilder(commandomodeToken: String, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil) -> RequestBuilder<CommandoModeTransitionListResponse> {
        var path = "/commandomodes/{commandomode_token}/transitions"
        let commandomodeTokenPreEscape = "\(commandomodeToken)"
        let commandomodeTokenPostEscape = commandomodeTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{commandomode_token}", with: commandomodeTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<CommandoModeTransitionListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve Commando Mode control set

     - parameter token: (path) Unique identifier of the Commando Mode control set you want to retrieve. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCommandomodesToken(token: String, completion: @escaping ((_ data: CommandoModeResponse?,_ error: Error?) -> Void)) {
        getCommandomodesTokenWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve Commando Mode control set
     - GET /commandomodes/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "real_time_standin_criteria" : {
    "include_application_errors" : false,
    "include_response_timeouts" : false,
    "enabled" : false,
    "include_connection_errors" : false
  },
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "program_gateway_funding_source_token" : "program_gateway_funding_source_token",
  "current_state" : {
    "reason" : "reason",
    "commando_enabled" : false,
    "channel" : "API",
    "username" : "username"
  },
  "commando_mode_enables" : {
    "use_cache_balance" : false,
    "velocity_controls" : [ "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls", "velocity_controls" ],
    "program_funding_source" : "program_funding_source",
    "auth_controls" : [ "auth_controls", "auth_controls" ],
    "ignore_card_suspended_state" : false
  },
  "token" : "token"
}}]
     - parameter token: (path) Unique identifier of the Commando Mode control set you want to retrieve. 

     - returns: RequestBuilder<CommandoModeResponse> 
     */
    open class func getCommandomodesTokenWithRequestBuilder(token: String) -> RequestBuilder<CommandoModeResponse> {
        var path = "/commandomodes/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CommandoModeResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve Commando Mode transition

     - parameter token: (path) Unique identifier of the Commando Mode control set transition. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCommandomodesTransitionsToken(token: String, completion: @escaping ((_ data: CommandoModeTransitionResponse?,_ error: Error?) -> Void)) {
        getCommandomodesTransitionsTokenWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve Commando Mode transition
     - GET /commandomodes/transitions/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "type" : "type",
  "commando_mode_token" : "commando_mode_token",
  "transition" : {
    "reason" : "reason",
    "commando_enabled" : false,
    "channel" : "API",
    "username" : "username"
  },
  "token" : "token"
}}]
     - parameter token: (path) Unique identifier of the Commando Mode control set transition. 

     - returns: RequestBuilder<CommandoModeTransitionResponse> 
     */
    open class func getCommandomodesTransitionsTokenWithRequestBuilder(token: String) -> RequestBuilder<CommandoModeTransitionResponse> {
        var path = "/commandomodes/transitions/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CommandoModeTransitionResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
