//
// ProgramFundingSourceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProgramFundingSourceResponse: Codable {

    /** The account identifier. */
    public var account: String
    /** Indicates whether the program funding source is active. This field is returned if it exists in the resource. */
    public var active: Bool?
    /** Date and time when the resource was created, in UTC. */
    public var createdTime: Date
    /** Date and time when the resource was last modified, in UTC. */
    public var lastModifiedTime: Date
    /** Name of the program funding source. */
    public var name: String
    /** Unique identifier of the funding source. */
    public var token: String

    public init(account: String, active: Bool? = nil, createdTime: Date, lastModifiedTime: Date, name: String, token: String) {
        self.account = account
        self.active = active
        self.createdTime = createdTime
        self.lastModifiedTime = lastModifiedTime
        self.name = name
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case account
        case active
        case createdTime = "created_time"
        case lastModifiedTime = "last_modified_time"
        case name
        case token
    }

}
