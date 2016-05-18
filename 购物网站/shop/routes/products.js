var express = require('express');
var router = express.Router();

var product = require('../controllers/product');

router.get('/list', product.list);

router.get('/detail', product.detail);

module.exports = router;
