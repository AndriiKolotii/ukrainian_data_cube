#!/bin/bash

for i in `ls | grep zip`;
do
	echo "SNAP processing started"
	/home/localuser/snap/bin/gpt /home/localuser/snap/Ukraine_graph_10m.xml -Pinput1=$i -Ptarget1=`basename $i .zip`
	rm -v $i
	echo "Processed archive was removed"
	python aux/s1_prepare_metadata.py `basename $i .zip`.data 
	datacube dataset add `basename $i .zip`.data/l3comp-metadata.yaml 
done

datacube -v ingest -c aux/s1_scene_kyiv_10m_sri.yaml  --executor multiproc 2
for i in `ls | grep data`;
do
	rm -rf $i
done
for i in `ls | grep dim`;
do
	rm $i
done
