//
// FileResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FileResponse: Codable {

    public var fileType: FileType
    public var links: FileLinks
    /** Unique identifier used to acknowledge that the file has been disclosed to the applicant.  If the file was already disclosed, a null value is returned.  *NOTE*: The tracking token is only valid for 14 calendar days. */
    public var trackingToken: String?

    public init(fileType: FileType, links: FileLinks, trackingToken: String? = nil) {
        self.fileType = fileType
        self.links = links
        self.trackingToken = trackingToken
    }

    public enum CodingKeys: String, CodingKey { 
        case fileType = "file_type"
        case links
        case trackingToken = "tracking_token"
    }

}
