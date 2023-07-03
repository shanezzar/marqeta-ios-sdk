//
// SamsungPushTokenizeRequestData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains details about a card tokenization push request. */

public struct SamsungPushTokenizeRequestData: Codable {

    /** Specifies the type of card. */
    public var cardType: String?
    /** Name of the card as displayed in the digital wallet, typically showing the card brand and last four digits of the primary account number (PAN). &#x60;Visa 5678&#x60;, for example. */
    public var displayName: String?
    /** Encrypted card or cardholder details. */
    public var extraProvisionPayload: String?
    /** Last four digits of the primary account number of the physical or virtual card. */
    public var lastDigits: String?
    /** Specifies the card network of the physical or virtual card. */
    public var network: String?
    /** Specifies the network that provides the digital wallet token service, as determined by the Samsung Wallet library. */
    public var tokenServiceProvider: String?

    public init(cardType: String? = nil, displayName: String? = nil, extraProvisionPayload: String? = nil, lastDigits: String? = nil, network: String? = nil, tokenServiceProvider: String? = nil) {
        self.cardType = cardType
        self.displayName = displayName
        self.extraProvisionPayload = extraProvisionPayload
        self.lastDigits = lastDigits
        self.network = network
        self.tokenServiceProvider = tokenServiceProvider
    }

    public enum CodingKeys: String, CodingKey { 
        case cardType = "card_type"
        case displayName = "display_name"
        case extraProvisionPayload = "extra_provision_payload"
        case lastDigits = "last_digits"
        case network
        case tokenServiceProvider = "token_service_provider"
    }

}
