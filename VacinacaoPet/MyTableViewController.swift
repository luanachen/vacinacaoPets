//
//  MyTableViewController.swift
//  VacinacaoPet
//
//  Created by Swift on 17/01/2018.
//  Copyright © 2018 rcf. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    // MARK: Propriedades
    let arrayVacinasCaes = ["Cinomose", "Hepatite Infecciosa Canina", "Adenovirose", "Coronavirose", " Parainfluenza Canina", "Parvovirose", "Leptospirose canina"]
    let arrayVacinasGatos = [" 1ª dose da vacina Déctupla", "2ª dose da vacina Déctupla, 1ª dose da vacina Giardíase", "3ª dose da vacina Déctupla, 2ª dose da vacina Giardíase", "Dose única da vacina Anti-rábica, dose única da vacina Tosse dos Canis"]
    
    // MARK: Métodos de ViewCicle
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    // MARK: - Métodos de UITableViewDataSource
    
    // Metodo que define a quantidade de seção na table
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }
    
    // Metodo que define a quantidade de linhas em uma seção
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return arrayVacinasCaes.count
            
        } else {
            
            return arrayVacinasGatos.count
        }
        
    }
    
    // Metodo que define as informações que constarão nas celulas
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // dequeueReusableCell faz a captação de uma celula com determinado identificador e traz essa celula para o codigo, esse comando atua de forma semelhante a uma outlet da nossa celula
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        if indexPath.section == 0 {
            
            cell.textLabel?.text = arrayVacinasCaes[indexPath.row]
            
        } else {
            
            cell.textLabel?.text = arrayVacinasGatos[indexPath.row]
            
        }
        
        return cell
    }
    
    // Metodo que define o titulo de cada section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            
            return "Vacinas Cães"
            
        } else {
            
            return "Vacinas Gatos"
        }
    }
    
    // MARK: - Metodos de UITableViewDelegate
    
    // Metodo disparado quando uma celula é selecionada
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let celulaSelecionada = tableView.cellForRow(at: indexPath)
        
        if celulaSelecionada?.accessoryType == .checkmark {
            
            celulaSelecionada?.accessoryType = .none
            
        } else {
            
            celulaSelecionada?.accessoryType = .checkmark
        }
    }
    
}
