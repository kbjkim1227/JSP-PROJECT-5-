const toggleBtn = document.querySelector('.ham');
const menu = document.querySelector('.menu');


// toggleBtn.addanimalListener('click', () =>{
//   menu.classList.toggle('show');
// })

toggleBtn.addEventListener('click', function(){
  menu.classList.toggle('show');
})
