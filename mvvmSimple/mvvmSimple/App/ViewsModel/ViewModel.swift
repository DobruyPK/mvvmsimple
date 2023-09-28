import Foundation

class ViewModel{
    var deleagate: ViewModelDeligate?

}

extension ViewModel: ViewModelDeligate{
    func validation(login: String, password: String) -> Bool {
        return ((deleagate?.validation(login: login, password: password)) != nil)
    }
}
