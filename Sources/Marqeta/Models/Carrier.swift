//
// Carrier.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies attributes of the card carrier. */

public struct Carrier: Codable {

    /** Specifies an image to display on the card carrier. */
    public var logoFile: String?
    /** Specifies a thumbnail-sized rendering of the image specified in the &#x60;logo_file&#x60; field. */
    public var logoThumbnailFile: String?
    /** Specifies a text file containing a custom message to print on the card carrier. */
    public var messageFile: String?
    /** Specifies a custom message that appears on the card carrier. */
    public var messageLine: String?
    /** Specifies the card carrier template to use. */
    public var templateId: String?

    public init(logoFile: String? = nil, logoThumbnailFile: String? = nil, messageFile: String? = nil, messageLine: String? = nil, templateId: String? = nil) {
        self.logoFile = logoFile
        self.logoThumbnailFile = logoThumbnailFile
        self.messageFile = messageFile
        self.messageLine = messageLine
        self.templateId = templateId
    }

    public enum CodingKeys: String, CodingKey { 
        case logoFile = "logo_file"
        case logoThumbnailFile = "logo_thumbnail_file"
        case messageFile = "message_file"
        case messageLine = "message_line"
        case templateId = "template_id"
    }

}