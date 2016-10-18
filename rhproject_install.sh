#!/bin/bash

k_install="install"
k_remove="uninstall"
k_fix="fix"

install() {
	echo install
}

remove() {
	echo remove
}

fix() {
	echo fix
}

help() {
	echo help
}

if [ "$1" = "${k_install}" ]
then
	install
elif [ "$1" = "${k_remove}" ]
then
	remove
elif [ "$1" = "${k_fix}" ]
then
	fix
else
	help
fi