//
//  TarefaTableViewCell.swift
//  ProjetoAPPDosAtrasadosCEFETTarde2022
//
//  Created by Student on 26/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class TarefaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeLocalLabel: UILabel!
    
    @IBOutlet weak var valorLabel: UILabel!
    
    @IBOutlet weak var breveDrescricao: UITextView!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
