///scrExportSound(outputMainDir)
var outputMainDir = argument0;


if !directory_exists(global.editor_project_path + "\music") {
    echo("music file not exist")
    exit;
}
else musicPath = global.editor_project_path + "\music";

//var musicPath = global.editor_project_path + "\music"
//echo(global.ms_cur_music,ms_get_name(global.ms_cur_music))

var musicName = ms_get_name(global.ms_cur_music);

file_copy_ns(musicPath + "\" + musicName,outputMainDir + "\sound\" + musicName);
