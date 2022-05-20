const util = require("util");
const path = require("path");
const multer = require("multer");
const maxSize = 2 * 1024 * 1024;

let storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, path.join(`${__dirname}/../../file_upload`));
  },
  filename: (req, file, cb) => {
    cb(null, file.originalname);
  },
});

let uploadFile = multer({
  storage: storage,
  limits: { fileSize: maxSize },
}).single("lampiran");

let uploadFileMiddleware = util.promisify(uploadFile);
module.exports = uploadFileMiddleware;


// const util = require("util");

// const multer = require("multer");

// var storage = multer.diskStorage({
//   destination: (req, file, callback) => {
//     callback(null, path.join(`${__dirname}/../../file_upload`));
//   },
//   filename: (req, file, callback) => {
    // const match = ["image/png", "image/jpeg"];

    // if (match.indexOf(file.mimetype) === -1) {
    //   var message = `<strong>${file.originalname}</strong> is invalid. Only accept png/jpeg.`;
    //   return callback(message, null);
    // }

//     var filename = `${Date.now()}-bezkoder-${file.originalname}`;
//     callback(null, filename);
//   }
// });

// var uploadFiles = multer({ storage: storage }).array("multi-files", 10);
// var uploadFilesMiddleware = util.promisify(uploadFiles);
// module.exports = uploadFilesMiddleware;