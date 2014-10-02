import UIKit
// according to Wenderlich

// LET OVER VAR!! for compiler optimization

// Infer types whenever possible // compiler is smarter than you, mostly.

// Double over Float cause if you need precision might as well be really precise


////////////// var and let ///////////////

var tutorialTeam = 56
var editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam
    // totalTeam += 1

/////// Double over Float
let priceInferred = 19.99
let priceExplicit: Double = 19.99

//// Bools ////
let onSaleInferred = true
let onSaleExplicit: Bool = false

///// Strings ////
let nameInferred = "Winnie the Poo"
let nameExplicit = "Winnie the Poo"

///// if and string interp ////
if onSaleInferred {
    println("\(nameInferred) on sale for \(priceInferred)!")
}else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}
// to output any expression as a string ....
// \(MyExpressionsResult) 

print("\(totalTeam)")


// -> view -> assistant editor -> console output from playground
