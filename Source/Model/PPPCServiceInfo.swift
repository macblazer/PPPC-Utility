//
//  PPPCServiceInfo.swift
//  PPPC Utility
//
//  MIT License
//
//  Copyright (c) 2022 Jamf Software
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

/// Holds the information about a single PPPC Service provided by Apple.
struct PPPCServiceInfo: Decodable {
    let mdmKey: String
    let englishName: String
    let englishDescription: String
    let entitlements: [String]?
    let denyOnly: Bool?
    let allowStandardUsersMacOS11Plus: Bool?

    var userHelp: String {
        if let entitlements = entitlements {
            return "\(englishDescription)\n\nMDM Key: \(mdmKey)\nRelated entitlements: \(entitlements)"
        } else {
            return "\(englishDescription)\n\nMDM Key: \(mdmKey)"
        }
    }
}
