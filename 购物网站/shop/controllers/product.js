var productModel = require('../models/productModel');

exports.list = function(req, res){
    productModel.getAll(function(rs){
        res.send(rs);
    });
};

exports.detail = function(req, res){
    var productId = req.query.productId;
    productModel.getById(productId, function(rs){
        res.render('productDetail', {product: rs[0]});
        //res.send(rs);
        /*productModel.getProductImg(productId, function(rs1){
            //res.send(rs1);

            rs[0].productImg = rs1;

            res.send(rs);

        });*/
    });

};