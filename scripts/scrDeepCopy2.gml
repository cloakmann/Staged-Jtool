/// scrDeepCopy(source, target, attributes)

// Copies contents from source directory to target directory.
// Add fa_directory to attributes for recursive copying.
var fname, i, file, files, from, to;
// create directory if it doesn't exist yet:
if (!directory_exists(argument1)) directory_create(argument1)
// push matching files into array:
// (has to be done separately due to possible recursion)
files = 0
for (fname = file_find_first(argument0 + "/*.*", argument2); fname != ""; fname = file_find_next()) {
    // don't include current/parent directory "matches":
    if (fname == ".") continue
    if (fname == "..") continue
    // push file into array
    file[files] = fname
    files += 1
    
    if (isFolder(argument0 + "\" + fname))global.totalFolders += 1;
    else global.totalFiles += 1;
}
file_find_close()
// process found files:

i = 0

repeat (files) {
    fname = file[i]
    i += 1
    from = argument0 + "/" + fname
    to = argument1 + "/" + fname
    if (file_attributes(from, fa_directory)) { // note: in GM:S+, prefer directory_exists(from)
    //if (file_attributes(from)) {
        scrDeepCopy(from, to) // recursively copy directories
    } else {
        file_copy(from, to) // copy files as normal
    }
}

