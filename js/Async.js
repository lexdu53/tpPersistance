
function test() {
    $.ajax({ url: 'ajax_fonction.php',
        data: { 'function': 'ts' },
        type: "POST",
        success: function(output) {
            alert(output);
        }
    });

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



