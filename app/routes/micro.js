const product = require("../controllers/product.controller.js");
const cart = require("../controllers/cart.controller.js");

module.exports = function (app) {

  var router = require("express").Router();

  router.get("/products", product.getProduct);
  router.post("/products", product.create);

  router.get("/carts", cart.getCart);
  router.post("/carts", cart.create);
  router.post("/carts/clear", cart.clear);

  router.post("/carts/:id/sub", cart.sub);
  router.post("/carts/:id/min", cart.min);

  app.use('/api', router);
};