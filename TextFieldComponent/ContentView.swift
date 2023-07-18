//
//  ContentView.swift
//  TextFieldComponent
//
//  Created by Alex on 18/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isValid:Bool = false
    
    var body: some View {
        Form {
            Section {
                TextField("Adresse e-mail", text: $email)
                SecureField("Mot de passe", text: $password) {
                    isPasswordValid()
                }
                
                if !isValid {
                    Text("Mot de passe doit contenir au moins 8 caractères")
                        .foregroundColor(.red)
                }
            }
        }
    }
    
    func isPasswordValid() {
        if self.password.count >= 8 {
            self.isValid = true
        } else {
            isValid = false
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
