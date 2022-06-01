//
//  ViewController.swift
//  ApplicationPermission
//
//  Created by Meghna on 01/06/22.
//

import UIKit
import SPPermission

class ViewController: UIViewController {

    @IBOutlet weak var btnPermission: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func btnPermissionClick(_ sender: UIButton) {
        
        SPPermission.Dialog.request(with: [.camera, .microphone, .notification], on: self)
        
        let isAllowedCamera = SPPermission.isAllowed(.camera)
        let isDeniedMicrophone = SPPermission.isDenied(.microphone)
        
        SPPermission.request(.notification, with: {
            // Callback
        })
    }
    
}

