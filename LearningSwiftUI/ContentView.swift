import SwiftUI

struct ContentView: View {
    @State private var email:String = "";
    @State private var password:String = "";
    var body: some View {
        ScrollView{
            VStack(alignment: .leading,spacing: 15) {
                
                Image("Logo")
                
                
                Text("Sign in to your \nAccount")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .fontDesign(.default)
                    
                    
                
                Text("Enter your email and password to log in ")
                    .multilineTextAlignment(.leading)
                    
                TextField("email", text: $email)
                    .frame(height: 55)
                    .padding(.horizontal)
                    .background(.gray,in: RoundedRectangle(cornerRadius: 14).stroke(lineWidth: 1.4))
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                    .submitLabel(.next)
                
                SecureField("password", text: $password)
                    .frame(height: 55)
                    .padding(.horizontal)
                    .background(.gray,in: RoundedRectangle(cornerRadius: 14).stroke(lineWidth: 1.4))
                    .keyboardType(.default)
                    .textContentType(.password)
                
                
                Button("Forgot password?") {
                }.frame(maxWidth: .infinity,alignment: .trailing).bold()
                
                NavigationLink{
                    HomeView()
                }
                label: {
                    Text("Login")
                        .frame(maxWidth: .infinity,minHeight: 35)
                        .bold()
                        .font(.headline)
                }.buttonStyle(.borderedProminent)
                    .padding([.top])
                
                Spacer().frame(height: 15)
                
                HStack{
                    
                    Rectangle().fill(Color.gray.opacity(0.4))
                    
                    Text("or")
                    
                    Rectangle().fill(Color.gray.opacity(0.4))
                    
                }.frame(height: 1)
                    .padding(.top)
                
                
                Spacer().frame(height: 30)
                
                
                Button {
                    
                } label: {
                    HStack{
                        Image("google")
                            .resizable()
                            .frame(width: 15,height: 15)
                            .scaledToFit()
                        Text("Continue with Google")
                            .foregroundStyle(Color.black)
                            .bold()
                    }.frame(maxWidth: .infinity,minHeight: 48,maxHeight: 48,)
                }.background(Color.gray, in: RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 0.3))
                
                
                Button {
                    
                } label: {
                    HStack{
                        Image("facebook")
                            .resizable()
                            .frame(width: 15,height: 15)
                            .scaledToFit()
                        Text("Continue with Facebook")
                            .foregroundStyle(Color.black)
                            .bold()
                    }.frame(maxWidth: .infinity,minHeight: 48,maxHeight: 48,)
                }.background(Color.gray, in: RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 0.3))
                    .padding(.top,5)
                Spacer().frame(height: 30)
                
                HStack{
                    Text("Don’t have an account?")
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .bold()
                    }

                }.frame(maxWidth: .infinity)

                    
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .top
                
            )
            .padding([.horizontal, .top])
           
        }
        .scrollDismissesKeyboard(.immediately)
        .scrollIndicators(.hidden)
        .navigationBarBackButtonHidden(true)
    }
}

struct MyTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(15)
            .background(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

#Preview {
    ContentView()
}
