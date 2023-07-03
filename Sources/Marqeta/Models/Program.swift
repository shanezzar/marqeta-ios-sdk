//
// Program.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information about the program on the Marqeta platform. */

public struct Program: Codable {

    /** The program long code on the Marqeta platform. */
    public var longCode: String
    /** The program identifier on the Marqeta platform. */
    public var programId: String
    /** The program short code on the Marqeta platform. */
    public var shortCode: String

    public init(longCode: String, programId: String, shortCode: String) {
        self.longCode = longCode
        self.programId = programId
        self.shortCode = shortCode
    }

    public enum CodingKeys: String, CodingKey { 
        case longCode = "long_code"
        case programId = "program_id"
        case shortCode = "short_code"
    }

}
