//
// DestinationType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Destination of the reward redemption.  * &#x60;INVESTMENT&#x60; - The redemption is paid into an investment account.  * &#x60;WALLET&#x60; - The redemption is paid into a digital wallet.  * &#x60;ACH&#x60; - The redemption is paid into an ACH account.  Required for external redemptions. */
public enum DestinationType: String, Codable {
    case investment = "INVESTMENT"
    case wallet = "WALLET"
    case ach = "ACH"
}