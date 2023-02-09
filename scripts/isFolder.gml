///isFolder(directory)
var directory = argument0;
var case1 = string_pos(".jmap",directory)
var case2 = string_pos(".png",directory)
var case3 = string_pos(".txt",directory)
var case4 = string_pos(".xls",directory)
var case5 = string_pos(".ini",directory)

var isFile = case1 or case2 or case3 or case4 or case5;

//return directory_exists_ns(string(argument0) + "\");

return !isFile;
