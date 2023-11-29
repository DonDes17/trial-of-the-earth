import Foundation

//Créez un programme qui permet de déterminer si l’argument donné est un entier pair ou impair..

if CommandLine.arguments.count <= 1 {
    print("Je n'ai rien reçus !!")
} else {
    let arguments = CommandLine.arguments[1]
    if let number = Int(arguments) {
        if number % 2 == 0 {
            print("\(number) est pair")
        } else {
            print("\(number) est impair")
        }
    } else {
        print("Oups ! Tu ne me la mettras pas à l'envers ;)")
    }
}
