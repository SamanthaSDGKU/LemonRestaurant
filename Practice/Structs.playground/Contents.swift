import UIKit

// Struct

//struct Identifier{
//    let constant: Element
//    var variable: Element
//    func doSomething(){
//
//    }
//}

//Struct example
// Example 1
//struct MenuItem{
//    var name: String
//    var price: Double
//    var description: String
//}

//Example 2
// add a function to determine if is premium or not >10
struct Dish{
    var name: String
    var price:Double
    func isPremium() -> Bool{
        return price > 10
    }
}

// Mini-ex: Create an struct for a drink
// create a function to determine is the size is large
struct Drink{
    var name: String
    var isCold: Bool
    var size:String
    func isLarge()->Bool{
        return size == "Large"
    }
}

let pasta = Dish(name:"Pasta Alfredo",price:20.0)
let coffee = Drink(name: "Cappuccino", isCold: false,size:"Small") // modify this

pasta.isPremium( )
coffee.isLarge()

//Adding functions to the struct

struct MenuItem{
    var name: String
    var price: Double
    var description: String
    func getInfo()->String{
        return "\(name) - \(price) - \(description)"
    }
}

let affogato = MenuItem(name:"Affogato", price:6.0, description: "Crema su un scoop di cioccolato")
print(affogato.getInfo())


// structs in functions

func describeDrink(drink: Drink){
    print(drink.name)
}

describeDrink(drink: coffee)
