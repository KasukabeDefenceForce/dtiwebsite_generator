#!/bin/bash

cd ../../group-data
mkdir members
mkdir temp
mkdir temp/members
mkdir website_data/research/sub_research_data/combined

cd ..
cd deepthought-initiative.github.io
rm -rf index.html Computational_Metascience.html Contact.html People.html Support.html News.html alumni_members.html current_members.html
rm -rf assets website_files members sub_research support_images news
mkdir members sub_research news
cp -r ../group-data/website_data/website_files ./
cp -r ../group-data/website_data/support_images ./
cp -r ../group-data/website_data/news/images ./news/

cp -r ../dtiwebsite_generator/assets ./
rsync -av --exclude '*.json' --exclude 'jsons' ../group-data/members/ ./members