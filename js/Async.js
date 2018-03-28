function test(){
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "localhost/tpPersistance/ajax_fonction.php", false); 
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.send("action=connection");
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



