input_dir = getDirectory("Directory where files will be analyzed");
output_dir = getDirectory("Select output file");
//      filename = getFileList(path);
//      newDir = path + "Analyse d'image colored" + File.separator;
//      File.makeDirectory(newDir);
//      run("Channels Tool...");
filelist = getFileList(input_dir) 
for (i = 0; i < lengthOf(filelist); i++) {
    if (endsWith(filelist[i], ".tif")) {
		open(input_dir + File.separator + filelist[i]);
          
        title = getTitle;

        
        // stack= getSliceNumber();
        myNSlices=nSlices();
        getDimensions(width, height, channels, slices, frames);
        print(width, height, channels, slices, frames);
 

        for(channelNo = 1;channelNo <= channels; channelNo++) {
        	for(sliceNo = 1;sliceNo <= slices; sliceNo++) {
	            Stack.setChannel(channelNo);
	            Stack.setSlice(sliceNo);
	            saveAs("tif", output_dir + filelist[i] + '_' + sliceNo + '_' + channelNo);
        	}
        }  
    }
}