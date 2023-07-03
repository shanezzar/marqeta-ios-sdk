//
// Authentication.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains the cardholder&#x27;s email address and password information. */

public struct Authentication: Codable {

    public enum LastPasswordUpdateChannel: String, Codable { 
        case change = "USER_CHANGE"
        case reset = "USER_RESET"
    }
    /** Specifies whether the email address has been verified. */
    public var emailVerified: Bool?
    /** Date and time when the email address was verified. */
    public var emailVerifiedTime: Date?
    /** Specifies the channel through which the password was last changed. */
    public var lastPasswordUpdateChannel: LastPasswordUpdateChannel?
    /** Date and time when the password was last changed. */
    public var lastPasswordUpdateTime: Date?

    public init(emailVerified: Bool? = nil, emailVerifiedTime: Date? = nil, lastPasswordUpdateChannel: LastPasswordUpdateChannel? = nil, lastPasswordUpdateTime: Date? = nil) {
        self.emailVerified = emailVerified
        self.emailVerifiedTime = emailVerifiedTime
        self.lastPasswordUpdateChannel = lastPasswordUpdateChannel
        self.lastPasswordUpdateTime = lastPasswordUpdateTime
    }

    public enum CodingKeys: String, CodingKey { 
        case emailVerified = "email_verified"
        case emailVerifiedTime = "email_verified_time"
        case lastPasswordUpdateChannel = "last_password_update_channel"
        case lastPasswordUpdateTime = "last_password_update_time"
    }

}
