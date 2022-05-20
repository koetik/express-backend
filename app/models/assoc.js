module.exports = function (db) {
    db.cart.belongsTo(db.product, {
        foreignKey: "product_id",
        as:'product'
    });

    db.product.hasMany(db.cart, {
        targetKey: 'product_id', 
        as:'cart'
    });
    
}