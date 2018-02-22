//
//  MyContainerViewController.swift
//  VacinacaoPet
//
//  Created by Swift on 18/01/2018.
//  Copyright © 2018 rcf. All rights reserved.
//

import UIKit

class MyContainerViewController: UIViewController {


    // MARK: Outlets

    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var labelNomesPet: UILabel!

    // MARK : Propriedades
    var arrayNomesPet = ["Meg", "Pitico", "Shiloh", "Baby"]


    // MARK: metodo viewCicle
    override func viewDidLoad() {
        super.viewDidLoad()

        myPickerView.delegate = self
        myPickerView.dataSource = self

    }
}

extension MyContainerViewController : UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayNomesPet.count
    }
}

extension MyContainerViewController : UIPickerViewDelegate {

    // Metodo que define o titulo de cada linha do picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        return arrayNomesPet[row]
    }

    // Metodo disparado quando uma linha do picker é selecionada
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        labelNomesPet.text = "Vacinas do seu pet: \(arrayNomesPet[row])"
    }
}
