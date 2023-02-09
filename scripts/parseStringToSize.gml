///parseStringToSize(input,size)

//omit oversize string input
var input = string(argument0),size = real(argument1);

size = max(size,0);

if string_length(input) <= size {
    return input;
}
else {
    return string_copy(input,1,size - 3) + "...";
}
