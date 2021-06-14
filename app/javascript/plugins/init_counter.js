const counter = document.getElementById('counter-rec'); // counter limit ruby
const numChange = document.getElementById('number-change'); // text to be displayed counting
const speed = 2000;


const formatNumber = new Intl.NumberFormat('pt-BR')

const initCounter = () => {
  if (numChange && counter) {
    const target = numChange.dataset.total; // ruby code
    let count = parseInt(counter.innerText); // text to be changed

    const inc = target / speed;

    if (count < target) {
      let newCount = Math.ceil(count + inc)
      counter.innerText = newCount;
      numChange.innerText = formatNumber.format(newCount);
      setTimeout(initCounter, 1);
    } else {
      count = target;
      numChange.innerText = formatNumber.format(target);
    };
  };
  
}


export { initCounter };


