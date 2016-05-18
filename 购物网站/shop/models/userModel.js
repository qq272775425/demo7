var db = require('./db');

exports.save = function(user, callback){
    db.query("insert into t_user(username, password, sex) values('"+user.username+"', '"+user.password+"', '"+user.sex+"')", callback);
};

exports.getByName = function(name, callback){
    db.query('select * from t_user where username=?',[name], callback);
};

exports.getByNameAndPwd = function(name, pwd, callback){
    db.query('select * from t_user where username=? and password=?',[name, pwd], callback);
};