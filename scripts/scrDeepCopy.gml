/// scrDeepCopy(source, target)

// Copies contents from source directory to target directory.
// Add fa_directory to attributes for recursive copying.
var fname, i, file, files, from, to;
// create directory if it doesn't exist yet:
if (!directory_exists_ns(argument1)) directory_create_ns(argument1)
// push matching files into array:
// (has to be done separately due to possible recursion)


files = 0
//for (fname = file_find_first_ns(argument0 + "/*.*"); fname != ""; fname = file_find_next_ns()) {
for (fname = file_find_first_ns(argument0 + "\*.*"); fname != ""; fname = file_find_next_ns()) {
    // don't include current/parent directory "matches":
    if (fname == ".") continue
    if (fname == "..") continue
    // push file into array
    file[files] = fname
    files += 1
    
    if (isFolder(argument0 + "\" + fname))global.totalFolders += 1;
    else global.totalFiles += 1;
}
file_find_close_ns()
// process found files:

i = 0

from = "";
to = ""

//echo(argument0,argument1)
//echo("start deep copy","total folders: " + string(global.totalFolders),"total files: " + string(global.totalFiles))

repeat (files) {
    fname = file[i]
    i += 1
    
    
    from = argument0 + "\"+ fname
    to = argument1 + "\" + fname

    if isFolder(from){
        directory_create_ns(to);
        //echo("is folder",from,to)
        scrDeepCopy(from, to) // recursively copy directories
    } else {
        //echo("is file",from,to)
        file_copy_ns(from, to) // copy files as normal
    }
    
}

