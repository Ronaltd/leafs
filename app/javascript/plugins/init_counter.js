const counter = document.getElementById('counter-rec');
const numChange = document.getElementById('number-change');
const speed = 200;

// const countersFunc = () => {
//   cunters.forEach(counter => {
//     const updateCount()
//   })
// }

const initCounter = () => {

  const target = +counter.innerText;
  let count = +numChange.innerText;
  // console.log(count);

  const inc = target / speed;
  // console.log(inc);

  if (count < target) {
    numChange.innerText = `${Math.ceil(count + inc)}`;
    setTimeout(initCounter, 1);
  } else {
    count = target;
  }


}

export { initCounter };
