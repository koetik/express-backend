module.exports = (sequelize, Sequelize) => {
    const Cart = sequelize.define("carts", {
        id: {
            allowNull: false,
            primaryKey: true,
            type: Sequelize.UUID,
            defaultValue: Sequelize.UUIDV4
        },
        product_id: {
            type: Sequelize.UUID
        },
        qty: {
            type: Sequelize.INTEGER
        },
    }, {
        tableName: 'carts',
        underscored: true,
        freezeTableName: true,
    });

    return Cart;
}