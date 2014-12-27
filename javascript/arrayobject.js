function prepare(names){
    var response = "";
    for (var i = 0; i < names.length-1; i++) {
        if( i == names.length-2)
            response += names[i];
        else
            response += names[i] + ", ";
    }
    response += " and " + names[names.length-1];
    return response;
}

function objectToArray(object){
    var array =[];
    for (key in object){
        array.push(object[key]);
    }
    return array;
}

names = [ "Canada", "Mexico", "Turkey", "Japan" ];
country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo",
};

console.log(prepare(names));
console.log(objectToArray(country));