#!/bin/sh

CMD=/usr/bin/sequel
SRC=./schema
DB=/tmp/hsmty.db

for src in schema/*.rb; do
	$CMD sqlite:$DB $src;
done	
