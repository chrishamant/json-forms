expose = exports ? this

html5 = '''
<!doctype html>
<html lang="en">
  <head></head>
  <body>
    <h1>Yay! A Form!</h1>
  </body>
</html>
'''

window = require('jsdom').jsdom(html5).createWindow() if not window?
d = window.document

# Main entry into form builder
expose.JSONForms = JSONForms = (form)->
  frm = d.createElement "form"
  
  for field,i in form.fields
    do(field)->
      frm.appendChild d.createTextNode("a field :" + i)
  return frm
