import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var viTimer: UIView!
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet var btAlternativa: [UIButton]!
    
    let quizManager = QuizManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated )
        viTimer.frame.size.width = view.frame.size.width
        let tempo_jogo: Double = 60
        let tempo_comecar: Double = 0
        UIView.animate(withDuration: tempo_jogo, delay: tempo_comecar, options: .curveLinear, animations: {
            self.viTimer.frame.size.width = 0
        }) { (sucesso) in
            self.showResults()
        }
        getNewsQuiz()
    }
    
    func getNewsQuiz(){
        quizManager.atualizarQuiz()
        lbQuestion.text = quizManager.perguntas
        for i in 0..<quizManager.opcoes.count{
            let option  = quizManager.opcoes[i]
            let button  = btAlternativa[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults(){
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    @IBAction func btAlternativa(_ sender: UIButton) {
        let index = btAlternativa.index(of: sender)!
        quizManager.validarResposta(index: index)
        getNewsQuiz()
    }
    
    
    

}
