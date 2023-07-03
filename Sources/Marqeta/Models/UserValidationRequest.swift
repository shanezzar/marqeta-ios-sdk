//
// UserValidationRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about the user. */

public struct UserValidationRequest: Codable {

    /** Date of birth of the user associated with this card. */
    public var birthDate: Date?
    /** Telephone number of the user associated with this card. */
    public var phone: String?
    /** Random six-digit numeric postfix generated for some bulk card orders.  See &lt;&lt;/core-api/bulk-card-orders, Bulk Card Orders&gt;&gt; for more information about numeric postfixes. */
    public var randomNameLine1Postfix: String?
    /** Social Security Number (SSN) of the user associated with this card. */
    public var ssn: String?

    public init(birthDate: Date? = nil, phone: String? = nil, randomNameLine1Postfix: String? = nil, ssn: String? = nil) {
        self.birthDate = birthDate
        self.phone = phone
        self.randomNameLine1Postfix = randomNameLine1Postfix
        self.ssn = ssn
    }

    public enum CodingKeys: String, CodingKey { 
        case birthDate = "birth_date"
        case phone
        case randomNameLine1Postfix = "random_name_line1_postfix"
        case ssn
    }

}