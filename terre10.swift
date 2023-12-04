import Foundation

// Créez un programme qui affiche si un nombre est premier ou pas.
// Attention : 0 et 1 ne sont pas des nombres premiers. Gérez les erreurs d’arguments.

// Un nombre premier possède 2 diviseurs différents: 1 et lui-même.

enum ArgsError: Error {
    case noArguments, tooMuchArgs, notInt, notPrime
}


func getArguments(_ args: Int) throws -> [String] {
    if args <= 1 {
        throw ArgsError.noArguments
    }
    
    if args > 2 {
        throw ArgsError.tooMuchArgs
    }
    
    return CommandLine.arguments
}

func checkPrimeOrNot(_ numberToCheck: Int) throws -> Bool{
    
    guard let number =  Int(numberToCheck[1]) else {
        throw ArgsError.noInt
    }
  
    if number == 1 || number == 0{
        throw ArgsError.notPrime
    }
    
    
    if numberToCheck <= 1 {
        isPrime = false
    } else {
        let squareRoot = Int(sqrt(Double(numberToCheck)))
        for n in 2...squareRoot {
            if numberToCheck % n == 0 {
                isPrime = false
                break
            }
        }
    }
    return isPrime
}


do {
    let arguments = try getArguments(CommandLine.arguments.count)
    let isPrimeNumber = try checkPrimeOrNot(arguments)
    
    isPrimeNumber ?
    print("Oui, \(arguments) est bien un nombre 1er !")
    : print("Non, \(arguments) n'est pas un nombre 1er...")
    
} catch ArgsError.noArguments {
    print("Aucun arguments passés.")
} catch ArgsError.tooMuchArgs {
    print("Tu me passes trop d'arguments là")
} catch ArgsError.noInt {
    print("pas un nombre ...")
} catch ArgsError.notPrime {
    print("\(arguments) n'est pas un nombre premier")
}
