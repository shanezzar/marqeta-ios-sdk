//
// CardProductFulfillment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Determines physical characteristics of a card, along with its bulk shipment information. */

public struct CardProductFulfillment: Codable {

    public enum FulfillmentProvider: String, Codable { 
        case perfectplastic = "PERFECTPLASTIC"
        case arroweye = "ARROWEYE"
        case idemia = "IDEMIA"
        case idemiaUk = "IDEMIA_UK"
        case idemiaFr = "IDEMIA_FR"
        case idemiaCz = "IDEMIA_CZ"
        case idemiaApac = "IDEMIA_APAC"
        case idemiaPl = "IDEMIA_PL"
        case idemiaAu = "IDEMIA_AU"
        case idemiaLa = "IDEMIA_LA"
        case gemalto = "GEMALTO"
        case nitecrest = "NITECREST"
        case oberthur = "OBERTHUR"
        case allpay = "ALLPAY"
    }
    public enum PaymentInstrument: String, Codable { 
        case physicalMsr = "PHYSICAL_MSR"
        case physicalIcc = "PHYSICAL_ICC"
        case physicalContactless = "PHYSICAL_CONTACTLESS"
        case physicalCombo = "PHYSICAL_COMBO"
        case virtualPan = "VIRTUAL_PAN"
    }
    /** If &#x60;true&#x60;, an all zero code (000) is allowed as a valid value in an authorization request. */
    public var allZeroCardSecurityCode: Bool?
    /** Controls the ability to create cards from this card product; &#x60;true&#x60; allows and &#x60;false&#x60; disallows the creation of cards.  *NOTE:* The card product&#x27;s &#x60;active&#x60; field has no effect on card creation or the behavior of this field. */
    public var allowCardCreation: Bool?
    /** Prefix of the bank identification number. */
    public var binPrefix: String?
    /** Enables bulk ordering of cards of this card product type using the &#x60;/bulkissuances&#x60; endpoint. */
    public var bulkShip: Bool?
    public var cardPersonalization: CardPersonalization
    /** Enables offline personal identification number (PIN) verification for Europay Mastercard and Visa (EMV, or \&quot;chip-and-PIN\&quot;) card payments. */
    public var enableOfflinePin: Bool?
    /** Specifies the fulfillment provider.  *NOTE:* Expedited processing is available for cards that are fulfilled by link:http://perfectplastic.com/[Perfect Plastic Printing, window&#x3D;\&quot;_blank\&quot;], link:http://www.idemia.com[IDEMIA, window&#x3D;\&quot;_blank\&quot;], and link:https://www.arroweye.com/[Arroweye Solutions, window&#x3D;\&quot;_blank\&quot;]. You can expedite an order&#x27;s processing by using the &#x60;expedite&#x60; field of the &lt;&lt;/core-api/cards, card&gt;&gt; or &lt;&lt;/core-api/bulk-card-orders, bulkissuance&gt;&gt; object. Contact your Marqeta representative for information regarding the cost of expedited service. */
    public var fulfillmentProvider: FulfillmentProvider?
    /** Card fulfillment provider&#x27;s package ID. */
    public var packageId: String?
    /** Specifies the length of the primary account number (PAN). */
    public var panLength: String?
    /** Specifies the physical form cards of this card product type will take. */
    public var paymentInstrument: PaymentInstrument?
    public var shipping: Shipping?
    /** A value of &#x60;true&#x60; sets the text in the &#x60;fulfillment.card_personalization.text.name_line_1&#x60; and &#x60;name_line_2&#x60; fields to all uppercase letters. A value of &#x60;false&#x60; leaves the text in its original state. */
    public var uppercaseNameLines: Bool?

    public init(allZeroCardSecurityCode: Bool? = nil, allowCardCreation: Bool? = nil, binPrefix: String? = nil, bulkShip: Bool? = nil, cardPersonalization: CardPersonalization, enableOfflinePin: Bool? = nil, fulfillmentProvider: FulfillmentProvider? = nil, packageId: String? = nil, panLength: String? = nil, paymentInstrument: PaymentInstrument? = nil, shipping: Shipping? = nil, uppercaseNameLines: Bool? = nil) {
        self.allZeroCardSecurityCode = allZeroCardSecurityCode
        self.allowCardCreation = allowCardCreation
        self.binPrefix = binPrefix
        self.bulkShip = bulkShip
        self.cardPersonalization = cardPersonalization
        self.enableOfflinePin = enableOfflinePin
        self.fulfillmentProvider = fulfillmentProvider
        self.packageId = packageId
        self.panLength = panLength
        self.paymentInstrument = paymentInstrument
        self.shipping = shipping
        self.uppercaseNameLines = uppercaseNameLines
    }

    public enum CodingKeys: String, CodingKey { 
        case allZeroCardSecurityCode = "all_zero_card_security_code"
        case allowCardCreation = "allow_card_creation"
        case binPrefix = "bin_prefix"
        case bulkShip = "bulk_ship"
        case cardPersonalization = "card_personalization"
        case enableOfflinePin = "enable_offline_pin"
        case fulfillmentProvider = "fulfillment_provider"
        case packageId = "package_id"
        case panLength = "pan_length"
        case paymentInstrument = "payment_instrument"
        case shipping
        case uppercaseNameLines = "uppercase_name_lines"
    }

}
