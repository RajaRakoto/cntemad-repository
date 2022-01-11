let voyelles = ['a', 'o', 'i', 'y', 'e', 'u'];

let input = document.getElementById('input');
let testBtn = document.querySelector('button');
let output = document.getElementById('output');
let outputDisplay = msg => {
	output.classList.add('zoomIn');
	output.innerText = `${msg}`;
};

testBtn.addEventListener('click', e => {
	e.preventDefault();
	for (let i = 0; i < voyelles.length; i++) {
		if (input.value === voyelles[i]) {
			outputDisplay("C'est une voyelle !");
			break;
		} else {
			if (!isNaN(input.value)) {
				outputDisplay("Ceci n'est pas une lettre ! Ressayez");
				break;
			}
			outputDisplay("C'est une consonne !");
		}
	}
});
