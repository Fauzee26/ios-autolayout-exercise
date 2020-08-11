//
//  ViewController.swift
//  pit-autolayout-programmatically
//
//  Created by Muhammad Hilmy Fauzi on 10/08/20.
//  Copyright © 2020 Muhammad Hilmy Fauzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackViewAll = UIStackView()
        
        let stackViewTop = UIStackView()
        let stackViewBottom = UIStackView()
        
        let safeView = view.safeAreaLayoutGuide
        view.addSubview(stackViewAll)
        stackViewAll.addArrangedSubview(stackViewTop)
        stackViewAll.addArrangedSubview(stackViewBottom)
        stackViewAll.axis = .vertical
        stackViewAll.distribution = .fillEqually
        
        stackViewAll.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewAll.topAnchor.constraint(equalTo: safeView.topAnchor),
            stackViewAll.leadingAnchor.constraint(equalTo: safeView.leadingAnchor),
            stackViewAll.trailingAnchor.constraint(equalTo: safeView.trailingAnchor),
            stackViewAll.bottomAnchor.constraint(equalTo: safeView.bottomAnchor)
        ])
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        addTo(parent: greenView, emoji: "✌️")
        
        
        let redView = UIView()
        redView.backgroundColor = .red
        addTo(parent: redView, emoji: "🤣")
        
        
        stackViewTop.addArrangedSubview(greenView)
        stackViewTop.addArrangedSubview(redView)
        stackViewTop.axis = .horizontal
        stackViewTop.distribution = .fillEqually
        
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        addTo(parent: yellowView, emoji: "👇")
        
        let orangeView = UIView()
        orangeView.backgroundColor = .orange
        addTo(parent: orangeView, emoji: "🤚")
        
        stackViewBottom.addArrangedSubview(yellowView)
        stackViewBottom.addArrangedSubview(orangeView)
        stackViewBottom.axis = .horizontal
        stackViewBottom.distribution = .fillEqually
        
        
    }
    
    func addTo(parent: UIView, emoji: String) {
        let viewChild = UIView()
        viewChild.layer.cornerRadius = 15
        viewChild.backgroundColor = .white
        parent.addSubview(viewChild)
        viewChild.translatesAutoresizingMaskIntoConstraints = false
        
        let txtEmoji = UILabel()
        txtEmoji.font = txtEmoji.font.withSize(100)
        txtEmoji.text = emoji
        txtEmoji.translatesAutoresizingMaskIntoConstraints = false
        viewChild.addSubview(txtEmoji)
        
        let text = UILabel()
        text.font = txtEmoji.font.withSize(20)
        text.text = "Test"
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        parent.addSubview(text)
        
        NSLayoutConstraint.activate([
            viewChild.topAnchor.constraint(equalTo: parent.topAnchor, constant: 12),
            viewChild.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 12),
            viewChild.trailingAnchor.constraint(equalTo: parent.trailingAnchor, constant: -12),
            viewChild.bottomAnchor.constraint(equalTo: text.topAnchor, constant: -12),
            
            txtEmoji.centerXAnchor.constraint(equalTo: viewChild.centerXAnchor),
            txtEmoji.centerYAnchor.constraint(equalTo: viewChild.centerYAnchor),
            
            
            text.centerXAnchor.constraint(equalTo: parent.centerXAnchor),

            text.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 8),
            text.trailingAnchor.constraint(equalTo: parent.trailingAnchor, constant: -8),
            text.bottomAnchor.constraint(equalTo: parent.bottomAnchor, constant: -8),
        ])
    }
    
}

