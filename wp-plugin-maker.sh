# /bin/bash
clear
promptip=">";

echo " ";
echo "Wordpress Plugin Maker";
echo " ";
echo "*****************";
echo -n "Plugin Name: ";
read plugin_name;
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


echo "Choose a template";
echo "------------------";
echo "1. Single php file";
echo -n $promptip " ";
read option;

if [ $option == 1 ]; then
    mkdir $plugin_name;
    touch $plugin_name/$plugin_name".php";
fi

echo "<?php"
echo "/**";
echo " * Plugin Name:       " $plugin_name;
echo " * Plugin URI:        " $plugin_uri;
echo " * Description:       " $plugin_description;
echo " * Version:           " $plugin_version;
echo " * Author:            " $plugin_author;
echo " * Author URI:        " $plugin_author_uri;
echo " */"
