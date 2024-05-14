import Foundation
import cmark
import CommonMark

class CmarkUtil {
    func cmarkExample() {
        let link = CommonMark.Link(children: [], url: URL(string: "https://www.example.com/xyz"))
        let inline: Inline = Inline.link(link)
        let path = link.url?.lastPathComponent
        print(path)
    }
}
