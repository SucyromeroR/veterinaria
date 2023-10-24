document.querySelector("#btnRegistrarPet").addEventListener('click', registrar)

function registrar() {
    let namePet = document.getElementById("namePet").value
    let apellPet = document.getElementById("apellPet").value
    let especPet = document.getElementById("especPet").value
    let razaPet = document.getElementById("razaPet").value
    let sexPet = document.getElementById("sexPet").value
    let colorPet = document.getElementById("colorPet").value
    let pesoPet = document.getElementById("pesoPet").value
    let error_empty = field_empty(namePet, apellPet, especPet, razaPet, sexPet, colorPet, pesoPet)
    if (!error_empty) {
        let error_validation = field_validation(namePet, apellPet, especPet, razaPet, sexPet, colorPet, pesoPet)
        if (!error_validation) {
            alert("Mascota No Registrada")
        }
    }
}

function field_empty(ident, nomb, apell, tel) {
    let error = false
    if (namePet == "") {
        alert("Nombre no puede ser nula")
        error = true
    }
    if (apellPet == "") {
        alert("El apellido no puede ser nulo")
        error = true
    }
    if (especPet == "") {
        alert("La especie no puede ser nulo")
        error = true
    }
    if (razaPet == "") {
        alert("La raza no puede ser nulo")
        error = true
    }
    if (sexPet == "") {
        alert("El Sexo no puede ser nulo")
        error = true
    }
    if (colorPet == "") {
        alert("El color no puede ser nulo")
        error = true
    }
    if (pesoPet == "") {
        alert("El peso  no puede ser nulo")
        error = true
    }
    return error
}

function field_validation(namePet, apellPet, especPet, razaPet, sexPet, colorPet, pesoPet) {
    let error = false
    if (!(/^[A-Z\s]+$/i.test(namePet))) {
        alert("El nombre n solo debe contener letras")
        error = true
    }
    if (!(/^[A-Z\s]+$/i.test(apellPet))) {
        alert("El nombre n solo debe contener letras")
        error = true
    }
    if (!(/^[a-z\s]+$/i.test(especPet))) {
        alert("La especie solo debe contener letras")
        error = true
    }
    if (!(/^[a-z\s]+$/i.test(razaPet))) {
        alert("La raza solo debe contener letras")
        error = true
    }
    if (!(/^[a-z\s]+$/i.test(sexPet))) {
        alert("El sexo solo debe contener letras")
        error = true
    }
    if (!(/^[a-z\s]+$/i.test(colorPet))) {
        alert("el color solo debe contener letras")
        error = true
    }
    if (!(/^[0-9]*$/.test(pesoPet))) {
        alert("El peso debe contener números")
        error = true
    }
    if (!(/^[a-z\s]+$/i.test(razaPet))) {
        alert("El teléfono de contacto solo debe contener números")
        error = true
    }
    return error
}
