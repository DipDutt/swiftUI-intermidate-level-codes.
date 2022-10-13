//
//  magnificationgesture.swift
//  longpressgesture
//
//  Created by dip dutt on 10/11/22.
//

import SwiftUI

struct magnificationgesture: View {
    
    @State var currentAmount:CGFloat = 0
    
    @State var lastamount:CGFloat = 0
    
    var body: some View {
        
        VStack {
            
            
            HStack {
                
                Circle().frame(width: 35, height: 35)
                    Text("Dip Dutt")
                    Spacer()
                    Image(systemName: "ellipsis")
                
                
                
                
            }
            .padding()
            
            Rectangle()
            .frame(height: 300)
            .scaleEffect( 1 + currentAmount)
            .gesture(
                
                MagnificationGesture()
                    .onChanged { zoomout in
                        
                        
                        currentAmount = zoomout - 1
                        
                        
                        
                        
                    }
                
                
                    .onEnded { zoomin  in
                        
                        
                        withAnimation(.spring()) {
                            
                            
                            currentAmount = 0
                            
                            
                        }
                        
                        
                        
                    }
                    
            
            
            
            
            )
            
            HStack {
                
                
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding()
            .font(.headline)
           
            
            
            
            
        }
        
        
        
        
        
        
    }
}

struct magnificationgesture_Previews: PreviewProvider {
    static var previews: some View {
        magnificationgesture()
    }
}
