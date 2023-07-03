//
// AccountFee.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains fee configurations on a credit account. */

public struct AccountFee: Codable {

    public var method: Method
    public var type: FeeType
    /** Value of the fee, either a flat fee amount or percentage value. */
    public var value: Decimal?

    public init(method: Method, type: FeeType, value: Decimal? = nil) {
        self.method = method
        self.type = type
        self.value = value
    }


}