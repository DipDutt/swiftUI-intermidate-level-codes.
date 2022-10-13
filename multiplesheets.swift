//
//  multiplesheets.swift
//  longpressgesture
//
//  Created by dip dutt on 10/13/22.
//

import SwiftUI


struct RandomModel:Identifiable {
    
    let id = UUID().uuidString
    
    let tittle:String
    
    
    
    
}

struct multiplesheets: View {
    
    @State var selectedModel: RandomModel? = nil
    
    
    
    
    var body: some View {
        
        
        
        
        
        VStack(spacing: 0) {
            
            
            Button("Button 1") {
                
                
                selectedModel = RandomModel(tittle:"first sheet")
                
                
               
                
                
                
                
                
            }
            
            
            
            
            
            Button("Button 2") {
                
                
                selectedModel = RandomModel(tittle:"second sheet")
                
                
            }
            
            
                
            }
        
        .sheet(item: $selectedModel) { model in
            
            
            nextScreen(Selectedmodel: model)
        }
            
            
            
        }
    }
    




struct nextScreen: View {
    
    let  Selectedmodel:RandomModel
    
    
    var body: some View {
        
        
        Text(Selectedmodel.tittle)
            .font(.largeTitle)
        
        
        
        
    }
    
    
    
    
    
    
}



struct multiplesheets_Previews: PreviewProvider {
    static var previews: some View {
        multiplesheets()
    }
}
