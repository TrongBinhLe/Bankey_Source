//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by admin on 15/03/2023.
//

import Foundation
import XCTest

@testable import Bankey

class CurrencyFormatterTests: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakInToDollarsAndCents(234223.23)
        XCTAssertEqual(result.0, "234,223")
        XCTAssertEqual(result.1, "23")
    }
    
    func testBreakZeroDollaIntoCents() throws {
        let result = formatter.breakInToDollarsAndCents(0.00)
        XCTAssertEqual(result.0, "0")
        XCTAssertEqual(result.1, "00")
    }
    
    func testDollarFormatted() throws {
        let result = formatter.dollarsFormatted(234223)
        XCTAssertEqual(result, "$234,223.00")
    }
    
    func testZeroDollarFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "$0.00")
    }
    
        
}
