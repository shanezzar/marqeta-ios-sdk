//
// DigitalWalletToken.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about the digital wallet that funded the transaction.  Returned for all transactions funded by a digital wallet or related to digital wallet token provisioning.  For more on digital wallets, see the &lt;&lt;/core-api/digital-wallets-management, Digital Wallets Management&gt;&gt; API reference and &lt;&lt;/developer-guides/digital-wallets-and-tokenization, Digital Wallets and Tokenization&gt;&gt; developer guide. */

public struct DigitalWalletToken: Codable {

    public var addressVerification: AddressVerification?
    /** Unique identifier of the card. */
    public var cardToken: String?
    /** Date and time when the digital wallet token object was created, in UTC. */
    public var createdTime: Date?
    public var device: Device?
    /** Digital wallet token&#x27;s provisioning status.  For fulfillment status descriptions, see &lt;&lt;/core-api/digital-wallets-management#postDigitalwallettokentransitions, Create digital wallet token transition&gt;&gt;. */
    public var fulfillmentStatus: String?
    /** The Marqeta platform&#x27;s decision as to whether the digital wallet token should be provisioned.  * *0000* – The token should be provisioned.  * *token.activation.verification.required* – Provisioning is pending; further action is required for completion.  For all other values, check the value of the &#x60;fulfillment_status&#x60; field to definitively ascertain the provisioning outcome.  *NOTE:* The value &#x60;invalid.cid&#x60; indicates an invalid CVV2 number. */
    public var issuerEligibilityDecision: String?
    /** Date and time when the digital wallet token object was last modified, in UTC. */
    public var lastModifiedTime: Date?
    public var metadata: DigitalWalletTokenMetadata?
    /** State of the digital wallet token.  For state descriptions, see &lt;&lt;/developer-guides/managing-the-lifecycle-of-digital-wallet-tokens#_transitioning_token_states, Transitioning Token States&gt;&gt;. */
    public var state: String?
    /** Reason why the digital wallet token transitioned to its current state. */
    public var stateReason: String?
    /** Unique identifier of the digital wallet token. */
    public var token: String?
    public var tokenServiceProvider: TokenServiceProvider?
    public var user: UserCardHolderResponse?
    public var walletProviderProfile: WalletProviderProfile?

    public init(addressVerification: AddressVerification? = nil, cardToken: String? = nil, createdTime: Date? = nil, device: Device? = nil, fulfillmentStatus: String? = nil, issuerEligibilityDecision: String? = nil, lastModifiedTime: Date? = nil, metadata: DigitalWalletTokenMetadata? = nil, state: String? = nil, stateReason: String? = nil, token: String? = nil, tokenServiceProvider: TokenServiceProvider? = nil, user: UserCardHolderResponse? = nil, walletProviderProfile: WalletProviderProfile? = nil) {
        self.addressVerification = addressVerification
        self.cardToken = cardToken
        self.createdTime = createdTime
        self.device = device
        self.fulfillmentStatus = fulfillmentStatus
        self.issuerEligibilityDecision = issuerEligibilityDecision
        self.lastModifiedTime = lastModifiedTime
        self.metadata = metadata
        self.state = state
        self.stateReason = stateReason
        self.token = token
        self.tokenServiceProvider = tokenServiceProvider
        self.user = user
        self.walletProviderProfile = walletProviderProfile
    }

    public enum CodingKeys: String, CodingKey { 
        case addressVerification = "address_verification"
        case cardToken = "card_token"
        case createdTime = "created_time"
        case device
        case fulfillmentStatus = "fulfillment_status"
        case issuerEligibilityDecision = "issuer_eligibility_decision"
        case lastModifiedTime = "last_modified_time"
        case metadata
        case state
        case stateReason = "state_reason"
        case token
        case tokenServiceProvider = "token_service_provider"
        case user
        case walletProviderProfile = "wallet_provider_profile"
    }

}
