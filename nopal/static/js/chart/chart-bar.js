// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Obtener una referencia al elemento canvas del DOM
const $graficas = document.querySelector("#grafica");
// Las etiquetas son las que van en el eje X. 


const MONTHS = [
  'Enero',
  'Febrero',
  'Marzo',
  'Abril',
  'Mayo',
  'Junio',
  'Julio',
  'Agosto',
  'Septiembre',
  'Octubre',
  'Noviembre',
  'Diciembre'
];
var dt = new Date();
function months(config) {
  var cfg = config || {};
  var count = cfg.count || 12;
  var section = cfg.section;
  var values = [];
  var i, value;

  for (i = 0; i < count; ++i) {
    value = MONTHS[Math.ceil(i) % 12];
    values.push(value.substring(0, section));
  }

  return values;
}

// Podemos tener varios conjuntos de datos. Comencemos con uno

const mesess = document.getElementById('grafica')

new Chart(mesess, {
  type: 'bar',// Tipo de gráfica
  data: {
      labels: months({count: dt.getMonth()+1}),
      datasets: [
        {
          label: "Ventas mensuales",
          data: $('#data-bar').html().slice(1,-1).split(','),
          backgroundColor: 'rgba(230, 57, 70, 0.1)', // Color de fondo
          borderColor: 'rgba(230, 57, 70)', // Color del borde
          borderWidth: 1.5,// Ancho del borde
          pointBackgroundColor: 'rgba(230, 57, 70, 0.3)',
          pointRadius: 5,
        },

      ]
  },
  
    options: { 
      plugins: {
          title: {
            display: true,
            text: 'Ventas mensuales'
          },
      },
      responsive: true,
      scales: {
        xAxes: [{
          stacked: true
        }],
          yAxes: [{
            stacked: true,
            ticks: {
              beginAtZero: true,
              min: 0,
              max: 200,
              maxTicksLimit: 5
            }
        }],
      },
  }
});
// // Bar Chart Example
// var ctx = document.getElementById("entrega-mensual");
// var myLineChart = new Chart(ctx, {
//   type: 'bar',
//   data: {
//     labels: $('#tags-bar').html().slice(0,-1).split(','),
//     datasets: [{
//       label: 'Ventas mensuales',
//     data: [ $('#data-bar')],
//     backgroundColor: [
//       'rgba(255, 99, 132, 0.2)',
//       'rgba(255, 159, 64, 0.2)',
//       'rgba(255, 205, 86, 0.2)',
//       'rgba(75, 192, 192, 0.2)',
//       'rgba(54, 162, 235, 0.2)',
//       'rgba(153, 102, 255, 0.2)',
//       'rgba(201, 203, 207, 0.2)',
//       'rgba(255, 99, 132, 0.2)',
//       'rgba(255, 159, 64, 0.2)',
//       'rgba(255, 205, 86, 0.2)',
//       'rgba(75, 192, 192, 0.2)',
//       'rgba(54, 162, 235, 0.2)',
//     ],
//      borderColor: [
//       'rgb(255, 99, 132)',
//       'rgb(255, 159, 64)',
//       'rgb(255, 205, 86)',
//       'rgb(75, 192, 192)',
//       'rgb(54, 162, 235)',
//       'rgb(153, 102, 255)',
//       'rgb(201, 203, 207)',
//       'rgb(255, 99, 132)',
//       'rgb(255, 159, 64)',
//       'rgb(255, 205, 86)',
//       'rgb(75, 192, 192)',
//       'rgb(54, 162, 235)',
//       'rgb(153, 102, 255)',
//     ],
//     borderWidth: 1
//     }],
//   },
//   options: {
//     scales: {
//       xAxes: [{
//         time: {
//           unit: 'month'
//         },
//         gridLines: {
//           display: false
//         },
//         ticks: {
//           maxTicksLimit: 12
//         }
//       }],
//       yAxes: [{
//         ticks: {
//           min: 0,
//           max: 100,
//           maxTicksLimit: 6
//         },
//         gridLines: {
//           display: true
//         }
//       }],
//     },
//     legend: {
//       display: false
//     }
//   }
// });
