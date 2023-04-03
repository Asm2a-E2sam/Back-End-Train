
const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 8080;
app.get("/", (req, res) => {
    console.log("I have requested Home page url");
    res.end("welcome to home page");
})

app.post("/user/add", bodyParser.json(), (req, res) => {
    res.json({
            Name : "Asmaa"
    })
})

app.get("*", (req, res) => {
    res.status(404).json({
            error: "Page not found", 
            status_code: 404, 
            fun_message: "You love to get errros"
    });
})

app.listen(8080, 'localhost', function () {
    console.log("server is up & running")
})
