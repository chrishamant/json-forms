//reversing test to put iffi at end of statement - not trying to be the most readable here
var root = !(typeof module !== 'undefined' && module.exports) ? this : (function(){
  return require('jsdom').jsdom("<html><head></head><body></body></html>").createWindow();
})();

//safety first!
(function(root){
  var  doc = root.document;
  
  function text(node, txt){
    node.appendChild( document.createTextNode(txt) );
    return node;
  }
  
  /*
    Main entry into form builder.
    
    @param frmJSON Is a object description of the form
    @returns DocumentFragment containing form
  */
  root.JSONForms = function(frm){
    
    var frag = doc.createDocumentFragment();
    
    var form = doc.createElement("form");
    frag.appendChild(form);
    
    var fields = frm.fields;
    for(var i=0; i< fields.length; ++i){
      text(form,i);
    }
    console.log(frag);
    return frag;
  }
}(root));


