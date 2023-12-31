//
// FileLinks.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains links to the file in different formats. */

public struct FileLinks: Codable {

    /** Link to the HTML version of the file. */
    public var html: String?
    /** Link to the JSON version of the file. */
    public var json: String?
    /** Link to the PDF version of the file. */
    public var pdf: String?

    public init(html: String? = nil, json: String? = nil, pdf: String? = nil) {
        self.html = html
        self.json = json
        self.pdf = pdf
    }


}
