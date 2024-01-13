//
// ErrorModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ErrorModel: Codable, JSONEncodable, Hashable {

    static let statusRule = NumericRule<Int>(minimum: 100, exclusiveMinimum: false, maximum: 600, exclusiveMaximum: false, multipleOf: nil)
    public var error: String
    public var status: Int
    public var detail: String?

    public init(error: String, status: Int, detail: String? = nil) {
        self.error = error
        self.status = status
        self.detail = detail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case error
        case status
        case detail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(error, forKey: .error)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(detail, forKey: .detail)
    }
}

