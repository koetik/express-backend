module.exports = (sequelize, Sequelize) => {
    const Product = sequelize.define("products", {
        id: {
            allowNull: false,
            primaryKey: true,
            type: Sequelize.UUID,
            defaultValue: Sequelize.UUIDV4
        },
        name: {
            type: Sequelize.STRING
        },
        prize: {
            type: Sequelize.INTEGER
        },
        stock: {
            type: Sequelize.INTEGER
        },
        code: {
            type: Sequelize.STRING
        },
        pict: {
            type: Sequelize.STRING
        },
    }, {
        tableName: 'products',
        underscored: true,
        freezeTableName: true,
    });

    return Product;
}