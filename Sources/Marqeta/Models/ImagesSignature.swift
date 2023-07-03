//
// ImagesSignature.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies an image of the cardholder&#x27;s signature. */

public struct ImagesSignature: Codable {

    /** Specifies a PNG image of the cardholder&#x27;s signature. */
    public var name: String?

    public init(name: String? = nil) {
        self.name = name
    }


}