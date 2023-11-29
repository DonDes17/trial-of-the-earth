import Foundation

//Créez un programme qui affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules suivi d’un retour à la ligne.

let alpha: String = "abcdefghijklmnopqrstuvwxyz"

if CommandLine.arguments.count <= 1 {
    print("Aucun argument passé.")
} else {
    let argument: String = CommandLine.arguments[1]
    var position: Int = 0
    var restOfAlphabet: String = ""
    
    if let index = alpha.firstIndex(where: { $0.isLetter && $0.lowercased() == argument.lowercased() }) {
            position = alpha.distance(from: alpha.startIndex, to: index)
    }
    
    for (index, letter) in alpha.enumerated() {
        if index >= position {
            restOfAlphabet += String(letter)
        }
    }
    
    print(restOfAlphabet)
}

