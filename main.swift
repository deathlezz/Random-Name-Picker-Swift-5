//
//  Random Name Picker
//
//  Created by deathlezz on 23/05/2021.
//


var nameCounter = 1               // name counter
var namesArray: [String] = []     // set of entered names
var namesArray2: [String] = []    // final set of unique and randomly picked names


print("* Welcome to Random Name Picker *")
print()
print("How many names do you want to enter ?")

if let namesNumber = Int(readLine()!) {     // total number of names in the set
    
    print()
    
    if namesNumber > 0 {     // total number of names in the set must be bigger than 0
        
        while namesNumber != namesArray.count {
            
            print("Enter name number \(nameCounter):")
            
            let name = readLine()!.filter {!$0.isWhitespace}     // avoid whitespaces
            
            if (name == name) != namesArray.contains(name) {
                
                if name != "" {     // avoid ENTER input
                
                    namesArray.append(name)     // add a unique name to the first set of names
                    
                    nameCounter += 1     // increase the number of the name
                    
                } else {
                    print("* Whitespace is not a name *")
                    print()
                }
            
            } else {
                print()
                print("* This name is already in use *")
                print()
            }
            
        }
        
        print()
        print("How many names do you want to pick:")
        
        if let nameAmount = Int(readLine()!) {     // amount of names to pick
            
            if nameAmount > 0 && nameAmount <= namesArray.count {     // amount of names to pick must be > 0 & <= number of names in the set
                
                while nameAmount != namesArray2.count {
                    
                    let randomName = namesArray.randomElement()     // search for a random name
                    
                    if (randomName != nil) != namesArray2.contains(randomName!) {     // check if the found name is unique
                        
                        namesArray2.append(randomName!)     // add unique name to second set of names
                    }
           
                }
                
                print()
                print("Result:")
                print()
                
                for output in namesArray2 {     // final output
                    print(output)
                }
                
                print()
                
            } else {
                print()
                print("* Enter value > 0 & <= number of names in the set *")
                print()
            }
            
        } else {
            print()
            print("* Enter numbers only *")
            print()
        }
        
    } else {
        print("* Enter value > 0 *")
        print()
    }
    
} else {
    print()
    print("* Enter numbers only *")
    print()
}
