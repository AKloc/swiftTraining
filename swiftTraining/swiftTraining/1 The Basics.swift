//
//  1 The Basics.swift
//  swiftTraining
//
//  Created by Andy Kloc on 6/30/20.
//  Copyright © 2020 Andy Kloc. All rights reserved.
//

import Foundation

class TheBasics
{
    init()
    {
        // Semicolons not required.
        print("Hi from TheBasics.swift")
        
        // Similar to JavaScript, "let" declares constants.
        let thisIsAConstant = 3
        var thisIsNotAConst = "Nope"
        
        // Supports multiple declarations on one line.
        var x = 0.0, y = 0.2, z = 0.5
        
        // "var" stuff is cool, but we can explicitely declare
        // type by using " : type"
        var specific : String
        specific = "I'm definitely a string."
        
        // This apparently works, too. Declare and initialize on the same line.
        let specific2 : String = "Does this work?"
        print(specific2)
        
        // You can use any unicode characters. Neat?
        let 🐶 = "dog emoji."
        
        // Basic types - note the capitalization!
        let thisInt: Int = 5
        let thisUInt: UInt = 50000
        let someFloat: Float = 3.14
        let someDouble: Double = -8.97
        let someString: String = "derp"
        let someCharacter: Character = "c" // can't use single quotes for characters.
        
        // Booleans are lowercase
        var thisIsTrue = true
        
        // String interpolation: in the string, use \(variable)
        print("The value of someString is \(someString)")
        
        // Tuples
        let http404Error = (404, "Not Found")
        print(http404Error) // prints " (404, "Not Found") "
        // tuple.0 pulls the index at that location.
        print("The first value of the tuple is \(http404Error.0)")
        print("The second value of the tuple is \(http404Error.1)")
        
        // Optionals - these are basically nullables.
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        // convertedNumber is inferred to be of type Int?, which is optional.
        var isThisNullable : Int? = 4
        
        // "nil" = null.
        var someNullableString : String? // no initailizer sets this to nil. Fairly obvious.
        
        // If statements
        if(someNullableString == nil)
        {
            print("That nillable string is nil, alright.")
        }
        someNullableString = "Not nillable anymore."
        if(someNullableString != nil)
        {
            print("The string's value is \(someNullableString)")
        }
        // Set it back to nil again and force unwrap it (use an ! after an optional type)
        someNullableString = nil
        //print("This definitely won't work... \(someNullableString!)")
        //print("This works because we aren't forcing the unpacking... \(someNullableString)")
        
        // Optional Binding - lets us find out whether an optional has a value. Sounds like .net's .HasValue(). Seems like checking for nil in advance is easier and more readable? I'm probably missing something here.
        //if let constant = someOptional{... do stuff... }
        
        // ... there's a lot of stuff in here about implictly unwrapping. Skipping.
        
        // Error Handling is a little difference. Use a "do" / "catch" block, and stick a "try" in front of the specific line/s that could throw exceptions
        do
        {
            var willItError = try self.iCanThrowErrors()
        }
        catch
        {
            print("An error got thrown")
        }
        
        
        
    }
    
    func iCanThrowErrors() throws -> String {
        return "No error for you"
    }
}
