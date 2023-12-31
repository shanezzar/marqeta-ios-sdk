//
// CardProductResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CardProductResponse: Codable {

    /** Indicates whether the card product is active.  This field is returned if it exists in the resource. */
    public var active: Bool?
    public var config: CardProductConfig?
    /** Date and time when the resource was created, in UTC. */
    public var createdTime: Date
    /** End date of the range over which the card product can be active.  This field is returned if it exists in the resource. */
    public var endDate: Date?
    /** Date and time when the resource was last updated, in UTC. */
    public var lastModifiedTime: Date
    /** Name of the card product. */
    public var name: String
    /** Date when the card product becomes active. */
    public var startDate: Date
    /** Unique identifier of the card product. */
    public var token: String?

    public init(active: Bool? = nil, config: CardProductConfig? = nil, createdTime: Date, endDate: Date? = nil, lastModifiedTime: Date, name: String, startDate: Date, token: String? = nil) {
        self.active = active
        self.config = config
        self.createdTime = createdTime
        self.endDate = endDate
        self.lastModifiedTime = lastModifiedTime
        self.name = name
        self.startDate = startDate
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case config
        case createdTime = "created_time"
        case endDate = "end_date"
        case lastModifiedTime = "last_modified_time"
        case name
        case startDate = "start_date"
        case token
    }

}
