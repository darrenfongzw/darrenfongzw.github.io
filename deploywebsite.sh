#!/bin/sh
# update resume & deploy newest website to git

git -C /home/darren/WebstormProjects/Resume-plain/ pull
cd /home/darren/WebstormProjects/Resume-plain
pdflatex mmayer.tex
cd /home/darren/WebstormProjects/darrenfongzw.github.io/
mv /home/darren/WebstormProjects/Resume-plain/mmayer.pdf /home/darren/WebstormProjects/Resume-plain/resume.pdf
cp /home/darren/WebstormProjects/Resume-plain/resume.pdf /home/darren/WebstormProjects/darrenfongzw.github.io/
git add /home/darren/WebstormProjects/darrenfongzw.github.io/resume.pdf
git -C /home/darren/WebstormProjects/darrenfongzw.github.io/ commit -m "update resume"
git -C /home/darren/WebstormProjects/darrenfongzw.github.io/ push

