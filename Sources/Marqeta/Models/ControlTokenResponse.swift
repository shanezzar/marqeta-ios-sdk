//
// ControlTokenResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ControlTokenResponse: Codable {

    /** Unique value generated as a result of issuing a &#x60;POST&#x60; request to the &#x60;/pins/controltoken&#x60; endpoint. This value cannot be updated. */
    public var controlToken: String

    public init(controlToken: String) {
        self.controlToken = controlToken
    }

    public enum CodingKeys: String, CodingKey { 
        case controlToken = "control_token"
    }

}
