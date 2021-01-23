package example.grails406

class AnswerController {
    def index() { }

    def doSomething() {
        flash.message = message(code: "question.mymessage", default: "Job done")
        redirect(controller: "home")
    }
}
