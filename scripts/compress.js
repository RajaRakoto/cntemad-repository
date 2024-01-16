console.log('============================================');
console.log('=== CNTEMAD repository - compress script ===');
console.log('============================================');

// modules
const compressing = require('compressing');
const fs = require('fs-extra');

// functions
function fsReadDir(path) {
	if (!fs.existsSync(path)) {
		fs.mkdirSync(path, { recursive: true });
	}
	return fs.readdirSync(path);
}

// filter source list (folder only)
let sources = fsReadDir('./src/input/').filter(e => !e.includes('.'));

// output (ZIP compression)
let counter = 0;
sources.forEach(e => {
	const inputName = './src/input/' + e;
	const outputName = './src/output/' + e;
	try {
		if (fs.lstatSync('./src/input/' + e).isFile()) {
			console.error(e + ' -> 🔼 already compressed !');
		} else {
			compressing.zip.compressDir(inputName, outputName);
			// status
			console.info(e + ' -> ✅ compressed !');
			counter++;
		}
	} catch (err) {
		console.error(err + ' -> ⛔ error !');
	}
});
console.info('\nTOTAL (compressed) = ' + counter);
