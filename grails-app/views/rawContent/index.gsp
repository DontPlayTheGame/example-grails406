<%@ page contentType="text/html;charset=UTF-8" %>
<div style="margin: 5em 1em">
    <h2>Raw output samples: in included controller</h2>
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
