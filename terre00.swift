import Foundation

//Créez un programme qui affiche l’alphabet en lettres minuscules suivi d’un retour à la ligne.


var alpha = "abcdefghijklmnopqrstuvwxyz"
var result = ""

for letter in alpha {
    result += "\(letter)"
}

print(result)

