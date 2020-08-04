//
//  DetailViewController.swift
//  ImmiRent
//
//  Created by Lola on 8/2/20.
//  Copyright © 2020 Karolina Dubiel. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController
{
    
    //outlets
    @IBOutlet var tenImageView : UIImageView!
    @IBOutlet var titleLabel : UILabel!
    @IBOutlet var buroughLabel: UILabel!
    @IBOutlet var tag1DetailView : UIImageView!
    @IBOutlet var tag2DetailView : UIImageView!
    @IBOutlet var coordinateLabel : UILabel!
    @IBOutlet var mapView : MKMapView!
    
    
    
    var tenement = Tenement()
    //var tenImageName : String = ""
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tenImageView.image = UIImage(named: tenement.image)
        titleLabel?.text = tenement.name
        buroughLabel?.text = tenement.burough
        coordinateLabel?.text = "\(tenement.latitude), \(tenement.longitude)"
        tag1DetailView?.image = UIImage(named: tenement.tag1)
        tag2DetailView?.image = UIImage(named: tenement.tag2)
        // Do any additional setup after loading the view.
        
        let annotation = MKPointAnnotation()
        annotation.title = tenement.name
        annotation.coordinate = CLLocationCoordinate2D(latitude: tenement.latitude, longitude: tenement.longitude)
        mapView.addAnnotation(annotation)
        self.mapView.showAnnotations(self.mapView.annotations, animated: true)
        
        
    }
    
//    func mapView(_mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
//    {
//        guard annotation is MKPointAnnotation else {return nil}
//        
//        let identifier = "Annotation"
//        
//        
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


