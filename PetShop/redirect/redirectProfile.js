/*
SI EL INVITADO QUIERE ENTRAR EN LA RUTA 
/users/profile
LO REDIRECCIONA PARA LOGEARSE.
*/
modul
module.exports = function redirectProfile(req,res,next){
    if(!req.session.user){
        res.redirect('/users/login');
    }
    next();
}