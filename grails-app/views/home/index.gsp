<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Example Grails Application: Grails 4.0.6</title>

</head>

<body>
<div style="margin: 5em 1em">
    <h2>UrlMapping Sample</h2>
    <p style="margin: 1em"><g:link controller="question">Test UrlMapping with form</g:link></p>

    <p style="margin: 1em"><g:link uri="/inhabituel">Test UrlMapping with URL</g:link></p>
</div>

<div style="margin: 5em 1em">
    <h2>Current Language: ${currentLanguage}</h2>
    <p>
        <g:link uri="/" params="[lang: 'en']">English</g:link>
        <g:link uri="/" params="[lang: 'de']">Deutsch</g:link>
        <g:link uri="/" params="[lang: 'fr']">Français</g:link>
    </p>
</div>
<div style="margin: 5em 1em">
    <h2>Raw output samples: in the same controller's view</h2>
    <table>
        <tr><th>Expression</th><th>Result</th></tr>
        <tr>
            <td>${'${content}'}</td>
            <td>${content}</td>
        </tr>
        <tr>
            <td>${'${raw(content)}'}</td>
            <td>${raw(content)}</td></tr>
        <tr>
            <td>${'${content.encodeAsRaw()}'}</td>
            <td>${content.encodeAsRaw()}</td>
        </tr>
        <tr>
            <td>${'<g:encodeAs codec="Raw">${content}</g:encodeAs>'}</td>
            <td><g:encodeAs codec="Raw">${content}</g:encodeAs></td>
        </tr>
        <tr>
            <td>${'<g:encodeAs codec="None">${content}</g:encodeAs>'}</td>
            <td><g:encodeAs codec="None">${content}</g:encodeAs></td>
        </tr>
    </table>
</div>

<g:include controller="rawContent"/>

<g:render template="/templates/rawContent" model="[content: contentTemplate]"/>


</body>
</html>
