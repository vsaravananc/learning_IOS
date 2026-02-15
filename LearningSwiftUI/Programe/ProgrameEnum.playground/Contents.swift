// main.swift

enum Response<S,F> {
    case Failer (_ failer : F)
    case Success( sucess : S)
}

func dummFailer () -> Response<Bool,String>{
    return .Failer("failed")
}

let response :  Response<Bool,String>  = dummFailer();

switch response {
case .Success(sucess: let value): print(value)
case .Failer(let failer) : print(failer)
}

let listOfNumbers : [Int] = [1,2,3,4]

for number in listOfNumbers {
    print(number)
}
