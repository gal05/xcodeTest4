//
//  TareaCompletadaViewViewController.swift
//  Tareas4
//
//  Created by Guerra Jose on 21/09/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit

class TareaCompletadaViewViewController: UIViewController {
    
    var tarea:Tarea?=nil
    var anteriorVC = ViewController()

    @IBOutlet weak var tareaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if tarea!.importante{
            tareaLabel.text="👹\(String(describing: tarea!.nombre))"
        }else{
            tareaLabel.text=tarea!.nombre
        }
    }


    

    @IBAction func completarTarea(_ sender: Any) {
        anteriorVC.tareas.remove(at: anteriorVC.indexSeleccionado!)
    }


}
