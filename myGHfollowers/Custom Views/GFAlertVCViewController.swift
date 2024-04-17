//
//  GFAlertVCViewController.swift
//  myGHfollowers
//
//  Created by Ella on 2024/4/12.
//

import UIKit

class GFAlertVCViewController: UIViewController {
    
    let containView = UIView()
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "OK")
    
    var alertTitle: String?
    var message: String?
    var buttonTItle: String?
    
    let padding: CGFloat = 20
    
    init(title: String, message:String, buttonTitle:String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTItle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureBodyLabel()
    }
    
    func configureContainerView() {
        view.addSubview(containView)
        containView.layer.cornerRadius = 16
        containView.layer.borderWidth = 2
        containView.layer.borderColor = UIColor.white.cgColor
        containView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containView.widthAnchor.constraint(equalToConstant: 200),
            containView.heightAnchor.constraint(equalToConstant: 220)
        ])
        
    }
    
    func configureTitleLabel() {
        containView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureActionButton() {
        containView.addSubview(actionButton)
        actionButton.setTitle(buttonTItle ?? "OK", for: .normal)
        actionButton.addTarget(self, action: #selector(dissmissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containView.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: containView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: containView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func configureBodyLabel() {
        containView.addSubview(messageLabel)
        messageLabel.text = message ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: containView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
    }
    
    @objc func dissmissVC() {
        dismiss(animated: true)
    }
}
