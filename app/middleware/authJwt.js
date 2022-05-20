const jwt = require("jsonwebtoken");
const config = require("../config/auth.config.js");
const db = require("../models");
const User = db.user;

verifyToken = (req, res, next) => {
  if (!req.headers["authorization"]) {
    return res.status(403).send({
      message: "No token provided!"
    });
  }

  let reqHeader = req.headers["authorization"].split(" ");
  var token = reqHeader[1]

  if (!token) {
    return res.status(403).send({
      message: "No token provided!"
    });
  }

  jwt.verify(token, config.secret, (err, decoded) => {
    if (err) {
      return res.status(401).send({
        message: "Unauthorized!"
      });
    }
    req.userId = decoded.id;
    req.userRole = decoded.role;
    req.userStruktur = decoded.struktur;
    next();
  });
};

hasPermit = (roles = []) => {
  if (typeof roles === 'string') {
    roles = [roles];
  }
  return (req, res, next) => {
    User.findByPk(req.userId).then(user => {
      if (roles.length && !roles.includes(user.role)) {
        res.status(403).send({
          message: "User Not Authorized"
        });
        return
      }
      next();
    });
  }
};

const authJwt = {
  verifyToken: verifyToken,
  hasPermit: hasPermit,
};
module.exports = authJwt;