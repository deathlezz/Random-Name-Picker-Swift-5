//
//  Random Name Picker (formula)
//
//  Created by deathlezz on 22/10/2021.
//

let namesAmount = 5
let namesArray = ["Jack", "Josh", "Jerry", "Rick", "Sue"]
var newNamesArray: [String] = []

while newNamesArray.count != namesAmount {
    let random = namesArray.randomElement()
    
    if !newNamesArray.contains(random!) {
        newNamesArray.append(random!)
    }
}

print(newNamesArray)
// ["Rick", "Sue", "Jerry", "Josh", "Jack"]
