//
// CardPersonalization.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies personalized attributes to be added to the card. */

public struct CardPersonalization: Codable {

    public enum PersoType: String, Codable { 
        case emboss = "EMBOSS"
        case laser = "LASER"
        case flat = "FLAT"
    }
    public var carrier: Carrier?
    public var images: Images?
    /** Specifies the type of card personalization. */
    public var persoType: PersoType?
    public var text: MarqetaText

    public init(carrier: Carrier? = nil, images: Images? = nil, persoType: PersoType? = nil, text: MarqetaText) {
        self.carrier = carrier
        self.images = images
        self.persoType = persoType
        self.text = text
    }

    public enum CodingKeys: String, CodingKey { 
        case carrier
        case images
        case persoType = "perso_type"
        case text
    }

}
