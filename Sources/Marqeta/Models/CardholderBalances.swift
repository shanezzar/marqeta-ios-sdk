//
// CardholderBalances.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Returns general purpose account (GPA) balances for a user or business. This object includes a link to balances of related user GPAs. */

public struct CardholderBalances: Codable {

    public var gpa: CardholderBalance
    /** Array of links to balances of related user GPAs. */
    public var links: [Link]

    public init(gpa: CardholderBalance, links: [Link]) {
        self.gpa = gpa
        self.links = links
    }


}