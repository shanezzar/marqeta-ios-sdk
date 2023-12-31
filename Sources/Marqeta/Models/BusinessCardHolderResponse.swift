//
// BusinessCardHolderResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BusinessCardHolderResponse: Codable {

    public enum Status: String, Codable { 
        case unverified = "UNVERIFIED"
        case limited = "LIMITED"
        case active = "ACTIVE"
        case suspended = "SUSPENDED"
        case closed = "CLOSED"
    }
    /** Associates the specified account holder group with the business.  This field is returned if it exists in the resource. */
    public var accountHolderGroupToken: String?
    /** Specifies if the business is in the &#x60;ACTIVE&#x60; state on the Marqeta platform.  This field is returned if it exists in the resource. */
    public var active: Bool?
    /** Indicates that the attester agrees that the information provided is correct and truthful.  This field is returned if it exists in the resource. */
    public var attestationConsent: Bool?
    /** Timestamp of the attestation.  This field is returned if it exists in the resource. */
    public var attestationDate: Date?
    /** Name of the attester for KYC verification.  This field is returned if it exists in the resource. */
    public var attesterName: String?
    /** Title of the attester for KYC verification.  This field is returned if it exists in the resource. */
    public var attesterTitle: String?
    public var authentication: Authentication?
    public var beneficialOwner1: BeneficialOwnerResponse?
    public var beneficialOwner2: BeneficialOwnerResponse?
    public var beneficialOwner3: BeneficialOwnerResponse?
    public var beneficialOwner4: BeneficialOwnerResponse?
    /** Fictitious business name (\&quot;Doing Business As\&quot; or DBA).  This field is returned if it exists in the resource. */
    public var businessNameDba: String?
    /** Legal name of the business.  This field is returned if it exists in the resource. */
    public var businessNameLegal: String?
    /** Indicates the type of business, for example B2B (business-to-business) or B2C (business-to-consumer).  This field is returned if it exists in the resource. */
    public var businessType: String?
    /** Date and time when the business was created, in UTC. */
    public var createdTime: Date
    /** Date and time when the business was established.  This field is returned if it exists in the resource. */
    public var dateEstablished: Date?
    /** Data Universal Numbering System (DUNS) number of the business.  This field is returned if it exists in the resource. */
    public var dunsNumber: String?
    /** General description of the business.  This field is returned if it exists in the resource. */
    public var generalBusinessDescription: String?
    /** History of the business.  This field is returned if it exists in the resource. */
    public var history: String?
    /** One or more objects containing identifications associated with the business.  Objects are returned if they exist in the resource. */
    public var identifications: [IdentificationResponseModel]?
    /** Date on which the business office opened in its current location.  This field is returned if it exists in the resource. */
    public var inCurrentLocationSince: Date?
    public var incorporation: BusinessIncorporationResponse?
    /** Locations of the business&#x27; offices outside the US.  This field is returned if it exists in the resource. */
    public var internationalOfficeLocations: String?
    /** IP address of the business.  This field is returned if it exists in the resource. */
    public var ipAddress: String?
    /** Date and time when the business was last modified, in UTC. */
    public var lastModifiedTime: Date
    /** Associates any additional metadata you provide with the business.  Metadata is returned if it exists in the resource. */
    public var metadata: [String:String]?
    /** Any additional information pertaining to the business.  This field is returned if it exists in the resource. */
    public var notes: String?
    public var officeLocation: AddressResponseModel?
    /** Password for the business account on the Marqeta platform.  This field is returned if it exists in the resource. */
    public var password: String?
    /** 10-digit telephone number of the business.  This field is returned if it exists in the resource. */
    public var phone: String?
    public var primaryContact: PrimaryContactInfoModel?
    /** Indicates that the proprietor or officer of the business is also a beneficial owner.  This field is returned if it exists in the resource. */
    public var proprietorIsBeneficialOwner: Bool?
    public var proprietorOrOfficer: BusinessProprietorResponse?
    /** Specifies the state of the business on the Marqeta platform.  This field is returned if it exists in the resource. */
    public var status: Status?
    /** Taxpayer identifier of the business.  This field is returned if it exists in the resource. */
    public var taxpayerId: String?
    /** Unique identifier of the business resource.  This field is always returned. */
    public var token: String?
    /** URL of the business&#x27; website.  This field is returned if it exists in the resource. */
    public var website: String?

    public init(accountHolderGroupToken: String? = nil, active: Bool? = nil, attestationConsent: Bool? = nil, attestationDate: Date? = nil, attesterName: String? = nil, attesterTitle: String? = nil, authentication: Authentication? = nil, beneficialOwner1: BeneficialOwnerResponse? = nil, beneficialOwner2: BeneficialOwnerResponse? = nil, beneficialOwner3: BeneficialOwnerResponse? = nil, beneficialOwner4: BeneficialOwnerResponse? = nil, businessNameDba: String? = nil, businessNameLegal: String? = nil, businessType: String? = nil, createdTime: Date, dateEstablished: Date? = nil, dunsNumber: String? = nil, generalBusinessDescription: String? = nil, history: String? = nil, identifications: [IdentificationResponseModel]? = nil, inCurrentLocationSince: Date? = nil, incorporation: BusinessIncorporationResponse? = nil, internationalOfficeLocations: String? = nil, ipAddress: String? = nil, lastModifiedTime: Date, metadata: [String:String]? = nil, notes: String? = nil, officeLocation: AddressResponseModel? = nil, password: String? = nil, phone: String? = nil, primaryContact: PrimaryContactInfoModel? = nil, proprietorIsBeneficialOwner: Bool? = nil, proprietorOrOfficer: BusinessProprietorResponse? = nil, status: Status? = nil, taxpayerId: String? = nil, token: String? = nil, website: String? = nil) {
        self.accountHolderGroupToken = accountHolderGroupToken
        self.active = active
        self.attestationConsent = attestationConsent
        self.attestationDate = attestationDate
        self.attesterName = attesterName
        self.attesterTitle = attesterTitle
        self.authentication = authentication
        self.beneficialOwner1 = beneficialOwner1
        self.beneficialOwner2 = beneficialOwner2
        self.beneficialOwner3 = beneficialOwner3
        self.beneficialOwner4 = beneficialOwner4
        self.businessNameDba = businessNameDba
        self.businessNameLegal = businessNameLegal
        self.businessType = businessType
        self.createdTime = createdTime
        self.dateEstablished = dateEstablished
        self.dunsNumber = dunsNumber
        self.generalBusinessDescription = generalBusinessDescription
        self.history = history
        self.identifications = identifications
        self.inCurrentLocationSince = inCurrentLocationSince
        self.incorporation = incorporation
        self.internationalOfficeLocations = internationalOfficeLocations
        self.ipAddress = ipAddress
        self.lastModifiedTime = lastModifiedTime
        self.metadata = metadata
        self.notes = notes
        self.officeLocation = officeLocation
        self.password = password
        self.phone = phone
        self.primaryContact = primaryContact
        self.proprietorIsBeneficialOwner = proprietorIsBeneficialOwner
        self.proprietorOrOfficer = proprietorOrOfficer
        self.status = status
        self.taxpayerId = taxpayerId
        self.token = token
        self.website = website
    }

    public enum CodingKeys: String, CodingKey { 
        case accountHolderGroupToken = "account_holder_group_token"
        case active
        case attestationConsent = "attestation_consent"
        case attestationDate = "attestation_date"
        case attesterName = "attester_name"
        case attesterTitle = "attester_title"
        case authentication
        case beneficialOwner1 = "beneficial_owner1"
        case beneficialOwner2 = "beneficial_owner2"
        case beneficialOwner3 = "beneficial_owner3"
        case beneficialOwner4 = "beneficial_owner4"
        case businessNameDba = "business_name_dba"
        case businessNameLegal = "business_name_legal"
        case businessType = "business_type"
        case createdTime = "created_time"
        case dateEstablished = "date_established"
        case dunsNumber = "duns_number"
        case generalBusinessDescription = "general_business_description"
        case history
        case identifications
        case inCurrentLocationSince = "in_current_location_since"
        case incorporation
        case internationalOfficeLocations = "international_office_locations"
        case ipAddress = "ip_address"
        case lastModifiedTime = "last_modified_time"
        case metadata
        case notes
        case officeLocation = "office_location"
        case password
        case phone
        case primaryContact = "primary_contact"
        case proprietorIsBeneficialOwner = "proprietor_is_beneficial_owner"
        case proprietorOrOfficer = "proprietor_or_officer"
        case status
        case taxpayerId = "taxpayer_id"
        case token
        case website
    }

}
