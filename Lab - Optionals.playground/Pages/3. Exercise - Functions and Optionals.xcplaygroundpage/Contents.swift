/*:
## Exercise - Functions and Optionals

 If an app asks for a user's age, it may be because the app requires a user to be over a certain age to use some of the services it provides. Write a function called `checkAge` that takes one parameter of type `String`. The function should try to convert this parameter into an `Int` value and then check if the user is over 18 years old. If he/she is old enough, print "Welcome!", otherwise print "Sorry, but you aren't old enough to use our app." If the `String` parameter cannot be converted into an `Int` value, print "Sorry, something went wrong. Can you please re-enter your age?" Call the function and pass in `userInputAge` below as the single parameter. Then call the function and pass in a string that can be converted to an integer.
 */
let userInputAge: String = "34e"

func checkAge(ageString: String) -> Int?{
    if let age = Int(ageString){
        if age >= 18 {
        print("Welcome!")
        }else{
            print("Sorry, but you aren't old enough to use our app.")
        }
        return age
    }else{
        print("Sorry, something went wrong. Can you please re-enter your age?")
        return nil
    }
}

checkAge(ageString: userInputAge)
checkAge(ageString: "77")
//:  Go back and update your function to return the age as an integer. Will your function always return a value? Make sure your return type accurately reflects this. Call the function and print the return value.
checkAge(ageString: "7")
checkAge(ageString: "jon7")

//:  Imagine you are creating an app for making purchases. Write a function that will take in the name of an item for purchase as a `String` and will return the cost of that item as an optional `Double`. In the body of the function, check to see if the item is in stock by accessing it in the dictionary `stock`. If it is, return the price of the item by accessing it in the dictionary `prices`. If the item is out of stock, return `nil`. Call the function and pass in a `String` that exists in the dictionaries below. Print the return value.
var prices = ["Takis": 2.5, "Orange Juice": 1.50, "Candy": 0.50]
var stock = ["Takis": 7, "Orange Juice": 2, "Candy": 13]

func purchase(item: String) -> Double?{
    if let obj = stock[item]{
        if obj > 0{
            return prices[item]
        }else{
            return nil
        }
    }else{ return nil }
}

purchase(item: "Takis")
purchase(item: "Orange Juice")
/*:
[Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Food Functions](@next)
 */
