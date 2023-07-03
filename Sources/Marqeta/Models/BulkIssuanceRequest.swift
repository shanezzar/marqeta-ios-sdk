//
// BulkIssuanceRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BulkIssuanceRequest: Codable {

    /** Number of cards in the order. */
    public var cardAllocation: Int
    /** Specifies the card product from which to create your cards. */
    public var cardProductToken: String
    /** Set to &#x60;true&#x60; to request expedited processing of the order by your card fulfillment provider.  This expedited service is available for cards fulfilled by link:http://perfectplastic.com/[Perfect Plastic Printing, window&#x3D;\&quot;_blank\&quot;], link:http://www.idemia.com[IDEMIA, window&#x3D;\&quot;_blank\&quot;], and link:https://www.arroweye.com/[Arroweye Solutions, window&#x3D;\&quot;_blank\&quot;].  *NOTE:* Contact your Marqeta representative for information regarding the cost of expedited service. */
    public var expedite: Bool?
    public var expirationOffset: ExpirationOffset?
    public var fulfillment: FulfillmentRequest
    /** If set to &#x60;true&#x60;, the unique numeric postfix appended to each card&#x27;s token field is also appended to the card&#x27;s &#x60;fulfillment.card_personalization.text.name_line_1.value&#x60; field. */
    public var nameLine1NumericPostfix: Bool?
    /** If set to &#x60;true&#x60;, the unique random postfix appended to each card&#x27;s token field is also appended to the card&#x27;s &#x60;fulfillment.card_personalization.text.name_line_1.value&#x60; field. */
    public var nameLine1RandomPostfix: Bool?
    /** If you do not include a token, the system will generate one automatically. This token is necessary for use in other API calls, so we recommend that rather than let the system generate one, you use a simple string that is easy to remember. This value cannot be updated. */
    public var token: String
    public var userAssociation: UserAssociation?

    public init(cardAllocation: Int, cardProductToken: String, expedite: Bool? = nil, expirationOffset: ExpirationOffset? = nil, fulfillment: FulfillmentRequest, nameLine1NumericPostfix: Bool? = nil, nameLine1RandomPostfix: Bool? = nil, token: String, userAssociation: UserAssociation? = nil) {
        self.cardAllocation = cardAllocation
        self.cardProductToken = cardProductToken
        self.expedite = expedite
        self.expirationOffset = expirationOffset
        self.fulfillment = fulfillment
        self.nameLine1NumericPostfix = nameLine1NumericPostfix
        self.nameLine1RandomPostfix = nameLine1RandomPostfix
        self.token = token
        self.userAssociation = userAssociation
    }

    public enum CodingKeys: String, CodingKey { 
        case cardAllocation = "card_allocation"
        case cardProductToken = "card_product_token"
        case expedite
        case expirationOffset = "expiration_offset"
        case fulfillment
        case nameLine1NumericPostfix = "name_line_1_numeric_postfix"
        case nameLine1RandomPostfix = "name_line_1_random_postfix"
        case token
        case userAssociation = "user_association"
    }

}
