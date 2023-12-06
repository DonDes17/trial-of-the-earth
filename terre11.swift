import Foundation

// Créez un programme qui transforme une heure affichée en format 24h en une heure affichée en format 12h.
// Attention : midi et minuit.
 /**
    - Vérifier qu'on un bien un arg en input
    - check si c'est bien une string
    - spli() la chaine de character
    - rajouter 12 ou modifier correctement les heures avec le bon argument
    - rajouter 12 ou modifier correctement les minutes avec le bon argument
    - join() avec  "  "
    - pinrt() l'heure
  */

enum ArgsError: Error {
    case noArguments, tooMuchArgs, notInt
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

func formatTime(_ args: [String]) throws -> (String, String, Int) {
    let arguments = try getArguments(args.count)
    
    let regex = try NSRegularExpression(pattern: "^[a-zA-Z']+$", options: [])
    let range = NSRange(location: 0, length: arguments[1].utf16.count)
    if regex.firstMatch(in: arguments[1], options: [], range: range) != nil {
        throw ArgsError.notInt
    }

    let splitedStrings: [String.SubSequence] = arguments[1]
        .replacingOccurrences(of: "AM",with:"")
        .replacingOccurrences(of: "PM", with: "")
        .split(separator:":")
    let period: String = "PM"
    
    guard let newHours = Int(splitedStrings[0]),let minutes = Int(splitedStrings[1]) else { throw ArgsError.notInt}
    let hours = newHours % 12 == 0 ? "12" : String(newHours % 12)
    return (hours,period,minutes)
}

do {
    let (hours, period, minutes) = try formatTime(CommandLine.arguments)
    print("Il est: \(hours):\(minutes)\(period)")
} catch ArgsError.noArguments {
    print("Oups auucn arguments passés...")
} catch ArgsError.tooMuchArgs {
    print("Oups trop d'arguments là...")
} catch ArgsError.notInt {
    print("Je sais pas ce que c'est mais c'est pas un nombre !")
}
