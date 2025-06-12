import IMask from 'imask';

document.addEventListener("DOMContentLoaded", () => {
  const phoneInput = document.getElementById('phone');
  if (phoneInput) {
    const maskOptions = {
      mask: '(00) 00000-0000'
    };
    IMask(phoneInput, maskOptions);
  }
});
