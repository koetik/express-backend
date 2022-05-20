const authJwt = require("./authJwt");
const verifySignUp = require("./verifySignUp");
const uploadFileMiddleware = require("./uploadFile");

module.exports = {
  authJwt,
  verifySignUp,
  uploadFileMiddleware
};
