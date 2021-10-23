//
//  Random Name Picker (formula)
//
//  Created by deathlezz on 22/10/2021.
//

// amount of names you want to pick
let namesAmount = 5
// array of entered names to pick
let namesArray = ["Jack", "Josh", "Jerry", "Rick", "Sue"]
// array of picked and unique names
var newNamesArray: [String] = []

while newNamesArray.count != namesAmount {
    // pick random name from array
    let random = namesArray.randomElement()
    
    // add only unique name to the new array
    if !newNamesArray.contains(random!) {
        newNamesArray.append(random!)
    }
}
// output
print(newNamesArray)
// ["Rick", "Sue", "Jerry", "Josh", "Jack"]
