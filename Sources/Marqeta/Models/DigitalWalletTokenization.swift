//
// DigitalWalletTokenization.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Controls characteristics related to digital wallets. */

public struct DigitalWalletTokenization: Codable {

    /** Specifies the digital wallet card art identifier for the card product. Digital wallets display the card art after the initial token has been provisioned and activated. Digital wallet card art is updated for all wallets automatically whenever a tokenized card is reissued or replaced.  * If your card program is Managed by Marqeta, Marqeta populates this field on your behalf. * If your card program is Powered by Marqeta, you can obtain the correct card art identifier directly from Visa or Mastercard.  If this field is left blank, your card product inherits the card art assigned to the account BIN range. */
    public var cardArtId: String?
    public var provisioningControls: ProvisioningControls?

    public init(cardArtId: String? = nil, provisioningControls: ProvisioningControls? = nil) {
        self.cardArtId = cardArtId
        self.provisioningControls = provisioningControls
    }

    public enum CodingKeys: String, CodingKey { 
        case cardArtId = "card_art_id"
        case provisioningControls = "provisioning_controls"
    }

}
