//
//  PokiModelTests.swift
//  RestAPI-RefresherTests
//
//  Created by Kamil Wrobel on 2/21/22.
//

import XCTest
@testable import RestAPI_Refresher

class PokiModelTests: XCTestCase {
    
    var sut: Pokemon!
    var pokiImage: PokiImage!

    override func setUpWithError() throws {
        pokiImage = PokiImage(image: URL(string: "www.google.com")!)
        sut = Pokemon(name: "test", id: 25, images: pokiImage)
    }
    

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //MARK: - Initial Values for the model
    func testModelExists(){
        XCTAssertNotNil(sut, "❌ Poki Model Nil")
    }
    
    func testPokiImage(){
        XCTAssertNotNil(pokiImage, "❌ Poki Image is Nil")
    }
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
