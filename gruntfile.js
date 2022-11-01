/**
 * @author: Raja
 * @description: task runner for cntemad-repository
 * @requires: grunt | load-grunt-tasks | grunt-contrib-compress
 */
module.exports = function (grunt) {
	require('load-grunt-tasks')(grunt);

	// all files destination (example)
	const backupsDestination = './backups/';

	// node-glob syntax
	const includeAllFiles = ['**/*', '.*/**/*', '**/.*', '**/.*/**/*'];

	/**
	 * ~ ALL GRUNT PLUGINS CONFIG ~
	 */
	grunt.initConfig({
		pkg: grunt.file.readJSON('./package.json'),

		/**
		 * Compress files and folders (incremental backup)
		 */
		compress: {
			main: {
				options: {
					archive: backupsDestination + 'main.tar.gz',
				},
				files: [{ src: ['./*', './.*'] }],
				filter: 'isFile',
			},
			l1i: {
				options: {
					archive: backupsDestination + 'L1I.tar.gz',
				},
				expand: true,
				cwd: './L1I/',
				src: includeAllFiles,
				dest: 'L1I',
			},
			l2i: {
				options: {
					archive: backupsDestination + 'L2I.tar.gz',
				},
				expand: true,
				cwd: './L2I/',
				src: includeAllFiles,
				dest: 'L2I',
			},
			l3i: {
				options: {
					archive: backupsDestination + 'L3I.tar.gz',
				},
				expand: true,
				cwd: './L3I/',
				src: includeAllFiles,
				dest: 'L3I',
			},
			m1i: {
				options: {
					archive: backupsDestination + 'M1I.tar.gz',
				},
				expand: true,
				cwd: './M1I/',
				src: includeAllFiles,
				dest: 'M1I',
			},
			m2i: {
				options: {
					archive: backupsDestination + 'M2I.tar.gz',
				},
				expand: true,
				cwd: './M2I/',
				src: includeAllFiles,
				dest: 'M2I',
			},
			node_modules: {
				options: {
					archive: backupsDestination + 'node_modules.tar.gz',
				},
				expand: true,
				cwd: './node_modules/',
				src: includeAllFiles,
				dest: 'node_modules',
			},
			informations: {
				options: {
					archive: backupsDestination + 'informations.tar.gz',
				},
				expand: true,
				cwd: './informations/',
				src: includeAllFiles,
				dest: 'informations',
			},
			assets: {
				options: {
					archive: backupsDestination + 'assets.tar.gz',
				},
				expand: true,
				cwd: './assets/',
				src: includeAllFiles,
				dest: 'assets',
			},
			scripts: {
				options: {
					archive: backupsDestination + 'scripts.tar.gz',
				},
				expand: true,
				cwd: './scripts/',
				src: includeAllFiles,
				dest: 'scripts',
			},
			tools: {
				options: {
					archive: backupsDestination + 'tools.tar.gz',
				},
				expand: true,
				cwd: './tools/',
				src: includeAllFiles,
				dest: 'tools',
			},
		},
	});

	// all grunt register tasks
	grunt.registerTask('backup-all', [
		'compress:l1i',
		'compress:l2i',
		'compress:l3i',
		'compress:m1i',
		'compress:m2i',
		'compress:main',
		'compress:node_modules',
		'compress:informations',
		'compress:assets',
		'compress:scripts',
		'compress:tools',
	]);
	grunt.registerTask('backup-l1i', ['compress:l1i']);
	grunt.registerTask('backup-l2i', ['compress:l2i']);
	grunt.registerTask('backup-l3i', ['compress:l3i']);
	grunt.registerTask('backup-m1i', ['compress:m1i']);
	grunt.registerTask('backup-m2i', ['compress:m2i']);
	grunt.registerTask('backup-main', ['compress:main']);
	grunt.registerTask('backup-node_modules', ['compress:node_modules']);
	grunt.registerTask('backup-informations', ['compress:informations']);
	grunt.registerTask('backup-assets', ['compress:assets']);
	grunt.registerTask('backup-scripts', ['compress:scripts']);
	grunt.registerTask('backup-tools', ['compress:tools']);

	// all tasks lists
	const myTasksNames = [
		'backup-all',
		'backup-l1i',
		'backup-l2i',
		'backup-l3i',
		'backup-m1i',
		'backup-m2i',
		'backup-main',
		'backup-node_modules',
		'backup-informations',
		'backup-assets',
		'backup-scripts',
		'backup-tools',
	];

	// tasks status (description)
	const myTasksStatus = [
		'backup all files',
		'backup L1I files',
		'backup L2I files',
		'backup L3I files',
		'backup M1I files',
		'backup M2I files',
		'backup main files',
		'backup node_modules files',
		'backup informations files',
		'backup assets files',
		'backup scripts files',
		'backup tools files',
	];

	// default tasks
	grunt.registerTask('default', () => {
		console.log(
			'\nHere are the lists of plugins (tasks) you can run with grunt:'.green,
		);

		/**
		 *
		 * @param {string} taskTitle - task title (Eg: basics tasks)
		 * @param {array} taskNames - task names (Eg: basicsTaskNames)
		 * @param {array} taskStatus - task status (Eg: basicsTaskStatus)
		 * @param {string} taskTheme - colors of theme (Eg: black ,red ,green ,yellow ,blue ,magenta ,cyan ,white ,gray ,grey)
		 */
		function getTaskResume(taskTitle, taskNames, taskStatus, taskTheme) {
			switch (taskTheme) {
				case 'cyan':
					console.log(`\n${taskTitle}`.cyan.inverse.bold);
					taskNames.forEach((taskNames, index) => {
						console.log(taskNames.cyan + ` -> ${taskStatus[index]}`);
					});
					break;
				case 'magenta':
					console.log(`\n${taskTitle}`.magenta.inverse.bold);
					taskNames.forEach((taskNames, index) => {
						console.log(taskNames.magenta + ` -> ${taskStatus[index]}`);
					});
					break;
				case 'yellow':
					console.log(`\n${taskTitle}`.yellow.inverse.bold);
					taskNames.forEach((taskNames, index) => {
						console.log(taskNames.yellow + ` -> ${taskStatus[index]}`);
					});
					break;
				case 'blue':
					console.log(`\n${taskTitle}`.blue.inverse.bold);
					taskNames.forEach((taskNames, index) => {
						console.log(taskNames.blue + ` -> ${taskStatus[index]}`);
					});
					break;

				default:
					null;
					break;
			}
		}

		// task resume
		getTaskResume(
			'=== CNTEMAD REPOSITORY - TASKS ===',
			myTasksNames,
			myTasksStatus,
			'yellow', // color theme
		);
	});
};
