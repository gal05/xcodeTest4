//
//  CrearTareaViewController.swift
//  Tareas4
//
//  Created by Guerra Jose on 19/09/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit

class CrearTareaViewController: UIViewController {

    
    
    @IBOutlet weak var txtNombreTarea: UITextField!
    @IBOutlet weak var swImportante: UISwitch!
    
   // var anteriorVC=ViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    @IBAction func agregar(_ sender: Any) {
        let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let tarea = Tarea(context: context)
        tarea.nombre=txtNombreTarea.text!
        tarea.importante=swImportante.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
        
        /*let tarea=Tarea()
        tarea.nombre=txtNombreTarea.text!
        tarea.importante=swImportante.isOn
        anteriorVC.tareas.append(tarea)
        anteriorVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)*/
        
    }

    

}
