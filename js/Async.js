
function test() {
    $.ajax({ url: 'http://localhost:8888/tpPersistance/ajax_fonction.php',
        data: { 'integration': 'ts' },
        type: "POST",
        success: function(output) {
        }
    });

}
function testConnection() {

    var isMomHappy = true;
    var statutConnection = new Promise(
        function (resolve, reject) {
            if (test()) {//Si il ya une con
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
            console.log(error.message);
        });
}


function set() {
        key = document.forms["produit"].commercial_id.value  +"_"+ document.forms["produit"].magasin_id.value+"_"+ document.forms["produit"].produit_id.value;
	data={
            "commercial_id":document.forms["produit"].commercial_id.value,
            "magasin_id":document.forms["produit"].magasin_id.value,
            "produit_id":document.forms["produit"].produit_id.value,
            "prix":document.forms["produit"].prix.value,
            "facet":document.forms["produit"].facet.value,                  
             "etagere":document.forms["produit"].etagere.value,
             "absent":document.forms["produit"].absent.value
        };
	localStorage.setItem(key, data);
}
function get() {
	key = document.forms["editor"].key.value;
	document.forms["editor"].data.value = localStorage.getItem(key);
}
