// Definição da classe pai:
class Livro {
   // Propriedades armazenadas + (array):
    var titulo: String
    var autor: String
    var generos: [String]
    var n_pag: Int 
//Função construtora :
    init(titulo: String, autor: String, generos: [String], n_pag: Int) {
        self.titulo = titulo
        self.autor = autor
        self.generos = generos
        self.n_pag = n_pag
    }
// Propriedade computada para calcular se o livro tem mais de 100 páginas:
    var tamanho: Bool {
        return n_pag > 100
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
class LivroDigital: Livro {
    var formato: String //Propriedade armazenada 

    init(titulo: String, autor: String, generos: [String], formato: String, n_pag: Int) {
        self.formato = formato
        super.init(titulo: titulo, autor: autor, generos: generos, n_pag: n_pag)
    }
  // Sobrescrita da propriedade computada da classe pai:
    override var tamanho: Bool {
        return super.tamanho
    }
  // Função que filtra gêneros com a letra C: 
    func gen_() -> [String] {
        let gen_com_c = generos.filter {
            genero in
            return genero.hasPrefix("C") 
        }
        return gen_com_c
    }
}

// Exemplo de uso:
let livroDigital = LivroDigital(titulo: "Dom Casmurro", autor: "Machado de Assis", generos: ["Romance", "Conto", "Crônica", "Novela", "Poema"], formato: "Físico", n_pag: 200)

// Imprimir informações sobre o livro digital:
print(livroDigital.descricao())
print("O livro possui mais de 100 páginas?: \(livroDigital.tamanho)")
print("Qual o formato do livro?: \(livroDigital.formato)")
print("Me dê exemplos de gêneros que começam com a letra 'C': \(livroDigital.gen_())")