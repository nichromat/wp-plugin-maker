# /bin/bash
clear;
promptip=">";

echo "Choose a template";
echo "------------------";
echo "1. Single php file";
echo "2. Font adding plugin"
echo -n $promptip " ";
read option;

echo " ";
echo "Wordpress Plugin Maker";
echo " ";
echo "*****************";
echo -n "Plugin Name: ";
read plugin_name;
echo -n "Plugin Filename: ";
read plugin_file_name;
echo -n "Plugin URI: ";
read plugin_uri;
echo -n "Description: ";
read plugin_description;
echo -n "Version: ";
read plugin_version;
echo -n "Author: ";
read plugin_author;
echo -n "Author URI: ";
read plugin_author_uri;




if [ $option == 1 ]; then
    plugin_main_file="$plugin_file_name/$plugin_file_name.php";
    mkdir "$plugin_file_name";
    touch "$plugin_main_file";
fi

echo "<?php" >> "$plugin_main_file";
echo " " >> "$plugin_main_file";
echo "/**" >> "$plugin_main_file";
echo " * Plugin Name:       $plugin_name" >> "$plugin_main_file";
echo " * Plugin URI:        $plugin_uri" >> "$plugin_main_file";
echo " * Description:       $plugin_description" >> "$plugin_main_file";
echo " * Version:           $plugin_version" >> "$plugin_main_file";
echo " * Author:            $plugin_author" >> "$plugin_main_file";
echo " * Author URI:        $plugin_author_uri" >> "$plugin_main_file";
echo " */" >> "$plugin_main_file";
echo "$plugin_main_file";

cd $plugin_file_name;

git init;
git add .;
git commit -m "Plugin Boilerplate";

cd ..;
