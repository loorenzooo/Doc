## Fonction d'extraction des paramètres d'une url est valorisation d'un tableau associatif
```javascript
function ciceGetUrlParameters(url) {
    var vars = {};
    var parts = url.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
        vars[key] = value;
    });
    return vars;
} 
```
