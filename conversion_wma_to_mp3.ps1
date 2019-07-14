# init
$ffmpeg_exe_path = "D:\ffmpeg\bin\ffmpeg.exe"
$folder_wma = "F:\_mp3_yt\tmp2"
$folder_mp3 = "F:\_mp3_yt\done\"

#list child
$wma_files = Get-ChildItem -Path $folder_wma 

ForEach ($wma_file in $wma_files){
    
    #paths
    $path_file_source = $wma_file.FullName    
    $path_file_dest = "{0}{1}{2}" -f $folder_mp3,$wma_file.Basename,".mp3"

    #exec ligne
    $line_exec = '{0} -i "{1}" "{2}"' -f $ffmpeg_exe_path,$wma_file.FullName,$path_file_dest    
    
    #lancement 
    Write-Host $line_exec
    Invoke-Expression $line_exec
}