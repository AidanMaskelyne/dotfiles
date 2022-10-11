#!/bin/sh

function main() {
	VOLUME=$(pamixer --get-volume-human)
	
	echo "${VOLUME}"
}

main "$@"

