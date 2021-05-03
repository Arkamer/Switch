import Cocoa

var statusCode: Int = 418
var errorString: String = "The request failed with the error: "

switch statusCode {
//case 401:
//    errorString = "Unauthorized"
//
//case 403:
//    errorString = "Forbiden"
//
//case 404:
//    errorString = "Not found"
//
//default:
//    errorString = "None"

//case 401, 403, 404:
//    errorString += "There was something wrong with the request."
//    fallthrough
//default:
//    errorString += " Please, review the request and try again."

case 401:
    errorString += "Unauthorized"
    
case 400...417:
    errorString += "Client error, \(statusCode)."
    
case 500...505:
    errorString += "Server error, \(statusCode)."
    
case let code where code < 100 || code >= 600:
    errorString = "\(code) is an illegal status code."
    
default:
    //errorString = "\(statusCode) is not a known error code."
    errorString = "Unexpected error encountered."

//case let code:
//    errorString = "\(code) is not a known error code."
}

let error = (code: statusCode, msg: errorString)
error.code
error.msg

let firstErrorCode = 404
let secondErrorCode = 418
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("Both error codes were 404.")
case (404, _):
    print("Only the 1st code is 404, and we don't care about the 2nd code.")
case (_, 404):
    print("Only the 2nd code is 404, and we don't care about the 1st code.")
default:
    print("Neither code is 404.")
}

let age = 25
//switch age {
//case 18...35:
//    print("Cool demographic")
//default:
//    break
//}

if case 18...35 = age, age >= 25, age < 30 {
    print("In cool demographic, can rent a car, and is not in their thirties")
}
