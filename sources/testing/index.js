const express = require('express');
const cors = require('cors');
const request = require('request');
const app = express();
const path = require("path");
const fs = require("fs");

const HOST = process.env.HOST || 'localhost';
const PORT = process.env.PORT || 8088;
const PROJECT_APP = process.env.PROJECT_APP || 'webapp';
const NODE_ENV = process.env.NODE_ENV || 'development';

const distDir = 'dist';
const publishPath = path.join(__dirname, '../', `${distDir}/${PROJECT_APP}`);


app.listen(PORT, HOST, function () {
  console.log(`publishPath is ${publishPath}`);
  console.log(`Server testing production mode is ready at ${HOST}:${PORT}!`);  
});

app.use(express.static(publishPath));
app.use(cors());

app.all("*", function(req, resp) {
    resp.sendFile(`${publishPath}/index.html`);
});

process.on('SIGINT', function() {
    process.exit();
});