#!/bin/sh
# update resume & deploy newest website to git

git -C ~/WebstormProjects/Resume-plain/ pull
pdflatex ~/WebstormProjects/Resume-plain/mmeyer.tex 
mv ~/WebstormProjects/Resume-plain/mmeyer.pdf ~/WebstormProjects/Resume-plain/resume.pdf
cp ~/WebstormProjects/Resume-plain/resume.pdf ~/WebstormProjects/darrenfongzw.github.io/
git -C ~/WebstormProjects/darrenfongzw.github.io/resume.pdf add
git -C ~/WebstormProjects/darrenfongzw.github.io/ commit "update resume"
git -C ~/WebstormProjects/darrenfongzw.github.io/ push

