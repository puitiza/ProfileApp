//
//  ViewController.swift
//  ProfileApp
//
//  Created by Junior Meza on 9/20/19.
//  Copyright © 2019 forceclose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        crearImagenyCargarlaConAutolayout(nombreImagen: "photo")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NSLayoutConstraint.activate(constraintToApply)
        self.view.layoutIfNeeded()
    }
    
    //variables
    let imagePerfil = UIImageView()
    var constraintToApply = [NSLayoutConstraint]()
    let nombrePersona = UILabel()
    
    //Funciones
    func crearImagenyCargarlaConAutolayout(nombreImagen : String){
        
        imagePerfil.translatesAutoresizingMaskIntoConstraints = false
        imagePerfil.image = UIImage(named: nombreImagen)
        imagePerfil.contentMode = .scaleAspectFill
        imagePerfil.clipsToBounds = true
        self.view.addSubview(imagePerfil)
        
        let centerXConstraint = imagePerfil.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centerYConstraint = imagePerfil.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        let widthContraint = imagePerfil.widthAnchor.constraint(equalToConstant: 175)
        let heightContraint = imagePerfil.heightAnchor.constraint(equalToConstant: 175)
        
        imagePerfil.layer.cornerRadius = widthContraint.constant / 2.0
        
        constraintToApply.append(centerXConstraint)
        constraintToApply.append(centerYConstraint)
        constraintToApply.append(widthContraint)
        constraintToApply.append(heightContraint)

        
    }
    
    func asignarNombreyColocarAutoLayout(nombre: String){
        nombrePersona.text = nombre
        nombrePersona.textColor = UIColor.black
        nombrePersona.translatesAutoresizingMaskIntoConstraints = false
        nombrePersona.textAlignment = NSTextAlignment.center
        nombrePersona.font = UIFont(name: "Avenir Next", size: 20)
        self.view.addSubview(nombrePersona)
    
    }



}

