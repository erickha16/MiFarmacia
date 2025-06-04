document.addEventListener('DOMContentLoaded', function () {
    // Toggle para mostrar/ocultar contraseña
    const togglePassword = document.getElementById('btn_toggle_pswd');
    const password = document.getElementById('txtPassword');

    if (togglePassword && password) {
        togglePassword.addEventListener('click', function () {
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            this.querySelector('i').classList.toggle('fa-eye');
            this.querySelector('i').classList.toggle('fa-eye-slash');
        });
    }

    
});