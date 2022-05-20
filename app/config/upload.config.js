const multer = require("multer");
const path = require('path');
var crypto = require('crypto');
const db = require("../models");
const Product = db.product;

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(`${__dirname}/../../file_upload`));
    },
    filename: async (req, file, cb) => {
        const match = ["image/jpg", "image/png"];

        if (match.indexOf(file.mimetype) === -1) {
          cb('hanya file jpg dan png yang dapat diupload', null);
        }

        var product = await Product.findOne({
            order: [ [ 'createdAt', 'DESC' ]],
        });

        var code = '001'
        
        if(product) {
            var codePict = parseInt(product.code.substr(product.code.length - 3)) + 1
            codePict = codePict.toString()

            switch(codePict.length) {
                case 1:
                    code = "00"+codePict
                    break;
                case 2:
                    code = "0"+codePict
                    break;
                case 3:
                    code = codePict
                    break;
            }
        }
        
        var name = req.body.name.split(" ")
        var codeName = (name.length > 1)?name[0].charAt(0)+name[1].charAt(0):name[0].charAt(0)+name[0].charAt(1)
        code = codeName+code
        cb(null, code + path.extname(file.originalname));
    },
});

exports.store = (field) => {
    return multer({
        storage: storage
    }).single(field);
}