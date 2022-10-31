console.log('============================================');
console.log('=== CNTEMAD repository - compress script ===');
console.log('============================================\n');

// todo: OK
// modules
const compressing = require('compressing');
const fs = require('fs-extra');

// todo: OK
// functions
function fsReadDir(path) {
	if (!fs.existsSync(path)) {
		fs.mkdirSync(path, { recursive: true });
	}
	return fs.readdirSync(path);
}

function fsImport(filepath) {
	return fs.readFileSync(filepath, 'utf8').split('\n');
}

function fsExport(data, filepath) {
	fs.writeFile(filepath, data, err => {
		if (err) {
			console.log(err);
		}
	});
}

function difference(a, b) {
	const s = new Set(b);
	result = a.filter(x => !s.has(x));
	return result.length == 0 ? 0 : result;
}

// todo: OK
// input (eg: '../L1I/_RESOLVED_/l1i-pascal-corr-pack/')
const pathDir = '../tests/L1I/_EXO_/';
const pathList = fsReadDir(pathDir);

// todo: OK
// fix path dir slash missing
if (pathDir[pathDir.length - 1] !== '/') {
	pathDir += '/';
}

// filter source list (folder only)
let sources = pathList.filter(e => !e.includes('.'));

// todo: sync log and current file
// log file
const createORupdateLogFile = (status, sources) => {
	fsExport(sources.join`\n`, pathDir + '.log');
	console.log(
		status == 'create' ? '📄 log file created !\n' : '📄 log file updated !\n',
	);
};

if (fs.existsSync(pathDir + '.log')) {
	old = fsImport(pathDir + '.log');
	// sources = [...new Set([...sources, ...old])]; // merge new & old log list | remove duplicate list
	console.log('🚨 file (edited | deleted) = ' + difference(old, sources));
	createORupdateLogFile('update', sources);
} else {
	createORupdateLogFile('create', sources);
}

// todo: OK
// output (ZIP compression)
let counter = 0;
sources.forEach((e, i) => {
	try {
		compressing.zip.compressDir(pathDir + e, pathDir + e + '.zip');
		console.log(e + ' -> ✅ compressed !');
		counter++;
	} catch (err) {
		console.log(err + ' -> ⛔ error !');
	}
});
console.log('\nTOTAL (compressed) = ' + counter);
