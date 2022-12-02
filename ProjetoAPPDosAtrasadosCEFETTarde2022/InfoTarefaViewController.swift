//
//  InfoTarefaViewController.swift
//  ProjetoAPPDosAtrasadosCEFETTarde2022
//
//  Created by Student on 30/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class InfoTarefaViewController: UIViewController {
    
    
    var tarefas = infoTarefaAPI(nome: " ", local: "", data: "", valor:"", descricao:"", breveDescricao:"")
    
    @IBAction func aceitarButton(_ sender: UIButton) {
        
        let alerta = UIAlertController(title: "Alerta", message: "Você tem certeza que deseja aceitar essa Tarefa ?", preferredStyle: UIAlertController.Style.alert)
        let continuar = UIAlertAction(title: "Sim", style: UIAlertAction.Style.default){
            (UIAlertAction) in
            
            self.performSegue(withIdentifier: "aceita", sender: nil)
            
            
        }
        
     let cancelar = UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.default, handler: nil)
        
        alerta.addAction(cancelar)
        alerta.addAction(continuar)
        
        self.present(alerta, animated: true, completion:
        nil)
        
        
        
    }
    
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    @IBOutlet weak var localLabel: UILabel!
    
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBOutlet weak var descricaoTextView: UITextView!
    
    @IBOutlet weak var valorLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nomeLabel.text = tarefas.nome
        self.localLabel.text = tarefas.local
        self.dataLabel.text = tarefas.data
        self.descricaoTextView.text = tarefas.descricao
        self.valorLabel.text = tarefas.valor
        // Do any additional setup after loading the view.
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
