import Foundation

// Créez un programme qui affiche la racine carrée d’un entier positif.

enum RootError: Error {
    case tooLow, tooHigh, notFound
}

enum ArgsError: Error {
    case noArguments, tooMuchArgs, noInt
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

func squareRoot(of argument: [String]) throws -> Int {
    
    guard let number =  Int(argument[1]) else {
        throw ArgsError.noInt
    }
    
    if number < 1 {
        throw RootError.tooLow
    }
    
    if number > 10_000 {
        throw RootError.tooHigh
    }
    
    for i in 0...100 {
        if i * i == number {
            return i
        }
    }
    
    throw RootError.notFound
}

do {
    let arguments = try getArguments(CommandLine.arguments.count)
    let root = try squareRoot(of: arguments)
    print("root \(root)")
    
} catch ArgsError.noArguments {
    print("Aucun arguments passés.")
} catch ArgsError.tooMuchArgs {
    print("Tu me passes trop d'arguments là")
} catch ArgsError.noInt {
    print("pas un nombre ...")
} catch RootError.tooHigh {
    print("Oups...Ton Nombre est trop grand !!")
} catch RootError.tooLow {
    print("Oups...Ton Nombre est trop petit !!")
} catch RootError.notFound {
    print("Aie auncun truc carré trouvé...Essaye encore")
}
   
