// Definição da classe pai:
class livro {
   // Propriedades armazenadas + (array):
    var titulo: String
    var autor: String
    var generos: [String]
    var nPag: Int
//Função construtora :
    init(titulo: String, autor: String, generos: [String], nPag: Int) {
        self.titulo = titulo
        self.autor = autor
        self.generos = generos
        self.nPag = nPag
    }
// Propriedade computada para calcular se o livro tem mais de 100 páginas:
    var maisDeCemPaginas: String{
        return nPag > 100 ? "Sim" : "Não"
    }
  // Função que descreve o livro (sobreescrita):
    func descricao() -> String {
        return "O livro \(titulo) foi escrito por \(autor)."
    }
  // Propriedade computada (sobreescrita):
    var tipodelivro: Bool {
        return generos.contains("Romance")
    }
}
// Definição da classe filha:
class LivroDigital: livro {
    var formato: String //Propriedade armazenada
    
    init(titulo: String, autor: String, generos: [String], formato: String, nPag: Int) {
        self.formato = formato
        super.init(titulo: titulo, autor: autor, generos: generos, nPag: nPag)
    }
    // Sobrescrita da propriedade computada da classe pai:
    override func descricao() -> String {
        return "O livro \(titulo) foi escrito por \(autor) e o tipo dele é \(formato)"
    }
    
    // Função que filtra gêneros com a letra:
    func generosComA(letra: String) -> [String] {
        let genComLetra = generos.filter {
            genero in
            return genero.hasPrefix(letra)
        }
        return genComLetra
    }
    
}


// Exemplo de uso:
let livroDigital = LivroDigital(titulo: "Dom Casmurro", autor: "Machado de Assis", generos: ["Romance", "Conto", "Crônica", "Novela", "Poema","Terror"], formato: "Físico", nPag: 200)

// Imprimir informações sobre o livro digital:
print(livroDigital.descricao())
print("O livro possui mais de 100 páginas?: \(livroDigital.maisDeCemPaginas)")
print("Digite a letra para filtrar os gêneros:")
if let letra = readLine() {
     let generosFiltrados = livroDigital.generosComA(letra: letra) 
  print("Gêneros que começam com a letra '\(letra)': \(generosFiltrados)")
} 
