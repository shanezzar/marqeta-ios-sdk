//
// LoginRequestModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LoginRequestModel: Codable {

    /** Cardholder email address. */
    public var email: String?
    /** Password to the cardholder&#x27;s user account on the Marqeta platform. */
    public var password: String?
    /** Identifies the cardholder to log in.  Send a &#x60;GET&#x60; request to &#x60;/users&#x60; to retrieve user tokens. */
    public var userToken: String?

    public init(email: String? = nil, password: String? = nil, userToken: String? = nil) {
        self.email = email
        self.password = password
        self.userToken = userToken
    }

    public enum CodingKeys: String, CodingKey { 
        case email
        case password
        case userToken = "user_token"
    }

}
