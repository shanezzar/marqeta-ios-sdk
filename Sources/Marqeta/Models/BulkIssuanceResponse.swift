//
// BulkIssuanceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BulkIssuanceResponse: Codable {

    /** Number of cards in the order. */
    public var cardAllocation: Int
    /** Date and time when the bulk card order was fulfilled, in UTC.  This field is included if your bulk card order has been processed. */
    public var cardFulfillmentTime: Date?
    /** Specifies the card product from which the cards are created. */
    public var cardProductToken: String
    /** Number of cards processed in the bulk card order.  This field is returned if it exists in the resource. */
    public var cardsProcessed: Int?
    /** Date and time when the resource was created, in UTC.  This field is returned if it exists in the resource. */
    public var createdTime: Date?
    /** Indicates if expedited processing of this bulk card order was requested.  This field is returned if it exists in the resource. */
    public var expedite: Bool?
    public var expirationOffset: ExpirationOffset?
    public var fulfillment: FulfillmentResponse
    /** This field is included if your bulk card order has been processed.  You can use the &#x60;name_line1_start_index&#x60; and &#x60;name_line1_end_index&#x60; fields to identify the cards and users associated with the order. For example, if the start index is \&quot;1\&quot; and the end index is \&quot;3\&quot;, the card tokens are \&quot;card-1\&quot;, \&quot;card-2\&quot;, and \&quot;card-3\&quot;, and the user tokens are \&quot;user-1\&quot;, \&quot;user-2\&quot;, and \&quot;user-3\&quot;.  See &lt;&lt;/core-api/bulk-card-orders#create_bulk_card_order, Create bulk card order&gt;&gt; for more information about the automatic generation and naming of cards and users. */
    public var nameLine1EndIndex: Int?
    /** This field is included if your bulk card order has been processed.  You can use the &#x60;name_line1_start_index&#x60; and &#x60;name_line1_end_index&#x60; fields to identify the cards and users associated with the order. For example, if the start index is \&quot;1\&quot; and the end index is \&quot;3\&quot;, the card tokens are \&quot;card-1\&quot;, \&quot;card-2\&quot;, and \&quot;card-3\&quot;, and the user tokens are \&quot;user-1\&quot;, \&quot;user-2\&quot;, and \&quot;user-3\&quot;.  See &lt;&lt;/core-api/bulk-card-orders#create_bulk_card_order, Create bulk card order&gt;&gt; for more information about the automatic generation and naming of cards and users. */
    public var nameLine1StartIndex: Int?
    /** If set to &#x60;true&#x60;, the unique numeric postfix appended to each card&#x27;s token field is also appended to the card&#x27;s &#x60;fulfillment.card_personalization.text.name_line_1.value&#x60; field. */
    public var nameLine1NumericPostfix: Bool?
    /** If set to &#x60;true&#x60;, the unique random postfix appended to each card&#x27;s token field is also appended to the card&#x27;s &#x60;fulfillment.card_personalization.text.name_line_1.value&#x60; field.  This field is returned if it exists in the resource. */
    public var nameLine1RandomPostfix: Bool?
    /** Date and time when the card provider shipped the bulk card order, in UTC.  This field is included if your bulk card order has shipped. */
    public var providerShipDate: Date?
    /** Shipping method used by the card provider. &#x60;United_Postal_Service&#x60;, for example.  This field is included if your bulk card order has shipped. */
    public var providerShippingMethod: String?
    /** A tracking number is included only if your card provider is Arroweye Solutions.  This field is included if your bulk card order has shipped. */
    public var providerTrackingNumber: String?
    /** Unique identifier of the bulk card order. */
    public var token: String
    public var userAssociation: UserAssociation?

    public init(cardAllocation: Int, cardFulfillmentTime: Date? = nil, cardProductToken: String, cardsProcessed: Int? = nil, createdTime: Date? = nil, expedite: Bool? = nil, expirationOffset: ExpirationOffset? = nil, fulfillment: FulfillmentResponse, nameLine1EndIndex: Int? = nil, nameLine1StartIndex: Int? = nil, nameLine1NumericPostfix: Bool? = nil, nameLine1RandomPostfix: Bool? = nil, providerShipDate: Date? = nil, providerShippingMethod: String? = nil, providerTrackingNumber: String? = nil, token: String, userAssociation: UserAssociation? = nil) {
        self.cardAllocation = cardAllocation
        self.cardFulfillmentTime = cardFulfillmentTime
        self.cardProductToken = cardProductToken
        self.cardsProcessed = cardsProcessed
        self.createdTime = createdTime
        self.expedite = expedite
        self.expirationOffset = expirationOffset
        self.fulfillment = fulfillment
        self.nameLine1EndIndex = nameLine1EndIndex
        self.nameLine1StartIndex = nameLine1StartIndex
        self.nameLine1NumericPostfix = nameLine1NumericPostfix
        self.nameLine1RandomPostfix = nameLine1RandomPostfix
        self.providerShipDate = providerShipDate
        self.providerShippingMethod = providerShippingMethod
        self.providerTrackingNumber = providerTrackingNumber
        self.token = token
        self.userAssociation = userAssociation
    }

    public enum CodingKeys: String, CodingKey { 
        case cardAllocation = "card_allocation"
        case cardFulfillmentTime = "card_fulfillment_time"
        case cardProductToken = "card_product_token"
        case cardsProcessed = "cards_processed"
        case createdTime = "created_time"
        case expedite
        case expirationOffset = "expiration_offset"
        case fulfillment
        case nameLine1EndIndex = "name_line1_end_index"
        case nameLine1StartIndex = "name_line1_start_index"
        case nameLine1NumericPostfix = "name_line_1_numeric_postfix"
        case nameLine1RandomPostfix = "name_line_1_random_postfix"
        case providerShipDate = "provider_ship_date"
        case providerShippingMethod = "provider_shipping_method"
        case providerTrackingNumber = "provider_tracking_number"
        case token
        case userAssociation = "user_association"
    }

}
