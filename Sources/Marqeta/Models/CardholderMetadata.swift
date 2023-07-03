//
// CardholderMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains customer-provided information about the cardholder that performed the transaction. */

public struct CardholderMetadata: Codable {

    /** Associates customer-provided metadata with the cardholder. */
    public var metadata: [String:String]?

    public init(metadata: [String:String]? = nil) {
        self.metadata = metadata
    }


}
