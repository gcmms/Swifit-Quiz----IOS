import Foundation

class Quiz {
    let pergunta: String
    let opcoes: [String]
    private let respostaCerta: String
    
    init(pergunta: String, opcoes: [String], respostaCerta: String){
        self.pergunta      = pergunta
        self.opcoes        = opcoes
        self.respostaCerta = respostaCerta
    }
    
    func validadorOpcoes(_ index: Int)->Bool{
        let resposta = opcoes[index]
        return resposta == respostaCerta
    }
        
    deinit {
        print("Liberou o quiz da memoria")
    }
    
}
