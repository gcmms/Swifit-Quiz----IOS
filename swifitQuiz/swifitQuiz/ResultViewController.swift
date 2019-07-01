//
//  ResultViewController.swift
//  swifitQuiz
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 01/07/19.
//  Copyright © 2019 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var lbRespondidas: UILabel!
    @IBOutlet weak var lbCorretas: UILabel!
    @IBOutlet weak var lbErradas: UILabel!
    @IBOutlet weak var lbPontos: UILabel!
    
    var totalPerguntasCorretas: Int = 0
    var totalPerguntas: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbRespondidas.text = "Perguntas Respondidas: \(totalPerguntas)"
        lbCorretas.text = "Pergundas corretas \(totalPerguntasCorretas)"
        let erradas = totalPerguntasCorretas - totalPerguntas
        lbErradas.text = "Perguntas erradas \(erradas)"
        let pontuacao = totalPerguntasCorretas * 100/totalPerguntas
        lbPontos.text = "\(pontuacao)%"
    }
    

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
