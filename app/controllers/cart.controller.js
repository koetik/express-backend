const db = require("../models");
const controller = require("./controller");

const Cart = db.cart;
const Product = db.product;
const Op = db.Sequelize.Op;

exports.getCart = async (req, res) => {
    var where = {};

    var cart = await Cart.findAll({
        where: where
    })

    if (cart.length < 1) {
        var dtRes = controller.apiResponse('data tidak ditemukan', false)
        return res.status(404).send(dtRes);
    }
    var dtRes = controller.apiResponse(cartMultipleTransform(cart), true)
    return res.send(dtRes);

};

exports.create = async (req, res) => {

    var getProduct = await Product.findByPk(req.body.product_id);

    if (getProduct.stock == 0) {
        var data = controller.apiResponse(("Stok Tidak Mencukupo"), false)
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

    var product = await Product.findByPk(req.body.product_id);

    try {
        await Product.update({
            stock: (product.stock + getCart.qty)
        }, {
            where: {
                id: req.body.product_id
            }
        })

        await Cart.destroy({
            where: {
                product_id: req.body.product_id
            },
            force: true
        })
        var dtRes = controller.apiResponse("Cart telah dihapus", true)
        return res.send(dtRes);
    } catch (err) {
        var data = controller.apiResponse((err.message || "Some error occurred while creating the Product."), false)
        return res.status(500).send(data);
    }
}

exports.sub = async (req, res) => {

    var getCart = await Cart.findByPk(req.params.id, {
        include: "product"
    });

    if (getCart.product.stock < 1) {
        var data = controller.apiResponse(("Stok Tidak Mencukupo"), false)
        return res.status(500).send(data);
    }

    try {
        await Cart.update({
            qty: (getCart.qty + 1)
        }, {
            where: {
                id: req.params.id
            }
        })

        await Product.update({
            stock: (getCart.product.stock - 1)
        }, {
            where: {
                id: getCart.product.id
            },
        })
        var dtRes = controller.apiResponse("Cart telah ditambahkan", true)
        return res.send(dtRes);
    } catch (err) {
        var data = controller.apiResponse((err.message || "Some error occurred while creating the Product."), false)
        return res.status(500).send(data);
    }
}

exports.min = async (req, res) => {

    var getCart = await Cart.findByPk(req.params.id, {
        include: "product"
    });
    
    try {
        if(getCart.qty < 2) {
            console.log('a')
            await Cart.destroy({
                where: {
                    id: req.params.id
                },
                force: true
            })
            await updateStokProduck(getCart)

            var dtRes = controller.apiResponse("Cart telah dihapus", true)
            return res.send(dtRes);
        }
        
        await Cart.update({
            qty: (getCart.qty - 1)
        }, {
            where: {
                id: req.params.id
            }
        })
        await updateStokProduck(getCart)
        var dtRes = controller.apiResponse("Cart telah dikurangi", true)
        return res.send(dtRes);
    } catch (err) {
        var data = controller.apiResponse((err.message || "Some error occurred while creating the Product."), false)
        return res.status(500).send(data);
    }
}

async function updateStokProduck (getCart) {
    await Product.update({
        stock: (getCart.product.stock + 1)
    }, {
        where: {
            id: getCart.product.id
        },
    })
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