//
//  Unitest_iOSTests.swift
//  Unitest iOSTests
//
//  Created by Nipa Chamyuang on 18/10/2563 BE.
//
import Quick
import Nimble
@testable import Unitest_iOS

class ReplaceOccurencesTests: QuickSpec {
    override func spec() { //overide เพื่อที่จะใช้ describe กับ it
        describe("Replace occurences") {
            it("should return hello when input is hello") { // จะเกิดอะไรขึ้นบ้าง
                //Given
                let input = "hello"
                let expected = "hello"
                
                //When
                let actual = Validation.shared.replaceOccurencesOf(
                    input,
                    with: .username)
                
                //Then
                expect(actual).to(equal(expected)) //nimble
            }
            
            it("should return emthy string when input is @#$^&") { // จะเกิดอะไรขึ้นบ้าง
                //Given
                let input = "@#$^&"
                let expected = ""
                
                //When
                let actual = Validation.shared.replaceOccurencesOf(
                    input,
                    with: .username)
                
                //Then
                expect(actual).to(equal(expected)) //nimble
            }
            
            it("should return emthy string when input is 😀😀😀") { // จะเกิดอะไรขึ้นบ้าง
                //Given
                let input = "😀😀😀"
                let expected = ""
                
                //When
                let actual = Validation.shared.replaceOccurencesOf(
                    input,
                    with: .username)
                
                //Then
                expect(actual).to(equal(expected))
            }
            
            it("should return 1234 when input is username@1234ตัวอย่าง") { // จะเกิดอะไรขึ้นบ้าง
                //Given
                let input = "username@1234ตัวอย่าง"
                let expected = "username1234"
                
                //When
                let actual = Validation.shared.replaceOccurencesOf(
                    input,
                    with: .username)
                
                //Then
                expect(actual).to(equal(expected))
            }
        }
    }
}

