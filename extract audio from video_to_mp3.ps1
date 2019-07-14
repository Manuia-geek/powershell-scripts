# init
$ffmpeg_exe_path = "D:\ffmpeg\bin\ffmpeg.exe"
$folder_video = "F:\_mp3_yt\ytaudioextract\"
$folder_audio = "F:\_mp3_yt\ytaudioextract\done\"

#list child
$video_files = Get-ChildItem -Path $folder_video 

ForEach ($video_file in $video_files){
    
    #paths
    $path_file_source = $video_file.FullName    
    $path_file_dest = "{0}{1}{2}" -f $folder_audio,$video_file.Basename,".mp3"

    #exec ligne
    $line_exec = '{0} -i "{1}" -vn "{2}"' -f $ffmpeg_exe_path,$video_file.FullName,$path_file_dest    
    
    #lancement 
    Write-Host $line_exec
    Invoke-Expression $line_exec
}