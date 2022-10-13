//
//  mask.swift
//  longpressgesture
//
//  Created by dip dutt on 10/14/22.
//

import SwiftUI

struct Mask: View {
    
    @State var rating:Int = 2
    
    
    
    
    
    var body: some View {
        
        ZStack {
            
            starsview
            
                .overlay(
                    
                    
                    
                    
                    overlayView.mask(starsview)
                    
                    
                      
                
                
                
                
                
                )
            
                
            
            
            
           
            
            
            
            
        }
        
        
        
        
    }
    
    
    
    
    
    private var overlayView: some View {
        
        
        
        
        
        GeometryReader { geometry in
            
            ZStack(alignment:.leading) {
                
                Rectangle()
                
                    .foregroundColor(Color.yellow)
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
                
                
                
            }
            
            
            
            
        
            
            
            
        }
        
        
        .allowsHitTesting(false)
        
        
        
        
        
        
        
        
        
    }
    
    private var starsview: some View {
        
        
        
        
        
        
        HStack {
            
            
            ForEach(1..<6) { index in
                
                
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                
                    .onTapGesture {
                        
                        withAnimation(.easeInOut) {
                            
                            rating = index
                            
                            
                            
                        }
                    }
                
                
        
            }
        
     }
        
        
        
        
        
    }
    
    
   
}





struct mask_Previews: PreviewProvider {
    static var previews: some View {
        Mask()
    }
}
