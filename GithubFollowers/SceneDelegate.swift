//
//  SceneDelegate.swift
//  GithubFollowers
//
//  Created by Anaru Herbert on 8/1/20.
//  Copyright © 2020 Anaru Herbert. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // get scene to use
        guard let windowScene = (scene as? UIWindowScene) else { return }
                
        //create new ui window with the length and width of the current scene
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        //make the windows window scene the window scene we got.
        window?.windowScene = windowScene
        
        //show the initial view controller note: can be any view controller
        window?.rootViewController = createTabBar()
        
        //final thing to do.
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }
    
    func createSearchNavigationController() -> UINavigationController {
        let searchViewController = SearchViewController()
        searchViewController.title = "Search"
        searchViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchViewController)
    }
    
    func createFavouritesListNavigationController() -> UINavigationController {
        let favouritesListViewController = FavouritesListViewController()
        favouritesListViewController.title = "Favourites"
        favouritesListViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favouritesListViewController)
    }
    
    func createTabBar() -> UITabBarController {
        let tabBarController = UITabBarController();
        UITabBar.appearance().tintColor = .systemGreen
        
        tabBarController.viewControllers = [createSearchNavigationController(), createFavouritesListNavigationController()]
        
        return tabBarController
    }
    
    func configureNavigationBar(){
        UINavigationBar.appearance().tintColor = .systemGreen
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

