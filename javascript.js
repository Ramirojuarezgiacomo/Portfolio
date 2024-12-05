

//PRUEBAAAAA MINI JUEGO NUCLEO 1
function checkAnswer(number) {
  // Obtener el cuadro seleccionado
  const cuadroSeleccionado = document.querySelector(`.debateCuadro${number}`);

  // Si ya ha sido seleccionado, no hacer nada
  if (cuadroSeleccionado.classList.contains('seleccionado')) {
      return;
  }

  // Obtener el elemento del popup y su contenido
  const ventanaEmergente = document.getElementById('ventanaEmergente');

  

  // Obtener las partes del ventanaEmergente donde cambiará el contenido
  const ventanaEmergenteH2 = document.querySelector('.infoJuegoDiv1 h2');
  const ventanaEmergenteImg1 = document.querySelector('.infoJuegoDiv1 img');
  const ventanaEmergenteImg2 = document.querySelector('.infoJuegoDiv2 img');
  const ventanaEmergenteText = document.querySelector('.infoJuegoDiv2 p');
  const ventanaEmergentePreguntaText = document.querySelector('.preguntaventanaEmergenteMinijuego p');
  const ventanaEmergenteRespuesta1Img = document.querySelector('.respuestaventanaEmergente1 img');
  const ventanaEmergenteRespuesta2Img = document.querySelector('.respuestaventanaEmergente2 img');
  const ventanaEmergenteRespuesta3Img = document.querySelector('.respuestaventanaEmergente3 img');

  // Actualizar contenedores de texto
  const contenedorTexto1Text = document.querySelector('.contenedorTexto1 p');
  const contenedorTexto2Text = document.querySelector('.contenedorTexto2 p');
  const contenedorTexto3Text = document.querySelector('.contenedorTexto3 p');

  // Cuadros incorrectos: 3 y 5
  if (number === 3 || number === 5) {
      // Mostrar la cruz en los cuadros incorrectos
      cuadroSeleccionado.innerHTML += '<div class="cross"><img src="img/Nucleo1/Error.png"</div>';
      cuadroSeleccionado.querySelector('.cross').style.display = 'flex';
  } else {
      // Cambiar el contenido del popup según el cuadro seleccionado
      switch (number) {
          case 1:
              ventanaEmergenteH2.textContent = "CONTROVERSIA 1";
              ventanaEmergenteImg1.src = "img/Nucleo1/cuadros/Automatizacion/Automatizacion.png";
              ventanaEmergenteImg2.src = "img/Nucleo1/cuadros/Automatizacion/artAutomatizacion.png";
              ventanaEmergenteText.textContent = "“La IA no tiene conciencia ni comprende el arte.” Ruth Lingford";
              ventanaEmergentePreguntaText.textContent = "¿La IA puede generar obras de arte sin la intervención humana?";
              ventanaEmergenteRespuesta1Img.src = "img/Nucleo1/cuadros/Automatizacion/Respuesta/Respuesta1.png";
              ventanaEmergenteRespuesta2Img.src = "img/Nucleo1/cuadros/Automatizacion/Respuesta/Respuesta2.png";
              ventanaEmergenteRespuesta3Img.src = "img/Nucleo1/cuadros/Automatizacion/Respuesta/Respuesta3.png";
              ventanaEmergente.style.border = '10px solid  rgb(195, 124, 46)'; // Cambiar el bordes
              ventanaEmergenteH2.style.color = 'rgb(195, 124, 46)'; // Cambiar el color del h2

              contenedorTexto1Text.textContent = "Requiere entrenamiento y parámetros humanos (estilos, gustos, etc.).";
              contenedorTexto2Text.textContent = "“No puede crear sin la intervención humana.";
              contenedorTexto3Text.textContent = "“Si puede automatizar procesos como imágenes,textos, etc.";
      
              break;
          case 2:
              ventanaEmergenteH2.textContent = "CONTROVERSIA 2";
              ventanaEmergenteImg1.src = "img/Nucleo1/cuadros/Originalidad/Originalidad.png";
              ventanaEmergenteImg2.src = "img/Nucleo1/cuadros/Originalidad/artOriginalidad.png";
              ventanaEmergenteText.textContent = "“La IA amplía, no amenaza, la creatividad humana.” Jeff Hawkins";
              ventanaEmergentePreguntaText.textContent = "La IA crea obras basadas en datos existentes, ¿puede ser original?";
              ventanaEmergenteRespuesta1Img.src = "img/Nucleo1/cuadros/Originalidad/Respuesta/Respuesta1.png";
              ventanaEmergenteRespuesta2Img.src = "img/Nucleo1/cuadros/Originalidad/Respuesta/Respuesta2.png";
              ventanaEmergenteRespuesta3Img.src = "img/Nucleo1/cuadros/Originalidad/Respuesta/Respuesta3.png";
              ventanaEmergente.style.border = '10px solid  rgb(97, 119, 62)'; // Cambiar el borde
              ventanaEmergenteH2.style.color = 'rgb(97, 119, 62)'; // Cambiar el color del h2


               // Actualizar contenedores de texto

               
              contenedorTexto1Text.textContent = "Los artistas temen perder su propiedad intelectual.";
              contenedorTexto2Text.textContent = "Se dudaba la originalidad de la fotografía por usar todos la misma cámara.";
              contenedorTexto3Text.textContent = "La IA genera variaciones, no ideas nuevas.";

              break;
          case 4:
              ventanaEmergenteH2.textContent = "CONTROVERSIA 3";
              ventanaEmergenteImg1.src = "img/Nucleo1/cuadros/Deshumanizacion/Deshumanizacion.png";
              ventanaEmergenteImg2.src = "img/Nucleo1/cuadros/Deshumanizacion/artDeshumanizacion.png";
              ventanaEmergenteText.textContent = "“La maquina crea pero sin sentido. Nosotros se lo damos” Mario Klingemann";
              ventanaEmergentePreguntaText.textContent = "¿Se pierde la esencia del arte, la emoción y la experiencia humana?";
              ventanaEmergenteRespuesta1Img.src = "img/Nucleo1/cuadros/Deshumanizacion/Respuesta/Respuesta1.png";
              ventanaEmergenteRespuesta2Img.src = "img/Nucleo1/cuadros/Deshumanizacion/Respuesta/Respuesta2.png";
              ventanaEmergenteRespuesta3Img.src = "img/Nucleo1/cuadros/Deshumanizacion/Respuesta/Respuesta3.png";
              ventanaEmergente.style.border = '10px solid  rgb(19, 53, 125)'; // Cambiar el borde
              ventanaEmergenteH2.style.color = 'rgb(19, 53, 125)'; // Cambiar el color del h2

               // Actualizar contenedores de texto

               contenedorTexto1Text.textContent = "La respuesta es un fácil y rotundo NO.";
               contenedorTexto2Text.textContent = "Sin persepción la humana no hay arte.";
               contenedorTexto3Text.textContent = "La persepción de cada uno define lo que es arte o chiste.";

              break;
          case 6:
              ventanaEmergenteH2.textContent = "CONTROVERSIA 4";
              ventanaEmergenteImg1.src = "img/Nucleo1/cuadros/Valor/Valor.png";
              ventanaEmergenteImg2.src = "img/Nucleo1/cuadros/Valor/artValor.png";
              ventanaEmergenteText.textContent = "“El valor del arte  reside en su capacidad para desafiar y ampliar la definición de arte.“ Pablo Talavante.";
              ventanaEmergentePreguntaText.textContent = "¿Se devalúa el arte al ser facilmente reproducible por la IA?";
              ventanaEmergenteRespuesta1Img.src = "img/Nucleo1/cuadros/Valor/Respuesta/Respuesta1.png";
              ventanaEmergenteRespuesta2Img.src = "img/Nucleo1/cuadros/Valor/Respuesta/Respuesta2.png";
              ventanaEmergenteRespuesta3Img.src = "img/Nucleo1/cuadros/Valor/Respuesta/Respuesta3.png";
              ventanaEmergente.style.border = '10px solid  rgb(142, 74, 54)'; // Cambiar el borde
              ventanaEmergenteH2.style.color = 'rgb(142, 74, 54)'; // Cambiar el color del h2

               // Actualizar contenedores de texto
               contenedorTexto1Text.textContent = "Aún no se sabe, ya que todavía estamos entrando a un mundo nuevo del arte";
               contenedorTexto2Text.textContent = "La IA puede impulsar nuevos estilos artísticos y expandir el mercado del arte.";
               contenedorTexto3Text.textContent = "Algunos creen que la IA tendrá  su propia rama de arte  y valor.";

              break;
          default:
              ventanaEmergenteH2.textContent = "¡Respuesta correcta!";
              ventanaEmergenteImg1.src = "";
              ventanaEmergenteImg2.src = "";
              ventanaEmergenteText.textContent = "¡Has seleccionado la respuesta correcta!";
              ventanaEmergentePreguntaImg.src = "";
              ventanaEmergenteRespuesta1Img.src = "";
              break;
      }
      // Mostrar la ventana emergente
      ventanaEmergente.style.display = 'block';
  }

  // Cambiar opacidad del cuadro seleccionado a 1 (opacidad completa)
  cuadroSeleccionado.style.opacity = '1';

  // Marcar el cuadro como seleccionado añadiendo una clase
  cuadroSeleccionado.classList.add('seleccionado');
}



function closeventanaEmergente() {
  document.getElementById('ventanaEmergente').style.display = 'none';
}

//Logica de la opacidad de las img de las respuestas

function mostrarTexto(respuesta) {
  // Obtener todas las imágenes de respuestas
  const todasLasImágenes = document.querySelectorAll('.Respuestas img');

  // Iterar sobre cada imagen y ajustar opacidad y animación
  todasLasImágenes.forEach((img, index) => {
      const respuestaIndex = index + 1
      ; // El índice de la respuesta

      if (respuestaIndex === respuesta) {
          // Cambia la opacidad de la imagen seleccionada
          img.style.opacity = 1;
      } else {
          // Mantener las imágenes no seleccionadas con opacidad 0.5
          img.style.opacity = img.style.opacity === '1' ? '1' : '1.5';
      }
  });

  // Mostrar el contenedor de texto asociado a la respuesta seleccionada
  document.getElementById('contenedorTexto' + respuesta).style.display = 'block';
}



//Logica de la opacidad de reinicio una vez se cierra la ventana 



function closeventanaEmergente() {
  // Ocultar los contenedores de texto
  ocultarContenedoresTexto();

  // Cerrar la ventana emergente
  const ventanaEmergente = document.getElementById('ventanaEmergente');
  ventanaEmergente.style.display = 'none';
}

function ocultarContenedoresTexto() {
  const contenedorTexto1 = document.querySelector('.contenedorTexto1');
  const contenedorTexto2 = document.querySelector('.contenedorTexto2');
  const contenedorTexto3 = document.querySelector('.contenedorTexto3');

  // Ocultar los contenedores
  contenedorTexto1.style.display = 'none'; // Ajusta según sea necesario
  contenedorTexto2.style.display = 'none'; // Ajusta según sea necesario
  contenedorTexto3.style.display = 'none'; // Ajusta según sea necesario
}

// Agregar evento de clic a la cruz
const cerrarBtn = document.querySelector('.cerrar');
cerrarBtn.addEventListener('click', closeventanaEmergente);





//encuesta Nucleo 1

function mostrarPositivo1() {
  document.getElementById('encuestaPositiva1').classList.remove('oculto1');
  document.getElementById('encuestaNegativa1').classList.add('oculto1');
  
  // Efecto de agrandar el botón de Like
  document.querySelector('.BotonLike1').classList.add('clicked1');
  document.querySelector('.BotonNoLike1').classList.remove('clicked1');
}

function mostrarNegativo1() {
  document.getElementById('encuestaNegativa1').classList.remove('oculto1');
  document.getElementById('encuestaPositiva1').classList.add('oculto1');
  
  // Efecto de agrandar el botón de No Like
  document.querySelector('.BotonNoLike1').classList.add('clicked1');
  document.querySelector('.BotonLike1').classList.remove('clicked1');
}





// carrousel nucleo 2
const slider = document.querySelector('.slider');
console.log(slider);
let isDown = false;
let startX;
let scrollLeft;

// Evento para cuando se presiona el ratón
slider.addEventListener('mousedown', (e) => {
  isDown = true;
  slider.classList.add('active');
  startX = e.pageX - slider.offsetLeft;
  scrollLeft = slider.scrollLeft;
  slider.style.transition = 'none'; // Desactivar transición mientras se arrastra
});

// Evento para cuando se levanta el ratón
slider.addEventListener('mouseleave', () => {
  isDown = false;
  slider.style.transition = 'transform 0.3s ease-in-out'; // Volver a activar transición
});

slider.addEventListener('mouseup', () => {
  isDown = false;
  slider.style.transition = 'transform 0.3s ease-in-out'; // Volver a activar transición
});

// Evento para arrastrar
slider.addEventListener('mousemove', (e) => {
  if (!isDown) return;  // Solo continuar si el ratón está presionado
  e.preventDefault();
  const x = e.pageX - slider.offsetLeft;
  const walk = (x - startX) * 2; // Multiplicador para ajustar la velocidad de desplazamiento
  slider.scrollLeft = scrollLeft - walk;
});





//Informacion del carrousel nucleo 2

function openPopup(info, popupImage, overlayImage, paisInfo, fundadorInfo,caracteristicasinfo, borderColor) {
  document.getElementById('popup-text').textContent = info;
  document.getElementById('popup-image').src = popupImage; 
  document.getElementById('popup-image').style.display = 'block'; 
  document.getElementById('popup').style.display = 'flex'; 


  // Actualiza el contenedor de información de los paises con HTML
  const paisInfoContainer = document.getElementById('Paises');
  paisInfoContainer.innerHTML = paisInfo;
 

  // Actualiza el contenedor de información fundadores con HTML
  const fundadorInfoContainer = document.getElementById('Fundadores');
  fundadorInfoContainer.innerHTML = fundadorInfo;


 
   // Actualiza el contenedor de caracteristicas con HTML
   const caracteristicasinfoContainer = document.getElementById('caracteristicas');
   caracteristicasinfoContainer.innerHTML = caracteristicasinfo;

  // Cambia el borde del pop-up al color pasado en el parámetro
  document.querySelector('.popup-content').style.borderColor = borderColor;

  // Almacena la ruta de la imagen del overlay en el botón
  const button = document.querySelector('.popup-content button');
  button.setAttribute('data-overlay-image', overlayImage);
  button.style.borderColor = borderColor;  // Borde del botón
  button.style.backgroundColor = borderColor;  // Fondo del botón, si quieres que también cambie
}

function closePopup() {
  document.getElementById('popup').style.display = 'none'; // Oculta el pop-up
}

function showOverlayImage() {
  const button = document.querySelector('.popup-content button');
  const overlayImage = button.getAttribute('data-overlay-image');
  document.getElementById('overlay-image').src = overlayImage; // Muestra la imagen del overlay
  document.getElementById('overlay').style.display = 'flex'; // Muestra el overlay
}

function closeOverlay() {
  document.getElementById('overlay').style.display = 'none'; // Oculta el overlay
}



//encuesta Nucleo 2

function mostrarPositivo() {
  document.getElementById('encuestaPositiva').classList.remove('oculto');
  document.getElementById('encuestaNegativa').classList.add('oculto');
  
  // Efecto de agrandar el botón de Like
  document.querySelector('.BotonLike').classList.add('clicked');
  document.querySelector('.BotonNoLike').classList.remove('clicked');
}

function mostrarNegativo() {
  document.getElementById('encuestaNegativa').classList.remove('oculto');
  document.getElementById('encuestaPositiva').classList.add('oculto');
  
  // Efecto de agrandar el botón de No Like
  document.querySelector('.BotonNoLike').classList.add('clicked');
  document.querySelector('.BotonLike').classList.remove('clicked');
}


