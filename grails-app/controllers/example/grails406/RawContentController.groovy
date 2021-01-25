package example.grails406

class RawContentController {

    def index() {
        def content = "<em>sample with included</em> content"
        render(view: "index", model: [content: content])
    }
}
