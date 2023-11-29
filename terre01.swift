import Foundation

//Créez un programme qui affiche son nom de fichier.


let currentFileURL = URL(fileURLWithPath: CommandLine.arguments[0])
let currentFileName = currentFileURL.lastPathComponent

if (currentFileName == "") {
    print("Nous n'avons pas reçu de niom de fichier")
} else {
    print(currentFileName)
}

