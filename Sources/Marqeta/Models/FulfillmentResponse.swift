//
// FulfillmentResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies certain physical characteristics of a card, as well as bulk shipment information.  This object is returned if it exists in the resource. */

public struct FulfillmentResponse: Codable {

    public var cardPersonalization: CardPersonalization
    public var shipping: ShippingInformationResponse?

    public init(cardPersonalization: CardPersonalization, shipping: ShippingInformationResponse? = nil) {
        self.cardPersonalization = cardPersonalization
        self.shipping = shipping
    }

    public enum CodingKeys: String, CodingKey { 
        case cardPersonalization = "card_personalization"
        case shipping
    }

}
