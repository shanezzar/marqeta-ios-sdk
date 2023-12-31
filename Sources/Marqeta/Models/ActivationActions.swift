//
// ActivationActions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defines actions to execute when the card is activated. The fields in this object are mutually exclusive. */

public struct ActivationActions: Codable {

    /** Moves all digital wallet tokens from the specified card to the new card.  Not relevant when &#x60;reissue_pan_from_card_token&#x60; is set.  Send a &#x60;GET&#x60; request to &#x60;/cards/user/{token}&#x60; to retrieve card tokens for a particular user. */
    public var swapDigitalWalletTokensFromCardToken: String?
    /** If you are reissuing a card, the source card is terminated by default. To prevent the source card from being terminated, set this field to &#x60;false&#x60;.  Only relevant when &#x60;reissue_pan_from_card_token&#x60; is set. */
    public var terminateReissuedSourceCard: Bool?

    public init(swapDigitalWalletTokensFromCardToken: String? = nil, terminateReissuedSourceCard: Bool? = nil) {
        self.swapDigitalWalletTokensFromCardToken = swapDigitalWalletTokensFromCardToken
        self.terminateReissuedSourceCard = terminateReissuedSourceCard
    }

    public enum CodingKeys: String, CodingKey { 
        case swapDigitalWalletTokensFromCardToken = "swap_digital_wallet_tokens_from_card_token"
        case terminateReissuedSourceCard = "terminate_reissued_source_card"
    }

}
