//
// ClientAccessTokenRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ClientAccessTokenRequest: Codable {

    /** Unique identifier of the &#x60;application&#x60; object. */
    public var applicationToken: String?
    /** Unique identifier of the card whose sensitive information you want to display. */
    public var cardToken: String

    public init(applicationToken: String? = nil, cardToken: String) {
        self.applicationToken = applicationToken
        self.cardToken = cardToken
    }

    public enum CodingKeys: String, CodingKey { 
        case applicationToken = "application_token"
        case cardToken = "card_token"
    }

}
