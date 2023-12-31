//
// ProgramFundingSourceUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProgramFundingSourceUpdateRequest: Codable {

    /** Indicates whether the program funding source is active. */
    public var active: Bool?
    /** Name of the program funding source. */
    public var name: String?

    public init(active: Bool? = nil, name: String? = nil) {
        self.active = active
        self.name = name
    }


}
