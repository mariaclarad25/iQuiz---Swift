//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Maria Clara Dias on 07/05/25.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    @IBAction func respostaBotaoPressionado (_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if usuarioAcertouResposta{
            pontuacao += 1
            print ("O usuário acertou!!")
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        } else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if numeroQuestao < questoes.count - 1{
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else{
            navegaParaTelaDesempenho()
        }
    }
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarlLayout()
        configurarQuestao()
    }
    func configurarlLayout(){
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        for botoes in botoesRespostas{
            botoes.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes [numeroQuestao].titulo
        for botao in botoesRespostas{
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            
            botao.backgroundColor = UIColor (red: 116/225, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else {return}
        desempenhoVC.pontuacao = pontuacao
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
