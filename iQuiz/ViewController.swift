//
//  ViewController.swift
//  iQuiz
//
//  Created by Maria Clara Dias on 07/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print ("O botão foi pressionado!")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configuraLayout()
    }
    
    func configuraLayout(){
        navigationItem.hidesBackButton = true
        botaoIniciarQuiz.layer.cornerRadius = 12.0
    }
    }
