class users {

    user { 'admin' :
        password  => '$1$JpxC0htu$SpnXFHLtJ33umXPekjpU1/'
        ensure    => present
    }

    user { 'chrisw'
        password  => '$1$r4OUtBwh$C9WAqiBhdJ61YjIUA8YKh.'
        ensure    => present
    }
}
