import Foundation

//Créez un programme qui affiche l’inverse de la chaîne de caractères donnée en argument.

if CommandLine.arguments.count <= 1 {
    print("Aucun argument passé.")
} else {
    let arguments = CommandLine.arguments.dropFirst().joined(separator: " ")
    
    if arguments.isEmpty {
          print("Oups, Chaîne vide passée en argument !")
      } else {
          var reversedString = ""

          for index in stride(from: arguments.count - 1, through: 0, by: -1) {
              let charIndex = arguments.index(arguments.startIndex, offsetBy: index)
              reversedString.append(arguments[charIndex])
          }

          print(reversedString)
      }
}

