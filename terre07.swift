import Foundation

//Créez un programme qui affiche le nombre de caractères d’une chaîne de caractères passée en argument.

if CommandLine.arguments.count <= 1 {
    print("Aucun argument passé...")
} else {
    let arguments = CommandLine.arguments.dropFirst()
    let numberRegex = #"^-?\d+(\.\d+)?$"#
    var charNumber = 0
    
    if (arguments.count > 1) {
        print("Hum... Je n'accepte qu'un argument sorry")
    } else {
        do {
            let regex = try NSRegularExpression(pattern: numberRegex)
            for char in arguments {
                let range = NSRange(char.startIndex..<char.endIndex, in: char)
                if regex.firstMatch(in: char, options: [], range: range) != nil {
                    print("Erreur : L'argument \(char) est un entier ou un double. Ce script ne prend pas d'entiers ou de doubles en argument.")
                } else {
                    while (charNumber < char.count) {
                        charNumber += 1
                    }
                    print(charNumber)
                }
            }
        } catch  {
            print("Erreur lors de la création de l'expression régulière : \(error)")
        }
    }
}

