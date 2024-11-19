const express = require("express");
const data = require("./restaurant.json")

const app = express();

app.get("/", (req, res) => {
    res.json(data)
})


app.listen(5005, () => {
    console.log("App is running")
});
