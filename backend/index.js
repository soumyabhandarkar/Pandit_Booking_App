const connection = require("./connection");
const express = require("express");
const bodyParser = require("body-parser");

const app = express();

app.use(bodyParser.json());

// ************** USERS *******************

//! GET
// Getting all users data
app.get("/users", (req,res) => {
    connection.query("SELECT * FROM users", (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

// Getting a particular user data using id
app.get("/users/:id", (req,res) => {
    connection.query("SELECT * FROM users WHERE id=?", [req.params.id], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

//! Delete
app.delete("/users/:id", (req,res) => {
    connection.query("DELETE FROM users WHERE id=?", [req.params.id], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

//! POST
app.post("/users", (req,res) => {
    const user = req.body;
    const userdata = 
    [user.full_name, user.username, user.password, user.mobile, user.email, user.pincode, user.address, user.type];
    connection.query
    ("INSERT INTO users(full_name,username,password,mobile,email,pincode,address,type) values(?)", [userdata], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

//! PATCH
// update existing data
app.patch("/users", (req,res) => {
    const user = req.body;
    connection.query("UPDATE users SET ? WHERE id="+user.id, [user], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            res.send(results);
        }
    })
})

// *************** Pandit-details ********************
//! GET
// Getting all pandit data
app.get("/pandit_details", (req,res) => {
    connection.query("SELECT * FROM pandit_details", (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

// Getting a particular pandit data using id
app.get("/pandit_details/:id", (req,res) => {
    connection.query("SELECT * FROM pandit_details WHERE id=?", [req.params.id], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

//! Delete
app.delete("/pandit_details/:id", (req,res) => {
    connection.query("DELETE FROM pandit_details WHERE id=?", [req.params.id], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

//! POST
app.post("/pandit_details", (req,res) => {
    const pandit = req.body;
    const panditdata = 
    [pandit.user_id, pandit.firstName, pandit.lastName, pandit.specialization, pandit.start_timing, pandit.end_timing, pandit.status];
    connection.query
    ("INSERT INTO pandit_details(user_id,firstName,lastName,specialization,start_timing,end_timing,status) values(?)", [panditdata], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

//! PATCH
// update existing data
app.patch("/pandit_details", (req,res) => {
    const pandit = req.body;
    connection.query("UPDATE pandit_details SET ? WHERE id="+pandit.id, [pandit], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            res.send(results);
        }
    })
})

// *************** Pooja-details ********************
//! GET
// Getting all pooja data
app.get("/pooja_details", (req,res) => {
    connection.query("SELECT * FROM pooja_details", (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

// Getting a particular pandit data using id
app.get("/pooja_details/:id", (req,res) => {
    connection.query("SELECT * FROM pooja_details WHERE id=?", [req.params.id], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

//! POST
app.post("/pooja_details", (req,res) => {
    const pooja = req.body;
    const poojadata = 
    [pooja.category_id, pooja.title, pooja.short_description, pooja.status];
    connection.query
    ("INSERT INTO pooja_details(category_id,title,short_description,status) values(?)", [poojadata], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            // console.log(results);
            res.send(results);
        }
    })
})

//! PATCH
// update existing data
app.patch("/pooja_details", (req,res) => {
    const pooja = req.body;
    connection.query("UPDATE pooja_details SET ? WHERE id="+pooja.id, [pooja], (err,results) => {
        if(err){
            console.log(err);
        }
        else{
            res.send(results);
        }
    })
})

app.listen(5005, ()=>{
    console.log("Express server is running on port 5005")
});