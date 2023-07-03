//
// DisputeStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Status of the dispute.  * &#x60;ACTIVE&#x60; - The dispute is active and awaiting resolution. * &#x60;REVERSED&#x60; - The dispute has been reversed and is no longer active. * &#x60;AH_WON&#x60; - The account holder won the dispute. * &#x60;AH_LOST&#x60; - The account holder lost the dispute. */
public enum DisputeStatus: String, Codable {
    case active = "ACTIVE"
    case reversed = "REVERSED"
    case ahWon = "AH_WON"
    case ahLost = "AH_LOST"
}