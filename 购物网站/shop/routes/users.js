var express = require('express');
var router = express.Router();

var user = require('../controllers/user');

router.post('/regist', user.regist);

router.get('/checkUser', user.checkUser);

router.post('/login', user.login);

router.get('/checkLogin', user.checkLogin);

module.exports = router;
