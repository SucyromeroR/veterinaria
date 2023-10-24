document.querySelector("#btnRegistrar").addEventListener('click', registrar)

function registrar() {
    let ident = document.getElementById("ident").value
    let nomb = document.getElementById("nomb").value
    let apell = document.getElementById("apell").value
    let tel = document.getElementById("tel").value
    let email = document.getElementById("email").value
    let error_empty = field_empty(ident, nomb, apell, tel)
    if (!error_empty) {
        let error_validation = field_validation(ident, nomb, apell, tel)
        if (!error_validation) {
            alert("Usuario Registrado")
        }
    }
}

function field_empty(ident, nomb, apell, tel) {
    let error = false
    if (ident == "") {
        alert("La identificación no puede ser nula")
        error = true
    }
    if (nomb == "") {
        alert("El nombre no puede ser nulo")
        error = true
    }
    if (apell == "") {
        alert("El apellido no puede ser nulo")
        error = true
    }
    if (tel == "") {
        alert("El teléfono de contacto no puede ser nulo")
        error = true
    }
    return error
}

function field_validation(ident, nomb, apell, tel) {
    let error = false
    if (!(/^[0-9]*$/.test(ident))) {
        alert("La identificación solo debe contener números")
        error = true
    }
    if (!(/^[A-Z\s]+$/i.test(nomb))) {
        alert("El nombre solo debe contener letras")
        error = true
    }
    if (!(/^[a-z\s]+$/i.test(apell))) {
        alert("El apellido solo debe contener letras")
        error = true
    }
    if (!(/^[0-9]*$/.test(tel))) {
        alert("El teléfono de contacto solo debe contener números")
        error = true
    }
    return error
}
