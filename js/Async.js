function save_produit_magasin() {
   /* for (var i=1; i <= localStorage.length; i++)  {
        alert(localStorage.getItem(i));
    }*/
     //localStorage.clear();
    return new Promise(function (resolve, reject) {
        $.ajax({
            url: 'ajax_fonction.php',
            type: 'post',
//            dataType: 'json',
            data: {'Data': obj},
            success: function (data) {
                //alert(data);
            },
            error: function (xhr) {
                reject(xhr);
            }

        });
    });
}
function get_all(){
    Object.keys(localStorage).reduce(function(obj, str) { 
        obj[str] = localStorage.getItem(str); 
        return obj;
    }, {});
}
function set() {
        var num = localStorage.getItem("num");
        if(!num){
            localStorage.setItem("num","0");
            num = localStorage.getItem("num");
        }
        key = parseInt(num+1);
	data={
            "commercial_id":document.forms["produit"].commercial_id.value,
            "magasin_id":document.forms["produit"].magasin_id.value,
            "produit_id":document.forms["produit"].produit_id.value,
            "prix":document.forms["produit"].prix.value,
            "facet":document.forms["produit"].facet.value,                  
             "etagere":document.forms["produit"].etagere.value,
             "absent":document.forms["produit"].absent.value
        };
        localStorage.setItem("num",key);
	localStorage.setItem(key, data);
           

}
