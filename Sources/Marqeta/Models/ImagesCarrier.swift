//
// ImagesCarrier.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies personalized images that appear on the card carrier. */

public struct ImagesCarrier: Codable {

    /** Specifies a custom message that appears on the card carrier. */
    public var message1: String?
    /** Specifies a PNG image to display on the card carrier. */
    public var name: String?

    public init(message1: String? = nil, name: String? = nil) {
        self.message1 = message1
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case message1 = "message_1"
        case name
    }

}