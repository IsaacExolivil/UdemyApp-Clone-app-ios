//
//  UdemyAppApp.swift
//  UdemyApp
//
//  Created by Isaac Loez on 10/09/21.
//

import SwiftUI

@main
struct UdemyAppApp: App {
    var body: some Scene {
        WindowGroup {
            VStack{
                Image("udemy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                Text("Aprende en linea")
            ScrollView(.horizontal) {
                
              
                
                HStack{
            ContentView(imageName: "card", authorName: "Jose Isaac Chin", courseTitle: "Curso de aplicación de uber android desde 0 a experto", originalPrice: "$399", discountPrice: "$199")
                .frame(width: 320)
            ContentView(imageName: "unity", authorName: "Jose Isaac Chin", courseTitle: "Curso videojuegos en Unity", originalPrice: "$399", discountPrice: "$199")
                .frame(width: 320)
                    
                }
                Spacer()
                }
                ScrollView(.horizontal) {
                    
                  
                    
                    HStack{
                ContentView(imageName: "card", authorName: "Jose Isaac Chin", courseTitle: "Curso de aplicación de uber android desde 0 a experto", originalPrice: "$399", discountPrice: "$199")
                    .frame(width: 300)
                ContentView(imageName: "unity", authorName: "Jose Isaac Chin", courseTitle: "Curso videojuegos en Unity", originalPrice: "$399", discountPrice: "$199")
                    .frame(width: 300)
                        
                    }
        }
    }
}

}
}

