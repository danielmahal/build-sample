var data = require('../data/cats.json');
var catTemplate = require('./templates/cat.handlebars');

data.forEach(function(cat) {
    document.getElementById('cats').innerHTML += catTemplate(cat);
})
