import UIKit

// classes and methods
    // subclassing is optional unlike objective-C
        // class TipCalc : NSObject

// tips are configured preTax
// first we name our class 
//////////////////////////////////////////////////////////////////
//1
class TipCalculator {
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
// 4 
        func calcTipWithTipPct(tipPct:Double) -> Double {
        return subTotal * tipPct
    }
// 5 ///////////////////////////////////////////////////////
// Dictionary here
    // 1
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15,0.18,0.20]
//        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
    // 2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
        let intPct = Int(possibleTip * 100)
    // 3
        retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
///////////////////////////////////////////////////
}
// end of object /////////////////////////////////

let tipCalc = TipCalculator (total: 33.25, taxPct: 0.0875)
tipCalc.returnPossibleTips()





// tipCalc.printPossibleTips()

// output
//> "15%: 4.70518867924528"
//> "18%: 5.64622641509434"
//> "20%: 6.27358490566038"

//////////////////////////////////////////////////////
// 5
//    func printPossibleTips() {
//        let possibleTipsInferred = [0.15,0.18,0.20]
//        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
//        for possibleTip in possibleTipsInferred {
//            println("\(possibleTip*100)%: \calcTipWithTipPct(possible))")
//        }

//  what was prior to refactoring the above
//        println("15%: \(calcTipWithTipPct(0.15))")
//        println("18%: \(calcTipWithTipPct(0.18))")
//        println("20%: \(calcTipWithTipPct(0.20))")
/////////////////////////////////////////////////////
// Note: calling a method on a class instance all but the first must be named
/////////////////////////////////////////////////////
