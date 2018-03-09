//
//  YouBikeViewController.swift
//  ASiC_YouBike
//
//  Created by WU CHIH WEI on 2018/2/25.
//  Copyright © 2018年 WU CHIH WEI. All rights reserved.
//

import UIKit
import MapKit

protocol StationInfo {
    
    var name: String { get }
    
    var position: String { get }
    
    var remainBikes: String { get }
}

class YouBikeViewController: UIViewController, DelegateClientProtocol {
    
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var showInfo: UILabel!
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var remain: UILabel!
    
    
    let closureClient = ClosureClient()
    
    var delegateClient = DelegateClient()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        closureClient.getDataFromFile { (YouBikeAnnotation) in
            mapView.addAnnotation(YouBikeAnnotation)
        }
        
        delegateClient.delegate = self
        delegateClient.loadData()
        
        }
    
    func didGetDataFromFile(stationInfo: StationInfo) {
        showInfo.text = "\(stationInfo.name)"
        position.text = "\(stationInfo.position)"
        remain.text = "剩 \(stationInfo.remainBikes) 台"
    }
    
    }
 






























