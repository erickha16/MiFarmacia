//----------------------- Parents ------------------------ \\
//Audios
document.addEventListener('DOMContentLoaded', function () {
    const audioPlayer = document.getElementById('audioPlayer');
    const soundButtons = document.querySelectorAll('.btn-sound');

    soundButtons.forEach(button => {
        button.addEventListener('click', function () {
            const soundFile = this.getAttribute('data-sound');
            audioPlayer.src = soundFile;
            audioPlayer.play();

            // Remover clase active de todos los botones
            soundButtons.forEach(btn => btn.classList.remove('active'));
            // Agregar clase active al botón presionado
            this.classList.add('active');
        });
    });

    soundButtons.forEach(button => {
        button.addEventListener('mouseover', function () {
            const soundFile = this.getAttribute('data-sound');
            audioPlayer.src = soundFile;
            audioPlayer.play();

            // Remover clase active de todos los botones
            soundButtons.forEach(btn => btn.classList.remove('active'));
            // Agregar clase active al botón presionado
            this.classList.add('active');
        });
    });
});


// Inicializar datepicker con restricciones
document.addEventListener('DOMContentLoaded', function () {
    const fechaInput = document.getElementById('fechaCita');
    const hoy = new Date();
    const fechaMinima = hoy.toISOString().split('T')[0];

    // Establecer fecha mínima como hoy y deshabilitar fines de semana
    fechaInput.min = fechaMinima;
    fechaInput.addEventListener('input', function (e) {
        const fechaSeleccionada = new Date(this.value);
        const dia = fechaSeleccionada.getUTCDay();

        if ([0].includes(dia)) { // 0 es domingo
            this.setCustomValidity('No se programan citas los domingos');
        } else {
            this.setCustomValidity('');
        }
    });

    // Manejar el botón de confirmar
    document.getElementById('confirmarCita').addEventListener('click', function () {
        const form = document.getElementById('formCita');
        if (form.checkValidity()) {
            // Aquí iría la lógica para enviar los datos
            alert('Cita programada exitosamente');
            bootstrap.Modal.getInstance(document.getElementById('citaModal')).hide();
        } else {
            form.reportValidity();
        }
    });
});