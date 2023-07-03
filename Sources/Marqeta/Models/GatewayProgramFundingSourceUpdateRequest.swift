//
// GatewayProgramFundingSourceUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct GatewayProgramFundingSourceUpdateRequest: Codable {

    /** Indicates whether the program gateway funding source is active. */
    public var active: Bool?
    /** Password for authenticating your environment. */
    public var basicAuthPassword: String
    /** Username for authenticating your environment. */
    public var basicAuthUsername: String
    /** Additional custom information included in the HTTP header. For example, this might contain security information, along with Basic Authentication, when making a JIT Funding request. Custom headers also appear in the associated webhook&#x27;s notifications. */
    public var customHeader: [String:String]?
    /** Name of the program gateway funding source. */
    public var name: String?
    /** Total timeout in milliseconds for gateway processing. */
    public var timeoutMillis: Int64?
    /** URL of the gateway endpoint hosted in your environment, to which &#x60;POST&#x60; requests are submitted by the Marqeta platform. */
    public var url: String
    /** Specifies whether or not to use mutual transport layer security (mTLS) authentication for the funding request. */
    public var useMtls: Bool?

    public init(active: Bool? = nil, basicAuthPassword: String, basicAuthUsername: String, customHeader: [String:String]? = nil, name: String? = nil, timeoutMillis: Int64? = nil, url: String, useMtls: Bool? = nil) {
        self.active = active
        self.basicAuthPassword = basicAuthPassword
        self.basicAuthUsername = basicAuthUsername
        self.customHeader = customHeader
        self.name = name
        self.timeoutMillis = timeoutMillis
        self.url = url
        self.useMtls = useMtls
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case basicAuthPassword = "basic_auth_password"
        case basicAuthUsername = "basic_auth_username"
        case customHeader = "custom_header"
        case name
        case timeoutMillis = "timeout_millis"
        case url
        case useMtls = "use_mtls"
    }

}
