//
//  ContentView.swift
//  Project Dish Add Page
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    /*
     @Binding var rating: Int
     
     var label = ""
     var maximumRating = 5
     var offImage: Image?
     var onImage = Image(systemName: "star.fill")
     var offColor = Color.gray
     var onColor = Color.yellow
     
     func image(for number: Int) -> Image {
     if number > rating {
     return offImage ?? onImage
     } else {
     return onImage
     }
     }
     */
    
    @State var dishName: String
    @State var dishComment: String
    @State private var rating: Int?
    @State var dishData: [String : String] = [:]
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [
                    Color(uiColor: UIColor(red: 253/255, green: 100/255, blue: 97/255, alpha: 255/255)),
                    Color(uiColor: UIColor(red: 254/255, green: 195/255, blue: 194/255, alpha: 230/255)),
                    Color(uiColor: UIColor(red: 244/255, green: 183/255, blue: 126/255, alpha: 200/255)),
                ]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .ignoresSafeArea()
                
                VStack{
                    
                    Text("Add your dish!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    
                    
                    HStack(spacing: 30) {
                        
                        Text("Dish:")
                            .padding()
                        
                        TextField("type here", text: $dishName)
                            .padding()
                        
                    }
                    .padding()
                    
                    HStack{
                        Text("Rate:")
                        
                        RatingView(rating: $rating)
                        Text(rating != nil ? "Your rating: \(rating!)" : "")
                        
                    }
                    HStack {
                            Text("Comments:")
                                .padding()
                            TextField("type here", text: $dishComment)
                                .padding()
                        }
                        .padding()
                        
                        Button("Save") {
                            
                            dishData["Dish"] = "\($dishName)"
                            dishData["Rating"] = "\($rating)"
                            dishData["Comments"] = "\($dishComment)"
                            //$dishData["Dish": "\($dishName)", "Comments": "\($dishComment)", "Rating": "\($rating)"]
                            
                            
                        }
            
                        
                        
                    
                }
                
                
            }
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dishName: "", dishComment: "").environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}


//rating: .constant(4)
