function test(){
    var req = new XMLHttpRequest();
    req.open('GET', 'localhost/ajax_fonction.php?action=connection', false); 
}

function testConnection() {

    var isMomHappy = true;
    var statutConnection = new Promise(
        function (resolve, reject) {
            if (isMomHappy) {
                var phone = {
                    brand: 'Samsung',
                    color: 'black'
                };
                resolve(phone);
            } else {
                var reason = new Error('mom is not happy');
                reject(reason);
            }

        }
    );
    
}

// call our promise
function askConnection() {
    testConnection
        .then(function (fulfilled) {
            return("coucou");
        })
        .catch(function (error) {
            // ops, mom don't buy it
            console.log(error.message);
        });
}



