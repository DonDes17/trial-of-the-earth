import Foundation

//Créez un programme qui affiche le résultat et le reste d’une division entre deux nombres.

if CommandLine.arguments.count <= 1 {
    print("Aucun arguments passés.")
} else if CommandLine.arguments.count > 2 {
    let firstArgument: String = CommandLine.arguments[1]
    let secondArgument: String = CommandLine.arguments[2]
    
    if let firstNumber = Int(firstArgument), let secondNumber = Int(secondArgument) {
        if secondNumber > 0 {
            let result: Int = firstNumber / secondNumber
            let rest: Int = firstNumber % secondNumber
            if result != 0 {
                print("résultat : \(result)")
                print("reste : \(rest)")
            } else {
                print("Erreur essaye encore")
            }
        } else {
            print("Erreur tente avec un nombre différent de zéro")
        }
        
    } else {
        print("Au moins un des arguments n'est pas un nombre !")
    }
} else {
    print("Pas assez d'arguments passés.")
}
