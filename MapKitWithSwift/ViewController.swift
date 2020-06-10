//
//  ViewController.swift
//  MapKitWithSwift
//
//  Created by mbtec22 on 6/10/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var Mapa: MKMapView!
    @IBOutlet weak var Selector: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        Mapa.showsUserLocation = true
    }
    
    @IBAction func cambiarVistaMapa(_ sender: Any) {
        
        //ESTRUCTURA DE CASOS
        
        switch Selector.selectedSegmentIndex{
        case 0:
            Mapa.mapType = .standard
        case 1:
            Mapa.mapType = .satellite
        case 2:
            Mapa.mapType = .hybrid
        default:
            break
        }
        
    }
    
}

