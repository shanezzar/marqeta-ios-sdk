//
// ControlTokenRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ControlTokenRequest: Codable {

    public enum ControltokenType: String, Codable { 
        case setPin = "SET_PIN"
        case showPin = "SHOW_PIN"
    }
    /** The unique identifier of the card for which you want to generate a control token. */
    public var cardToken: String
    /** Specifies the type of action completed by this request.  *WARNING:* Sending a request to this endpoint with a &#x60;REVEAL_PIN&#x60; control token requires PCI DSS compliance.  The lifespan of the control token depends on the token type:  * *SET_PIN:* 60 minutes * *REVEAL_PIN:* 5 minutes */
    public var controltokenType: ControltokenType?

    public init(cardToken: String, controltokenType: ControltokenType? = nil) {
        self.cardToken = cardToken
        self.controltokenType = controltokenType
    }

    public enum CodingKeys: String, CodingKey { 
        case cardToken = "card_token"
        case controltokenType = "controltoken_type"
    }

}
