//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Macbook Pro on 2020-12-17.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()

        // Do any additional setup after loading the view.
    }
    
    //without this function, the CityViewController ("show details" button) will only be seen once when traversing tab bar items multiple times. With this implementation, tapping the tab bar item will always set the view to the rootview ie. CityViewController
    override func viewDidDisappear(_ animated: Bool) {
        navigationController?.popViewController(animated: true)
        //testing again
        
    }
   
    func setup() {
        //initialize labels
        let flag = UIImageView(image: UIImage(named: "\(city.icon)-flag"))
        flag.contentMode = .scaleAspectFit
        flag.translatesAutoresizingMaskIntoConstraints = false
        
        let countryLabel = formatLabel(labelName: "COUNTRY", isHeader: true)
        let cityLabel = formatLabel(labelName: "CITY", isHeader: true)
        let countryNameLabel = formatLabel(labelName: city.name, isHeader: false)
        let tempLabel = formatLabel(labelName: "TEMPERATURE", isHeader: true)
        let temp = formatLabel(labelName: String(city.temp), isHeader: false)
        let summaryLabel = formatLabel(labelName: "SUMMARY", isHeader: true)
        let summary = formatLabel(labelName: city.summary, isHeader: false)
        
        //put labels into the stack view
        let stackView = UIStackView(arrangedSubviews: [countryLabel, flag, cityLabel, countryNameLabel, tempLabel, temp, summaryLabel, summary])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        //add stack view into the Details View Controller
        view.addSubview(stackView)
        
        //add constraints for the stack view
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
     
    }
    
    //format labels
    func formatLabel(labelName: String, isHeader: Bool) -> UILabel {
        let label = UILabel()
        label.text = labelName
        label.translatesAutoresizingMaskIntoConstraints = false
        
        if isHeader {
            label.font = UIFont.boldSystemFont(ofSize: 18)
        }
        return label
    }
    
}
