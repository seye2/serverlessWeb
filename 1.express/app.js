var express = require('express');
var awsServerlessExpressMiddleware = require('aws-serverless-express/middleware');
var app = express();

app.use(awsServerlessExpressMiddleware.eventContext());
app.get('/', function (req, res) {
    res.send('Hello World!');
});

module.exports = app;