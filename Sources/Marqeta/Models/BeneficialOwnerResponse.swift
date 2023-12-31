//
// BeneficialOwnerResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about the beneficial owner of the business, if applicable. */

public struct BeneficialOwnerResponse: Codable {

    /** First name of the beneficial owner.  This field is returned if it exists in the resource. */
    public var firstName: String?
    /** Date of birth of the beneficial owner.  This field is returned if it exists in the resource. */
    public var getdob: Date?
    public var home: AddressResponseModel?
    /** Last name of the beneficial owner.  This field is returned if it exists in the resource. */
    public var lastName: String?
    /** Middle name of the beneficial owner.  This field is returned if it exists in the resource. */
    public var middleName: String?
    /** Ten-digit phone number of the beneficial owner.  This field is returned if it exists in the resource. */
    public var phone: String?
    /** Title of the beneficial owner.  This field is returned if it exists in the resource. */
    public var title: String?

    public init(firstName: String? = nil, getdob: Date? = nil, home: AddressResponseModel? = nil, lastName: String? = nil, middleName: String? = nil, phone: String? = nil, title: String? = nil) {
        self.firstName = firstName
        self.getdob = getdob
        self.home = home
        self.lastName = lastName
        self.middleName = middleName
        self.phone = phone
        self.title = title
    }

    public enum CodingKeys: String, CodingKey { 
        case firstName = "first_name"
        case getdob
        case home
        case lastName = "last_name"
        case middleName = "middle_name"
        case phone
        case title
    }

}
