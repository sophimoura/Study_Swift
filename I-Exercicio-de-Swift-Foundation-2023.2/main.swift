// Definição da classe pai
class Livro{
  
  // Propriedade armazenada (array)
  var titulo: String 
  var autor: String 
  var n_pag: Int
  var generos: [String]  
  

//Função construtora 
init(titulo: String, autor: String, generos: [String]){
  self.titulo = titulo
  self.autor = autor
  self.generos = generos 
  self.n_pag = n_pag

// Propriedade computada para calcular se o livro tem mais de 100 páginas:
  var tamanho: Bool { 
  return n_pag > 100}
}
  // Função que descreve o livro (sobreescrita)
 func descricao () -> String {
   return "O livro possui o seguinte título: \(titulo), foi escrito por \(autor) e pertence ao gênero \(generos). "
 }
  // Propriedade computada (sobreescrita)
   var tipodelivro: Bool { 
   return gênero = "romance" }

// Definição da classe filha

  class LivroDigital: Livro {
      var formato: String //Propriedade aramzenada 

      init (titulo: String, autor: String, genero: [String], formato: String){
       self.formato = formato
       super.init(titulo: titulo, autor: autor, genero: genero )
      }
    // Sobrescrita da propriedade computada da classe pai
   override var n_pag: Bool {
        return idade <= 100
   }

    // Função que filtra o gênero do livro: 
    func gen_romance() -> [String]{ 
      let se_gen_romance = generos.filter {
      genero in 
           return genero.contains("Romance")
      } 
         return se_gen_romance 
      }
  }
  }
// Exemplo de uso
let LivroI = Livro(titulo:"Dom Casmurro", autor: "Machado de Assis", generos: ["Romace", "Comédia", "Terror"], formato: "Digital", n_pag: 200)


// Imprimir informações sobre o livro
print (livro.descricao())
print("O livro possui mais de 100 páginas?:\(livro.tamanho) ")
print("O formato é digital?: \(livro.formato) ")
print("Livros pertncentes ao gênero 'Romance': \(livro.gen_romance())") 






  
    
    

    
    


