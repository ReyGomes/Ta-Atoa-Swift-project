//
//  TarefasTableViewController.swift
//  ProjetoAPPDosAtrasadosCEFETTarde2022
//
//  Created by Student on 26/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    var tipoListagem = String()
    var tarefas = [infoTarefaAPI]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON {
            self.tableView.reloadData()
        }
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listatarefa", for: indexPath)
        
        if let tarefaCell = cell as? TarefaTableViewCell {
            let tarefaArray = tarefas[indexPath.row]
             tarefaCell.nomeLocalLabel.text = tarefaArray.local
             tarefaCell.valorLabel.text = tarefaArray.valor
            tarefaCell.breveDrescricao.text = tarefaArray.breveDescricao
            return tarefaCell
        }
        

        return cell
    }
    
    func downloadJSON(completed: @escaping() -> ()){
    
        let url = URL(string: "https://noderedaluno06202202.kgsx7kocpw2.us-south.codeengine.appdomain.cloud/\(tipoListagem)")
            URLSession.shared.dataTask(with: url!) { data, response, err in
            
                if err == nil {
                    do{
                        self.tarefas = try JSONDecoder().decode([infoTarefaAPI].self, from: data!)
                        DispatchQueue.main.async {
                            completed()
                    }
                }
                    catch {
                        print("error fetching data from api")
                    }
                
            }
            }.resume()
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "infoTarefa" {
            if let novaView = segue.destination as? InfoTarefaViewController {
                let celulaSelecionada = tableView.indexPathForSelectedRow?.row
                let infoCelula = tarefas[celulaSelecionada!]
                
                novaView.tarefas = infoCelula
                
            }
            
        }
        
        
        
    }
    

}
