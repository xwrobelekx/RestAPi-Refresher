//
//  RestAPI_RefresherTests.swift
//  RestAPI-RefresherTests
//
//  Created by Kamil Wrobel on 2/21/22.
//






import XCTest
@testable import RestAPI_Refresher

class PokiControllerTests: XCTestCase {
    
    var sut : PokiController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = PokiController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }


    func testCreationOfControllerFile(){
        XCTAssertNotNil(sut, "❌ Controller Class Nil")
    }
    
    
    func testPokemonStorageExists(){
        let pokiArray = sut.pokemons
        XCTAssertEqual(pokiArray.count, 0, "❌ Poki Array is Nil")
    }
    
    func testFetchPokemonMethodExists(){
        XCTAssertNotNil(sut.fetchPokemonBy(name: "Pika"), "❌ Fetch Pokemon method exists")

    }
    
    func testFetchImageMethodExists(){
        XCTAssertNotNil(sut.fetchImages(), "❌ Fetch images method exists")

    }
    
    
    func testControllerFetchesPokemonAndAddsItToArray(){
        sut.fetchPokemonBy(id: 25) { pokemon in
            if let pokemon = pokemon {
                self.sut.pokemons.append(pokemon)
            }
        }
        sleep(1)
        XCTAssertEqual(sut.pokemons.count, 1)
    }
    
    func testControllerFetching20Pokemons(){
        sut.fetchTwentyPokemons()
        sleep(1)
        XCTAssertEqual(sut.pokemons.count, 20)
    }
    
    func testControllerFetching40Pokemons(){
        sut.fetchTwentyPokemons()
        sut.fetchTwentyPokemons()
        sleep(1)
        XCTAssertEqual(sut.pokemons.count, 40)
    }
    
    func testControllerFetching60Pokemons(){
        sut.fetchTwentyPokemons()
        sut.fetchTwentyPokemons()
        sut.fetchTwentyPokemons()
        sleep(1)
        XCTAssertEqual(sut.pokemons.count, 60)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
