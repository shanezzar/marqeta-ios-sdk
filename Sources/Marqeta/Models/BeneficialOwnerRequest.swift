//
// BeneficialOwnerRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about the beneficial owner of the business, if applicable.  This object is required for KYC verification in the United States if the business has a beneficial owner. Do not include information about the proprietor or business officer in a &#x60;beneficial_owner&#x60; object. If the proprietor or officer of the business is also a beneficial owner, you must indicate that in the &#x60;proprietor_is_beneficial_owner&#x60; field in the body field details of the business. */

public struct BeneficialOwnerRequest: Codable {

    /** Date of birth of the beneficial owner. */
    public var dob: Date?
    /** First name of the beneficial owner. */
    public var firstName: String?
    public var home: AddressRequestModel?
    /** Last name of the beneficial owner. */
    public var lastName: String?
    /** Middle name of the beneficial owner. */
    public var middleName: String?
    /** Ten-digit phone number of the beneficial owner. */
    public var phone: String?
    /** Nine-digit Social Security Number (SSN) of the beneficial owner. */
    public var ssn: String?
    /** Title of the beneficial owner. */
    public var title: String?

    public init(dob: Date? = nil, firstName: String? = nil, home: AddressRequestModel? = nil, lastName: String? = nil, middleName: String? = nil, phone: String? = nil, ssn: String? = nil, title: String? = nil) {
        self.dob = dob
        self.firstName = firstName
        self.home = home
        self.lastName = lastName
        self.middleName = middleName
        self.phone = phone
        self.ssn = ssn
        self.title = title
    }

    public enum CodingKeys: String, CodingKey { 
        case dob
        case firstName = "first_name"
        case home
        case lastName = "last_name"
        case middleName = "middle_name"
        case phone
        case ssn
        case title
    }

}
