//
//  RestAPI_RefresherTests.swift
//  RestAPI-RefresherTests
//
//  Created by Kamil Wrobel on 2/21/22.
//

class PokiController{
    
    //store Pokemons
    
    //fetch Pokemon
    
    //fetch Images
    
    
    
    
}

struct Poki {
    let name: String
    let id: Int
    let image: PokiImage
}

struct PokiImage {
    let image: String //front_shiny : String
}


import XCTest
@testable import RestAPI_Refresher

class RestAPI_RefresherTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testCreationOfControllerFile(){
        let sut = PokiController()
        XCTAssertNotNil(sut, "❌ Controller Class Nil")
    }
    
    func testModelExists(){
        let pokiImage = PokiImage(image: "test")
        let sut = Poki(name: "test", id: 25, image: pokiImage)
        XCTAssertNotNil(sut, "❌ Poki Model Nil")
    }
    
    func testPokiImage(){
        let sut = PokiImage(image: "test")
        XCTAssertNotNil(sut, "❌ Poki Image is Nil")
    }
    
  
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
