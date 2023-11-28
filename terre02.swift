#!/usr/bin/env swift

import Foundation

//Créez un programme qui affiche les arguments qu’il reçoit ligne par ligne, peu importe le nombre d’arguments.

let arguments: [String] = CommandLine.arguments


if arguments.count <= 1 {
    print("Aucun argument passé.")
} else {
    for index in 1..<arguments.count {
        let arg = arguments[index]
        print(arg)
    }
}
