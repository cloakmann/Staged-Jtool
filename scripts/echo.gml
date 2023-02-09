var echoString, argCount;
echoString = (("current object: " + object_get_name(object_index)) + "
")
for (argCount = 0; argCount < argument_count; argCount++)
    echoString += (((("arg" + string(argCount)) + ": ") + string(argument[argCount])) + "
")
show_message(echoString)
