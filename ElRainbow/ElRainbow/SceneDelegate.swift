//
//  SceneDelegate.swift
//  ElRainbow
//
//  Created by Andrei Konstantinov on 31/01/2020.
//  Copyright © 2020 8of. All rights reserved.
//

import UIKit
import SwiftUI

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        let contentView = ContentView(rCurrent: 0.5, gCurrent: 0.5, bCurrent: 0.5)
        window.rootViewController = UIHostingController(rootView: contentView)
        self.window = window
        window.makeKeyAndVisible()
    }

}
