/**
 * @description: gruntfile for cntemad repository
 * @requires: grunt | load-grunt-tasks | grunt-contrib-compress
 */
module.exports = function (grunt) {
	require("load-grunt-tasks")(grunt);

	// all files destination (example)
	const backupsDestination = "./backups/";

	// node-glob syntax
	const includeAllFiles = ["**/*", ".*/**/*", "**/.*", "**/.*/**/*"];

	/**
	 * ~ ALL GRUNT PLUGINS CONFIG ~
	 */
	grunt.initConfig({
		pkg: grunt.file.readJSON("./package.json"),
		/**
		 * Compress files and folders (incremental backup)
		 */
		compress: {
			main: {
				options: {
					archive: backupsDestination + "main.tar.gz",
				},
				files: [{ src: ["./*", "./.*"] }],
				filter: "isFile",
			},
			assets: {
				options: {
					archive: backupsDestination + "assets.tar.gz",
				},
				expand: true,
				cwd: "./assets/",
				src: includeAllFiles,
				dest: "assets",
			},
			L1I: {
				options: {
					archive: backupsDestination + "L1I.tar.gz",
				},
				expand: true,
				cwd: "./L1I/",
				src: includeAllFiles,
				dest: "L1I",
			},
			L2I: {
				options: {
					archive: backupsDestination + "L2I.tar.gz",
				},
				expand: true,
				cwd: "./L2I/",
				src: includeAllFiles,
				dest: "L2I",
			},
      L3I: {
				options: {
					archive: backupsDestination + "L3I.tar.gz",
				},
				expand: true,
				cwd: "./L3I/",
				src: includeAllFiles,
				dest: "L3I",
			},
			M1I: {
				options: {
					archive: backupsDestination + "M1I.tar.gz",
				},
				expand: true,
				cwd: "./M1I/",
				src: includeAllFiles,
				dest: "M1I",
			},
			M2I: {
				options: {
					archive: backupsDestination + "M2I.tar.gz",
				},
				expand: true,
				cwd: "./M2I/",
				src: includeAllFiles,
				dest: "M2I",
			},
			privates: {
				options: {
					archive: backupsDestination + "privates.tar.gz",
				},
				expand: true,
				cwd: "./privates/",
				src: includeAllFiles,
				dest: "privates",
			},
			tmp: {
				options: {
					archive: backupsDestination + "tmp.tar.gz",
				},
				expand: true,
				cwd: "./tmp/",
				src: includeAllFiles,
				dest: "tmp",
			},
		},
	});

	// all grunt register tasks
	grunt.registerTask("backup", [
		"compress:main",
    "compress:assets",
    "compress:L1I",
    "compress:L2I",
    "compress:L3I",
    "compress:M1I",
    "compress:M2I",
    "compress:privates",
    "compress:tmp",
	]);

	// all tasks lists
	const myTasksNames = ["backup"];

	// tasks status (description)
	const myTasksStatus = ["compress: main | assets | L1I | L2I | L3I | M1I | M2I | privates | tmp"];

	// default tasks
	grunt.registerTask("default", () => {
		console.log(
			"\nHere are the lists of plugins (tasks) you can run with grunt:".green,
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
				case "cyan":
					console.log(`\n${taskTitle}`.cyan.inverse.bold);
					taskNames.forEach((taskNames, index) => {
						console.log(taskNames.cyan + ` -> ${taskStatus[index]}`);
					});
					break;
				case "magenta":
					console.log(`\n${taskTitle}`.magenta.inverse.bold);
					taskNames.forEach((taskNames, index) => {
						console.log(taskNames.magenta + ` -> ${taskStatus[index]}`);
					});
					break;
				case "yellow":
					console.log(`\n${taskTitle}`.yellow.inverse.bold);
					taskNames.forEach((taskNames, index) => {
						console.log(taskNames.yellow + ` -> ${taskStatus[index]}`);
					});
					break;
				case "blue":
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
			"== CNTEMAD REPOSITORY TASKS ==",
			myTasksNames,
			myTasksStatus,
			"yellow",
		);
	});
};
