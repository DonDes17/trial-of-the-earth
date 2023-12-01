import Foundation

// Créez un programme qui affiche le résultat d’une puissance.
// L’exposant ne pourra pas être négatif.

if CommandLine.arguments.count <= 1 {
    print("Aucun arguments passés.")
} else if CommandLine.arguments.count > 2 {
    var result: Int = 1
    
    if let base = Int(CommandLine.arguments[1]), let exponent = Int(CommandLine.arguments[2]) {
        if exponent < 0 {
            print("Attention ! L'exposant ne peut pas être négatif...")
        } else {
            for _ in 0..<exponent {
                print("\(0..<exponent)")
                result *= base
            }
            print(result)
        }
        
    } else {
        print("Aie ! Un des deux arguments n'est pas correct !")
    }
} else {
    print("Pas assez d'arguments passés, il m'en faut 2.")
}
