//
//  ListaTarefa.swift
//  ProjetoAPPDosAtrasadosCEFETTarde2022
//
//  Created by Student on 26/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation
struct infoTarefaAPI: Decodable {
    let nome: String
    let local: String
    let data: String
    let valor: String
    let descricao: String
    let breveDescricao: String
}



class infoTarefa {
    
    let nomeTarefa: String
    let nomeLocal: String
    let data: String
    let valor: String
    let descricao: String
    let breveDescricao: String
    
    init(nomeTarefa:String, nomeLocal:String, data:String, valor:String, descricao:String, breveDescricao:String){
        
        self.nomeTarefa = nomeTarefa
        self.nomeLocal = nomeLocal
        self.data = data
        self.valor = valor
        self.descricao = descricao
        self.breveDescricao = breveDescricao
    }
    
    
}




