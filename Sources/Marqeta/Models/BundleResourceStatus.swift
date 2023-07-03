//
// BundleResourceStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Status of the bundle.  * &#x60;DRAFT&#x60; - The bundle is in the process of being created. * &#x60;PENDING_APPROVAL&#x60; - The bundle has been created and is awaiting approval. * &#x60;SENT_FOR_REVISION&#x60; - The bundle has been returned for revision. * &#x60;ACTIVE&#x60; - The bundle is active. * &#x60;REJECTED&#x60; - The bundle has been rejected; this status cannot be changed. * &#x60;ARCHIVED&#x60; - The previously active bundle has been archived. * &#x60;APPROVED&#x60; - The bundle has been approved (after having been sent for approval). */
public enum BundleResourceStatus: String, Codable {
    case draft = "DRAFT"
    case pendingApproval = "PENDING_APPROVAL"
    case sentForRevision = "SENT_FOR_REVISION"
    case active = "ACTIVE"
    case rejected = "REJECTED"
    case archived = "ARCHIVED"
    case approved = "APPROVED"
}