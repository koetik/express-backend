exports.apiResponse = (data, success = false, meta = false) => {
    let res = {};
    
    res.items = data;
    res.message = '';
    res.success = success;

    if (meta) {
        res.meta = meta;
    }

    if (!success) {
        res.message = data;
        res.items = [];
    }

    return res

};
