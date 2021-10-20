//
//  Random Name Picker
//
//  Created by deathlezz on 23/05/2021.
//

var nameCounter = 1               // name counter
var namesArray: [String] = []     // array of entered names
var namesArray2: [String] = []    // final array of unique and randomly picked names
var pickedNamePlace = 1           // place of the picked name

print("* Welcome to Random Name Picker *")

func picker() {

    print()
    print("How many names do you want to enter ?")

    if let namesNumber = Int(readLine()!) {     // total number of names in the array
        
        if namesNumber > 1 {     // total number of names in the array must be bigger than 1
            
            while namesNumber != namesArray.count {
                
                print("Enter name number \(nameCounter):")
                
                let name = readLine()
                
                if (name == name) != namesArray.contains(name!) {
                    
                    if !name!.isEmpty && !name!.hasPrefix(" ") && !name!.hasSuffix(" ") {     // avoid ENTER input & whitespaces
                    
                        namesArray.append(name!)     // add a unique name to the first array of names
                        
                        nameCounter += 1     // increase the number of the name
                        
                    } else {
                        print()
                        print("* Avoid whitespaces *")
                        print()
                    }
                
                } else {
                    print()
                    print("* This name is already in use *")
                    print()
                }
            }
            
            func nameNumber() {
            
                print("How many names do you want to pick:")
                
                if let nameAmount = Int(readLine()!) {     // amount of names to pick
                    
                    if nameAmount > 0 && nameAmount <= namesArray.count {     // amount of names to pick must be > 0 & <= number of names in the array
                        
                        while nameAmount != namesArray2.count {
                            
                            let randomName = namesArray.randomElement()     // search for a random name
                            
                            if (randomName != nil) != namesArray2.contains(randomName!) {     // check if the found name is unique
                                
                                namesArray2.append(randomName!)     // add unique name to second array of names
                            }
                        }
                        
                        print()
                        print("Result:")
                        print()
                        
                        for output in namesArray2 {                     // final output
                            print("\(pickedNamePlace). \(output)")
                            pickedNamePlace += 1                        // increase the place of the picked names
                        }
                        
                        nameCounter = 1                                 // reset the data
                        namesArray = []
                        namesArray2 = []
                        pickedNamePlace = 1
                        return picker()
                        
                    } else {
                        print()
                        print("* Choose at least 1 name, but no more than \(namesArray.count) *")
                        print()
                        return nameNumber()
                    }
                    
                } else {
                    print()
                    print("* Enter numbers only *")
                    print()
                    return nameNumber()
                }
            }
            nameNumber()
            
        } else {
            print()
            print("* Enter at least 2 names *")
            return picker()
        }
        
    } else {
        print()
        print("* Enter numbers only *")
        return picker()
    }
}
picker()
