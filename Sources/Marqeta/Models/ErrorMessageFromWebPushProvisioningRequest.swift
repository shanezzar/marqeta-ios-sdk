//
// ErrorMessageFromWebPushProvisioningRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ErrorMessageFromWebPushProvisioningRequest: Codable {

    /** Code for the error that occurred. */
    public var errorCode: String
    /** Descriptive error message. */
    public var errorMessage: String

    public init(errorCode: String, errorMessage: String) {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
    }

    public enum CodingKeys: String, CodingKey { 
        case errorCode = "error_code"
        case errorMessage = "error_message"
    }

}
