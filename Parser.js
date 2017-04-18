function crt_arr(n) {
    var members = n
    //var shots = 60;
    var results_arr = []
    for (var i = 0; i < members; i++)
        results_arr[i] = new Array(61)

    for (var i = 0; i < results_arr.length; i++)
        for (var j = 0; j < 61; j++)
            results_arr[i][j] = 0
}

function load(fileUrl) {
    var xhr = new XMLHttpRequest
    xhr.open("GET", "file:///home/bobcat/Qt_sors/QML/pages/2.tab")
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            //if (xhr.status && xhr.status===200){

            // console.log("xhr", xhr.responseText)
            var a = JSON.parse(xhr.responseText)
            for (var b in a) {
                var o = a[b]
                my_model.append({
                                    name: o.name,
                                    num: o.num
                                    //description: o.description,
                                    //image: o.image,
                                    //selected: false
                                })
            }
            //my_model.loadCompleted()
        }
    }
    xhr.send()
}

function get_scorename(name, Array) {
    for (var i=0;i<Array.length;i++)
        if(Array[i][0]===0)
            Array[i][0]=name;


}

function get_inpute(name, target, input, Array) {
    var j=target;
    for(var i=0;i<Array.length; i++)
        if(Array[i][0]===name)
            Array[i][j]=input;

}

function set_to_json(Array) {

}

function sum(name, Array) {
    var summa = 0
    for (var i = 0; i < 10; i++) {
        for (var j = 0; j < 61; j++) {
            if (Array[i][0] === name)
                do {
                    summa = summa + Array[i][j]
                } while (j > 0 && j < 61)
        }
    }
    return summa
}
//    listModel.clear()
//    var xhr = new XMLHttpRequest()
//    xhr.open("GET",
//             "/storage/emulated/0/Documents/QML Projects/Projects/json/j.tab")
//    xhr.onreadystatechange = function () {
//        if (xhr.readyState == xhr.DONE) {
//            if (xhr.status == 200) {
//                var jsonObject = eval('(' + xhr.responseText + ')')
//                loaded(jsonObject)
//            }
//        }
//    }
//    xhr.send()
//}

//function loaded(jsonObject) {
//    for (var index in jsonObject) {
//        listModel.append({
//                             name: jsonObject.name
//                         })
//    }

//    // get directly the json object. Should work but not tested
//    //listModel.append({jsonObject.flux.all});
//}

