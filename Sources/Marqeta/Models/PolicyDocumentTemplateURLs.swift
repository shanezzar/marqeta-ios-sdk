//
// PolicyDocumentTemplateURLs.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains one or more URLs for a template. */

public struct PolicyDocumentTemplateURLs: Codable {

    /** URL to the HTML version of the document template. */
    public var html: String

    public init(html: String) {
        self.html = html
    }


}
