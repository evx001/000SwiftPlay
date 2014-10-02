import UIKit

// classes and methods
    // subclassing is optional unlike objective-C
        // class TipCalc : NSObject

// tips are configured preTax
// first we name our class 

//1
class TipCalc {
//2 declaring properties on the class
// and it's nice to give them intial values
//                              lest you declare them as options
    let total: Double
    let taxPct: Double
    let subTotal: Double

//3 we initialize with two properties 
    // init is the keyword 
    // you can have more than one
    // but like records in Haskell
    // the parameters // fields must have unique names
    init(total:Double, taxPct:Double) {
        self.total = total // "self." added here for for uniquness
        self.taxPct = taxPct // and here as well.
        subTotal = total / (taxPct + 1) // subtotal has no conflict
    }

}


