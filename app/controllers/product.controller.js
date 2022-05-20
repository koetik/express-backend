const db = require("../models");
const controller = require("./controller");

const multer = require("multer");
const upload = require("../config/upload.config");

const Product = db.product;
const Op = db.Sequelize.Op;



exports.getProduct = async (req, res) => {
    var where = {
        stock: {
            [Op.gt]: 0
        },
    };

    var product = await Product.findAll({
        where: where
    })

    if (product.length <= 0) {
        data = controller.apiResponse('data tidak ditemukan', false)
        return res.status(404).send(data);
    }
    data = controller.apiResponse(productMultipleTransform(product), true)
    return res.send(data);
    
};

exports.create = (req, res) => {
    
    let uploadFile = upload.store('pict')

    uploadFile(req, res, function (err) {
        if (req.fileValidationError) {
            return res.send(req.fileValidationError);
        } else if (!req.file) {
            return res.send(err);
        } else if (err instanceof multer.MulterError) {
            return res.send(err);
        } else if (err) {
            return res.send(err);
        }
        
        var code = req.file.filename.split(".")
        const productData = {
            name: req.body.name,
            prize: req.body.prize,
            stock: req.body.stock,
            code: code[0],
            pict: req.file.filename,
        };

        Product.create(productData)
            .then(data => {
                Product.findByPk(data.id).then(re => {
                    data = productSingleTransform(re);
                    data = controller.apiResponse(data, true)
                    res.send(data);
                })
            })
            .catch(err => {
                var data = controller.apiResponse((err.message || "Some error occurred while creating the Product."), false)
                return res.status(500).send(data);
            });
    });
}

function productMultipleTransform(dt) {
    var ds = [];
    var td = {};
    for (var i in dt) {
        td = productSingleTransform(dt[i])
        ds[i] = td
        td = {};
    }
    return ds;
}

function productSingleTransform(dt) {
    
    return {
        id: dt.id,
        name: dt.name,
        prize: dt.prize,
        stock: dt.stock,
        code: dt.code,
        pict: dt.pict,
    }
}