const product = require("../controllers/product.controller.js");
const cart = require("../controllers/cart.controller.js");

module.exports = function (app) {

  var router = require("express").Router();

  router.get("/products", product.getProduct);
  router.post("/products", product.create);

  router.get("/carts", cart.getCart);
  router.post("/carts", cart.create);
  app.use('/api', router);
};