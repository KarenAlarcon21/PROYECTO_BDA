function esDomingo(fecha) {
  return fecha.getDay() === 0;
}

function horaPermitida(fecha) {
  var hora = fecha.getHours();
  return hora >= 8 && hora <= 18;
}

function fechaValida(fecha) {
  var hoy = new Date();
  return fecha > hoy && !esDomingo(fecha) && fecha.isValid();
}

document.getElementById("calendario").addEventListener("input", function () {
  var fechaSeleccionada = new Date(this.value);
  if (!fechaValida(fechaSeleccionada)) {
    alert("Selecciona una fecha y hora válida (posterior al día de hoy, no domingo y válida)");
    this.value = "";
  }
});
