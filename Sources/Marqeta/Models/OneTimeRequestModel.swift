//
// OneTimeRequestModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OneTimeRequestModel: Codable {

    /** Cardholder email address.  Required when neither the user token nor the admin access token is provided as the Basic Authentication password (case #3). */
    public var email: String?
    /** Password to the cardholder&#x27;s user account on the Marqeta platform.  Required when neither the user token nor the admin access token is provided as the Basic Authentication password (case #3). */
    public var password: String?
    /** Identifies the cardholder whose data is accessed. Send a &#x60;GET&#x60; request to &#x60;/users&#x60; to retrieve cardholder tokens.  Required when the Basic Authentication password is set to an admin access token (case #2). */
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