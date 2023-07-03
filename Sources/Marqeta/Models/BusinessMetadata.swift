//
// BusinessMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains customer-provided information about the business that funded the transaction. */

public struct BusinessMetadata: Codable {

    /** Associates customer-provided metadata with the business. */
    public var metadata: [String:String]?

    public init(metadata: [String:String]? = nil) {
        self.metadata = metadata
    }


}
