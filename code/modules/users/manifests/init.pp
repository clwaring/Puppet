class users {
 
    user { 'admin' :
        name      => admin
        ensure    => present
    }     
}
