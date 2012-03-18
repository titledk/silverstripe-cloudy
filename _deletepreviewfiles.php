<?php //Run this script with ?delete=1 to delete all preview files

//Uncomment the two lines below to activate this script
echo "This script has been temporarily disabled while the jury is looking at it, but it works! <br />" . 
"See the file <code>_deletepreviewfiles.php</code> for reference.";
exit();


if (isset($_GET["delete"])) {
	$msg = "";

	//Cleaning up Page.ss 1
	$file = "templates/Page.ss";
	if (!is_writeable($file)) {
		$msg = "The file \"$file\" can't be edited. Please check your permissions and try again.";
		exit();
	}
	$str = file_get_contents($file);
	$str = str_replace("<%-- Loading of preview assets. They will be deleted automatically if you choose not to keep them --%>", "", $str);
	$str = str_replace("<% include PreviewAssets %>", "", $str);
	file_put_contents($file, $str);

	//Cleaning up Page.ss 2
	$file = "templates/Layout/Page.ss";
	if (!is_writeable($file)) {
		$msg = "The file \"$file\" can't be edited. Please check your permissions and try again.";
		exit();
	}
	$str = file_get_contents($file);
	$str = str_replace("<%-- Loading of the preview template. It will be deleted automatically if you choose not to keep it --%>", "", $str);
	$str = str_replace("<% include Preview %>", "", $str);
	file_put_contents($file, $str);


	//exit();

	//removing includes from Page.ss

	//deleting includes & js, css & scss
  deleteFile("templates/Includes/Preview.ss");
  deleteFile("templates/Includes/PreviewAssets.ss");
  deleteFile("javascript/preview.js");
  deleteFile("scss/preview.scss");
  deleteFile("css/preview.css");


  //deleting the preview directory
	$directory = "_preview";
  $delRT = deleteDirectory($directory);
  if ($delRT == 1) {
  	//nothing
  } else {
  	echo $delRT;
  	exit();
  }

  //deleting this file
  deleteFile("_deletepreviewfiles.php");

  echo "success";
  exit();

} else {
	echo "You need to append ?delete=1 to delete the preview files";
	exit();
}


function deleteFile($file){
	if (!is_writeable($file)) {
		return "The file \"$file\" can't be deleted. Please check your permissions and try again.";	
	}
	
	$msg = "";

	if (file_exists($file)) {
		unlink($file);
		$msg = "deleted file $file";
	} else {
		$msg = "File doesn't exist";		
	}

	return $msg;
	
}



function deleteDirectory($dir) {
	if (!is_writeable($dir)) {
		return "The directory \"$dir\" can't be deleted. Please check your permissions and try again.";	
	}

  if (!file_exists($dir)) return true;
  if (!is_dir($dir)) return unlink($dir);
  foreach (scandir($dir) as $item) {
		if ($item == '.' || $item == '..') continue;
		//echo $item . "<br />";
		if (!deleteDirectory($dir.DIRECTORY_SEPARATOR.$item)) return false;
  }
  //this sometimes gives errors, it seems it has something to do with the svn files
  //the easiest bet to counter this on a OSX/LINUX environment is to cd into the themes folder and run "chmod -R 777 ./cloudy"
  return rmdir($dir);
}