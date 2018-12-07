//
//  RSwiftDemoTests.swift
//  RSwiftDemoTests
//
//  Created by Antonin MOLIERES on 01/12/2018.
//  Copyright © 2018 amolieres. All rights reserved.
//

import XCTest
@testable import RSwiftDemo

class RSwiftDemoTests: XCTestCase {

    func testAllResourcesOK() {
        do {
            try R.validate()
        } catch {
            XCTFail("Resources missing : \(error)")
        }
    }

}
