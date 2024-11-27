import Foundation
/*:
## App Exercise - Food Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Suppose you want your fitness tracking app to give users the ability to log food. Once food has been logged, users should be able to go back and see what they ate at a specific meal.
 
 Write a function that takes a `String` parameter where you will pass in either "Breakfast," "Lunch," or "Dinner." The function should then return the `Meal` object associated with that meal, or return `nil` if the user hasn't logged that meal yet. Note that a `Meal` object and a dictionary, `meals`, representing the meal log have been created for you below. Call the function one or twice and print the return value.
 */
struct Meal {
    var food: [String]
    var calories: Int
}

var meal: [String: Meal] = ["Lunch": Meal(food: ["Pizza", "Sprite", "Nuggets"], calories: 1130)]

func lol(m: String) -> Meal?{
    return meal[m]
 }

 print(lol(m: "Lunch"))
 print(lol(m: "DinDin"))

func checkM() -> [String: Any]{
    guard let mealL = UserDefaults.standard.dictionary(forKey: "mealLog") else{
        return [:]
    }
    return mealL
}

print(checkM())

/*:
[Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Failable Initializers](@next)
 */
