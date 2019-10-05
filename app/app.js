var express = require('express');
var app = express();
var mongoose = require("mongoose");

//DB setup
mongoose.connect("mongodb://mongodb:27017");

app.get('/', function(req, res){
  res.send("Web-Anwendungen WS18 / WebApp bereit");
});
app.listen(3000, function(){
  console.log('Web-Anwendungen - Node.JS App on Port 3000');
});