package example.grails406

import org.grails.web.util.WebUtils
import org.springframework.web.servlet.support.RequestContextUtils

class HomeController {

    def index() {
        def content = "<em>sample</em> content"
        def contentTemplate = "<em>sample with template</em> content"
        def webUtils = WebUtils.retrieveGrailsWebRequest()
        String currentLanguage = RequestContextUtils.getLocale(webUtils.getCurrentRequest()).toString().substring(0, 2)
        render(view: "index", model: [content: content, contentTemplate: contentTemplate, currentLanguage: currentLanguage])
    }
}
