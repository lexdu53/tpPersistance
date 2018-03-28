function save_produit_magasin() {

    return new Promise(function (resolve, reject) {
        $.ajax({
            url: 'ajax_fonction.php',
            type: 'post',
//            dataType: 'json',
            data: {'function': 'ts'},
            success: function (data) {
                alert(data);
            },
            error: function (xhr) {
                reject(xhr)
            }

        });
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
