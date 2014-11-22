// switch Case FBZ

import UIKit

let list = 1...100
for item in list{
    switch item {
    case (15):
        println("FBZ")

    default:
        println(item)
    }
}
/* output
Trump card
2
3
4
5
6
7
8
9
10
Trump card
Trump card
Trump card
*/