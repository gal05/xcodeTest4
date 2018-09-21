//
//  TareaCompletadaViewController.swift
//  Tareas4
//
//  Created by Guerra Jose on 21/09/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit

class TareaCompletadaViewController: UIViewController {
    
    var tarea=Tarea()

    @IBOutlet weak var tareaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if tarea.importante {
            tareaLabel.text="😹\(tarea.nombre)"
        }else{
            tareaLabel.text=tarea.nombre
        }
    }

    @IBAction func completarTarea(_ sender: Any) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
