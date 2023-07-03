//
// ProgramFundingSourceRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProgramFundingSourceRequest: Codable {

    /** Indicates whether the program funding source is active. */
    public var active: Bool?
    /** Name of the program funding source. */
    public var name: String
    /** Unique identifier of the funding source. If you do not include a token, the system will generate one automatically. As this token is necessary for use in other calls, we recommend that you define a simple and easy to remember string rather than letting the system generate a token for you. This value cannot be updated. */
    public var token: String?

    public init(active: Bool? = nil, name: String, token: String? = nil) {
        self.active = active
        self.name = name
        self.token = token
    }


}
