//
// Pos.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about the point of sale, including details on how the card was presented.  Returned if provided by the card network, and the request uses Transaction Model v2 of the Marqeta Core API. Not returned for Transaction Model v1 requests. */

public struct Pos: Codable {

    public enum CardDataInputCapability: String, Codable { 
        case unknown = "UNKNOWN"
        case noTerminal = "NO_TERMINAL"
        case magStripe = "MAG_STRIPE"
        case magStripeContactless = "MAG_STRIPE_CONTACTLESS"
        case magStripeKeyEntry = "MAG_STRIPE_KEY_ENTRY"
        case chip = "CHIP"
        case chipContactless = "CHIP_CONTACTLESS"
        case chipMagStripe = "CHIP_MAG_STRIPE"
        case chipMagStripeKeyEntry = "CHIP_MAG_STRIPE_KEY_ENTRY"
        case keyEntry = "KEY_ENTRY"
        case ocr = "OCR"
        case micr = "MICR"
        case barCode = "BAR_CODE"
    }
    public enum CardholderAuthenticationMethod: String, Codable { 
        case unspecified = "UNSPECIFIED"
        case nonAuthenticated = "NON_AUTHENTICATED"
        case signature = "SIGNATURE"
        case pin = "PIN"
        case idVerified = "ID_VERIFIED"
    }
    public enum PanEntryMode: String, Codable { 
        case unknown = "UNKNOWN"
        case manual = "MANUAL"
        case magStripe = "MAG_STRIPE"
        case magStripeContactless = "MAG_STRIPE_CONTACTLESS"
        case barCode = "BAR_CODE"
        case ocr = "OCR"
        case micr = "MICR"
        case chip = "CHIP"
        case chipContactless = "CHIP_CONTACTLESS"
        case cardOnFile = "CARD_ON_FILE"
        case chipFallback = "CHIP_FALLBACK"
        case other = "OTHER"
    }
    public enum PinEntryMode: String, Codable { 
        case unknown = "UNKNOWN"
        case _true = "TRUE"
        case _false = "FALSE"
        case defective = "DEFECTIVE"
    }
    public enum TerminalAttendance: String, Codable { 
        case unspecified = "UNSPECIFIED"
        case attended = "ATTENDED"
        case unattended = "UNATTENDED"
        case noTerminal = "NO_TERMINAL"
    }
    public enum TerminalLocation: String, Codable { 
        case onPremise = "ON_PREMISE"
        case offPremiseMerchant = "OFF_PREMISE_MERCHANT"
        case offPremiseCardholder = "OFF_PREMISE_CARDHOLDER"
        case noTerminal = "NO_TERMINAL"
    }
    public enum TerminalType: String, Codable { 
        case autoDispenserWithPin = "AUTO_DISPENSER_WITH_PIN"
        case selfService = "SELF_SERVICE"
        case limitedAmount = "LIMITED_AMOUNT"
        case inFlight = "IN_FLIGHT"
        case ecommerce = "ECOMMERCE"
        case transponder = "TRANSPONDER"
    }
    /** How the terminal accepts card data. */
    public var cardDataInputCapability: CardDataInputCapability?
    /** Whether the cardholder was present during the transaction. */
    public var cardHolderPresence: Bool?
    /** Whether the card was present during the transaction. */
    public var cardPresence: Bool?
    /** Method used to authenticate the cardholder. */
    public var cardholderAuthenticationMethod: CardholderAuthenticationMethod?
    /** Country code of the card acceptor or terminal. */
    public var countryCode: String?
    /** Whether the transaction is an installment payment. */
    public var isInstallment: Bool?
    /** Whether the transaction is recurring. */
    public var isRecurring: Bool?
    /** Method used for capturing the card primary account number (PAN) during the transaction. */
    public var panEntryMode: PanEntryMode?
    /** Whether the card acceptor or terminal is capable of partial approvals. */
    public var partialApprovalCapable: Bool?
    /** Whether the card acceptor or terminal can capture card personal identification numbers (PINs).  *NOTE:* This field does not indicate whether a PIN was entered. */
    public var pinEntryMode: PinEntryMode?
    /** Indicates whether a PIN was presented during the transaction. */
    public var pinPresent: Bool?
    /** Whether the card acceptor/terminal supports purchase-only approvals. */
    public var purchaseAmountOnly: Bool?
    /** Whether the card acceptor/terminal was attended. */
    public var terminalAttendance: TerminalAttendance?
    /** Card acceptor or terminal identification number. */
    public var terminalId: String?
    /** Location of the card acceptor/terminal. */
    public var terminalLocation: TerminalLocation?
    /** Type of card acceptor/terminal. */
    public var terminalType: TerminalType?
    /** United States ZIP code of the card acceptor or terminal. */
    public var zip: String?

    public init(cardDataInputCapability: CardDataInputCapability? = nil, cardHolderPresence: Bool? = nil, cardPresence: Bool? = nil, cardholderAuthenticationMethod: CardholderAuthenticationMethod? = nil, countryCode: String? = nil, isInstallment: Bool? = nil, isRecurring: Bool? = nil, panEntryMode: PanEntryMode? = nil, partialApprovalCapable: Bool? = nil, pinEntryMode: PinEntryMode? = nil, pinPresent: Bool? = nil, purchaseAmountOnly: Bool? = nil, terminalAttendance: TerminalAttendance? = nil, terminalId: String? = nil, terminalLocation: TerminalLocation? = nil, terminalType: TerminalType? = nil, zip: String? = nil) {
        self.cardDataInputCapability = cardDataInputCapability
        self.cardHolderPresence = cardHolderPresence
        self.cardPresence = cardPresence
        self.cardholderAuthenticationMethod = cardholderAuthenticationMethod
        self.countryCode = countryCode
        self.isInstallment = isInstallment
        self.isRecurring = isRecurring
        self.panEntryMode = panEntryMode
        self.partialApprovalCapable = partialApprovalCapable
        self.pinEntryMode = pinEntryMode
        self.pinPresent = pinPresent
        self.purchaseAmountOnly = purchaseAmountOnly
        self.terminalAttendance = terminalAttendance
        self.terminalId = terminalId
        self.terminalLocation = terminalLocation
        self.terminalType = terminalType
        self.zip = zip
    }

    public enum CodingKeys: String, CodingKey { 
        case cardDataInputCapability = "card_data_input_capability"
        case cardHolderPresence = "card_holder_presence"
        case cardPresence = "card_presence"
        case cardholderAuthenticationMethod = "cardholder_authentication_method"
        case countryCode = "country_code"
        case isInstallment = "is_installment"
        case isRecurring = "is_recurring"
        case panEntryMode = "pan_entry_mode"
        case partialApprovalCapable = "partial_approval_capable"
        case pinEntryMode = "pin_entry_mode"
        case pinPresent = "pin_present"
        case purchaseAmountOnly = "purchase_amount_only"
        case terminalAttendance = "terminal_attendance"
        case terminalId = "terminal_id"
        case terminalLocation = "terminal_location"
        case terminalType = "terminal_type"
        case zip
    }

}
