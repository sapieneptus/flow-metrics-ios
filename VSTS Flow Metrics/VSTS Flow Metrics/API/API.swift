
import Foundation

class APIRequest {
    let params:[AnyHashable:Any]
    var successHandler:((_ result:Any) -> (Void))? = nil
    var failureHandler:((_ error:String) -> (Void))? = nil

    init(params:[AnyHashable:Any]) {
        self.params = params
    }

    func onSuccess(_ success:@escaping (_ result:Any) -> (Void)) -> APIRequest {
        self.successHandler = success
        return self
    }

    func onFailure(_ failure:@escaping (_ error:String) -> (Void)) -> APIRequest {
        self.failureHandler = failure
        return self
    }

    func perform() {
        // TODO
    }

    class func fetchMockPR() -> PullRequest {
        let mockDataPath = Bundle.main.path(forResource: "sample-pr", ofType: "json")!
        let mockData = NSData(contentsOfFile:mockDataPath)! as Data
        return try! JSONDecoder().decode(PullRequest.self, from: mockData)
    }
}
