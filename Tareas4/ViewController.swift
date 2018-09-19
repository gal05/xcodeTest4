//
//  ViewController.swift
//  Tareas4
//
//  Created by Guerra Jose on 19/09/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tareas:[Tarea]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tareas=crearTareas()
        
        tableView.dataSource = self
        tableView.delegate = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tareas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        let tarea = tareas[indexPath.row]
        if tarea.importante {
            cell.textLabel?.text="😭\(tarea.nombre)"
        }else{
        
        cell.textLabel?.text=tarea.nombre
        }
        
        return cell
    }

    
    func crearTareas()->[Tarea]{
        let tarea1=Tarea()
        tarea1.nombre="PAsear al perro"
        tarea1.importante=false
        
        let tarea2=Tarea()
        tarea2.nombre="Comprar Verduras"
        tarea2.importante=true
        
        let tarea3=Tarea()
        tarea3.nombre="Lavar los servicios"
        tarea3.importante=false
        
        return[tarea1,tarea2,tarea3]
    }
    @IBAction func nuevaTarea(_ sender: Any) {
        performSegue(withIdentifier: "agregarSege", sender: nil)
        
        
    }

}

