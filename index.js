const express = require("express");
const cors = require("cors");
const bodyParser = require('body-parser');

const db = require("./app/models");
const moment = require('moment');


const app = express();

// var corsOptions = {
//     origin: "localhost:8082",
//     // optionsSuccessStatus: 200, // For legacy browser support
//     // methods: "GET, PUT, POST"
// };

app.use(cors());

app.use(bodyParser.json());
app.use(express.json());


app.use(express.urlencoded({
    extended: true
}));

db.sequelize.sync();

moment.locale('id');
app.get('/', (req, res) => {
    res.send('Hello World!')
  })
require("./app/routes/micro")(app);

//set static file
app.use(express.static('public'));  
app.use('/files', express.static('file_upload')); 

// set port, listen for requests
const PORT = process.env.PORT || 8080;

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});