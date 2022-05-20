const db = require("../models");
const controller = require("./controller");

const Cart = db.cart;
const Product = db.product;
const Op = db.Sequelize.Op;

exports.getCart = (req, res) => {
    var where = {};

    Cart.findAll({
            where: where
        })
        .then(data => {
            if (data.length <= 0) {
                data = controller.apiResponse('data tidak ditemukan', false)
                return res.status(404).send(data);
            }
            data = controller.apiResponse(cartMultipleTransform(data), true)
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Some error occurred while retrieving user."
            });
        });
};

exports.create = async (req, res) => {

    var getProduct = await Product.findByPk(req.body.product_id);

    if(getProduct.stock == 0) {
        var data = controller.apiResponse(("Stok Habis"), false)
        return res.status(500).send(data);
    }

    var getCart = await Cart.findOne({
        where: {
            product_id: req.body.product_id
        },
    });
    
    var qty = (getCart) ? getCart.qty + 1 : 1

    const cartData = {
        product_id: req.body.product_id,
        qty: qty,
    };

    
    
    if (getCart) {
        Cart.update(cartData, {
                where: {
                    id: getCart.id
                }
            })
            .then(data => {
                Cart.findByPk(getCart.id).then(re => {
                    getProduct.update({
                        stock: (getProduct.stock - 1)
                    })
                    data = cartSingleTransform(re);
                    data = controller.apiResponse(data, true)
                    res.send(data);
                })
            })
            .catch(err => {
                var data = controller.apiResponse((err.message || "Some error occurred while creating the Product."), false)
                return res.status(500).send(data);
            });


    } else {
        Cart.create(cartData)
            .then(data => {
                Cart.findByPk(data.id).then(re => {
                    getProduct.update({
                        stock: (getProduct.stock - 1)
                    })
                    data = cartSingleTransform(re);
                    data = controller.apiResponse(data, true)
                    res.send(data);
                })

                
            })
            .catch(err => {
                var data = controller.apiResponse((err.message || "Some error occurred while creating the Product."), false)
                return res.status(500).send(data);
            });
    }
    
}

exports.clear = async (req, res) => {

    var getCart = await Cart.findOne({
        where: {
            product_id: req.body.product_id
        },
    });
    var getProduct = await Product.findByPk(req.body.product_id);
    

    
}




function cartMultipleTransform(dt) {
    var ds = [];
    var td = {};
    for (var i in dt) {
        td = cartSingleTransform(dt[i])
        ds[i] = td
        td = {};
    }
    return ds;
}

function cartSingleTransform(dt) {
    return {
        id: dt.id,
        qty: dt.qty,
    }
}