import UIKit

func verificaPalindromo(possivelPalindromo: String) -> Bool {
    
    
    let palavraOriginal = possivelPalindromo
    let palavraTratada = palavraOriginal.lowercased()
    let comprimentoPalavra = palavraOriginal.count
    
    let palavraDecomposta: [Character]
    palavraDecomposta = palavraTratada.reversed().reversed()
    
    let palavraInvertida: [Character]
    palavraInvertida = palavraTratada.reversed()
    
    for index in 0..<comprimentoPalavra {
        if palavraDecomposta[index] != palavraInvertida[index]{
            return false
        }
    }
    
        return true
}

    print(verificaPalindromo(possivelPalindromo:"Reinier"))
    print(verificaPalindromo(possivelPalindromo:"Hanah"))
    print(verificaPalindromo(possivelPalindromo: "Gabriela"))
    print(verificaPalindromo(possivelPalindromo: "Oto"))
    print (verificaPalindromo(possivelPalindromo: "Maria"))

