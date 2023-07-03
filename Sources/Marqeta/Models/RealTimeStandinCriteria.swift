//
// RealTimeStandinCriteria.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies which event types automatically enable Commando Mode. */

public struct RealTimeStandinCriteria: Codable {

    /** If set to &#x60;true&#x60;, Commando Mode is automatically enabled by events defined in the &#x60;real_time_standin_criteria&#x60; object. If set to &#x60;false&#x60;, Auto Commando Mode is not enabled. */
    public var enabled: Bool?
    /** If set to &#x60;true&#x60;, an application error (any non-connection, non-timeout error) automatically enables Commando Mode when &#x60;real_time_standin_criteria.enabled&#x60; is also &#x60;true&#x60;. */
    public var includeApplicationErrors: Bool?
    /** If set to &#x60;true&#x60;, a non-timeout connection error automatically enables Commando Mode when &#x60;real_time_standin_criteria.enabled&#x60; is also &#x60;true&#x60;. */
    public var includeConnectionErrors: Bool?
    /** If set to &#x60;true&#x60;, a gateway response slower than 3000ms automatically enables Commando Mode when &#x60;real_time_standin_criteria.enabled&#x60; is also &#x60;true&#x60;. */
    public var includeResponseTimeouts: Bool?

    public init(enabled: Bool? = nil, includeApplicationErrors: Bool? = nil, includeConnectionErrors: Bool? = nil, includeResponseTimeouts: Bool? = nil) {
        self.enabled = enabled
        self.includeApplicationErrors = includeApplicationErrors
        self.includeConnectionErrors = includeConnectionErrors
        self.includeResponseTimeouts = includeResponseTimeouts
    }

    public enum CodingKeys: String, CodingKey { 
        case enabled
        case includeApplicationErrors = "include_application_errors"
        case includeConnectionErrors = "include_connection_errors"
        case includeResponseTimeouts = "include_response_timeouts"
    }

}