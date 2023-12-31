//
// DepositAccountUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DepositAccountUpdateRequest: Codable {

    public var allowImmediateCredit: Bool?

    public init(allowImmediateCredit: Bool? = nil) {
        self.allowImmediateCredit = allowImmediateCredit
    }

    public enum CodingKeys: String, CodingKey { 
        case allowImmediateCredit = "allow_immediate_credit"
    }

}
