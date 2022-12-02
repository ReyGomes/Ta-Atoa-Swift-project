//
//  CadastroViewController.swift
//  ProjetoAPPDosAtrasadosCEFETTarde2022
//
//  Created by Student on 26/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {
    
    @IBOutlet weak var nomeLabel: UITextField!
    
    @IBOutlet weak var localLabel: UITextField!
    
    @IBOutlet weak var valorLabel: UITextField!
    
    @IBOutlet weak var dataLabel: UITextField!
    
    
    @IBOutlet weak var descricaoLabel: UITextField!
    
    
    @IBOutlet weak var tipoTarefa: UIPickerView!
    
    let data = [" ", "Casa", "Animais", "Empresa"]
    
   
    
    @IBAction func cadastrarButton(_ sender: UIButton) {
        

        let alerta = UIAlertController(title: "Alerta", message: "Você tem certeza que deseja cadastrar essa tarefa ?", preferredStyle: UIAlertController.Style.alert)
        let continuar = UIAlertAction(title: "Sim", style: UIAlertAction.Style.default){
          (UIAlertAction) in
            
            self.performSegue(withIdentifier: "sucesso", sender: nil)
            
            }
                      let cancelar = UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.default, handler: nil)
        
        alerta.addAction(cancelar)
        alerta.addAction(continuar)
            
            self.present(alerta, animated: true, completion:
            nil)
            
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tipoTarefa.dataSource = self
        tipoTarefa.delegate = self
        // Do any additional setup after loading the view.
        
        
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
           //Causes the view (or one of its embedded text fields) to resign the first responder status.
           view.endEditing(true)
       }

    
    override func viewWillAppear(_ animated: Bool){
        
        nomeLabel.text = " "
        localLabel.text = " "
        dataLabel.text = " "
        valorLabel.text = " "
        descricaoLabel.text = " "
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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

extension CadastroViewController: UIPickerViewDataSource{
       func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
           return data.count
       }
   }

extension CadastroViewController: UIPickerViewDelegate{
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
         return data[row]
     }
 }
 
