#json-forms

##About
This project sets out to create a document a simple standard of describing forms using JSON for use by templating systems and content authors to aid the building and validation of HTML based forms.

Initial implemention will be CommonJS module usable in the browser with some supporting tooling relying upon NodeJS.

##Why?
Inspiration comes from long and sad days hand coding semantic and accessible web based html forms. There is some potential cross-over/standing on the shoulders of (http://www.w3.org/TR/xforms11/)[XForms], but don't get too hasty cause some of the stuff there is ridiculously complex.

The toolset is geared to abstract the validation and rendering portions into self-contained sections so that the concepts could be re-implemented in another host language (other than javascript/ecmascript) or templating system while still taking advantage of the information contained in the JSON description format. 

We hope to take like %30-%50 of the pain of handcrafting good html forms.

##MORE STUFF SOMEDAY

