//
//  FiltroViewController.swift
//  ProjetoAPPDosAtrasadosCEFETTarde2022
//
//  Created by Student on 26/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class FiltroViewController: UIViewController {
    
    var filtro = [infoTarefaAPI]()
    var tipoListagem : String = ""
    
    
    @IBAction func casaButton(_ sender: UIButton) {
        tipoListagem = "casas"
//        let novaview = TarefasTableViewController(nibName: "TarefasTableViewController", bundle: nil)
//        novaview.tipoListagem = self.tipoListagem
//        self.navigationController?.pushViewController(novaview, animated: true)


    }
    
    @IBAction func animaisButton(_ sender: UIButton) {
        tipoListagem = "animais"
    }
    
    @IBAction func empresaButton(_ sender: UIButton) {
        tipoListagem = "empresas"
    }
        
    @IBAction func todosButton(_ sender: UIButton) {
        tipoListagem = "todos"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "destinoLista"{
            if let novaview = segue.destination as? TarefasTableViewController {
                
                novaview.tipoListagem = self.tipoListagem
                
                
                
            }
            
        }
        
        
        
        
    }
    

}
