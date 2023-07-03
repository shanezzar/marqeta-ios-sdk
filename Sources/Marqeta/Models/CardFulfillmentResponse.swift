//
// CardFulfillmentResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Determines physical characteristics of a card and shipment information. */

public struct CardFulfillmentResponse: Codable {

    public enum CardFulfillmentReason: String, Codable { 
        case new = "NEW"
        case lostStolen = "LOST_STOLEN"
        case expired = "EXPIRED"
    }
    /** Descriptive reason for the card fulfillment. */
    public var cardFulfillmentReason: CardFulfillmentReason?
    public var cardPersonalization: CardPersonalization
    public var shipping: ShippingInformationResponse?

    public init(cardFulfillmentReason: CardFulfillmentReason? = nil, cardPersonalization: CardPersonalization, shipping: ShippingInformationResponse? = nil) {
        self.cardFulfillmentReason = cardFulfillmentReason
        self.cardPersonalization = cardPersonalization
        self.shipping = shipping
    }

    public enum CodingKeys: String, CodingKey { 
        case cardFulfillmentReason = "card_fulfillment_reason"
        case cardPersonalization = "card_personalization"
        case shipping
    }

}
