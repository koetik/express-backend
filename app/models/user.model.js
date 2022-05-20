module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define("t_user", {
        id: {
            allowNull: false,
            primaryKey: true,
            type: Sequelize.UUID,
            defaultValue: Sequelize.UUIDV4
        },
        email: {
            type: Sequelize.STRING
        },
        username: {
            type: Sequelize.STRING
        },
        role: {
            type: Sequelize.STRING
        },
        struktur: {
            type: Sequelize.STRING
        },
        password: {
            type: Sequelize.STRING
        },
    }, {
        tableName: 't_user',
        underscored: true,
        freezeTableName: true,
    });

    return User;
}