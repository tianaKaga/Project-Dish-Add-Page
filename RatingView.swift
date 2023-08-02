//
//  RatingView.swift
//  Project Dish Add Page
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int?
    private func starType(index: Int) -> String {
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    
    
    
    
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in Image(systemName: self.starType(index: index))
                      .foregroundColor(Color.red)
                      .onTapGesture {
                        self.rating = index
                      }
                  }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}
