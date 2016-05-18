var express = require('express');
var router = express.Router();

var welcome = require('../controllers/welcome');

router.get('/', welcome.index);

router.get('/login', welcome.login);

router.get('/reg', welcome.reg);

module.exports = router;
