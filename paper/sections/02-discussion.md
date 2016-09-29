
## Discussion 

There were several key components of creating the paper. The first step was to set up the directories in which all the content for the paper would be located. In Terminal, I created a directory called *"stat159-project1"* and cd'd into it. Then I created the subdirectories *"paper"* and *"images"* for all the content to be neatly organized into these folders. This part is easy and only requires simple commands in terminal (**mkdir** and **cd**). Then I needed to actually write the content that would be going into the paper. These were stored on four separate *.md* files and were written using Markdown.

![Markdown](../images/markdown-logo.png)

Markdown is a markup language that provides a way to simply format papers and reports. It's simplicity and user friendliness makes it easy to write content in markdown and transform it into other formatting. Markdown is used to style any computer generated content.

The *'images'* folder was then populated from downloads from another github repository that had *.png* files in it. The paper is composed of four parts:

Part of Paper | File Name in Computer
------|-----------------
Abstract | 00-abstract.md
Introduction | 01-introduction.md
Discussion | 02-discussion.md
Conclusions | 03-conclusions.md

Each of these parts were created in Markdown as individual files and stored in the subdirectory *'paper.'* Some of the individual files called on files in the *'images'* folder to include images in the report. This is done using this syntax (without dashes):

!-[Image Name]-(image/path.png)
and produced results like this:

![Image](../images/stat159-logo.png)

The next step is to compile these files together to create one cohesive paper. This is done by using a Makefile, a file that is included in the parent directory and includes instructions on what to do to different files to create the desired output. For this project, I wanted to combine the four sections of the paper and create a *.md* file and a *.html* file. The first step in a Makefile is to enter a target (what you want the makefile to create) and it's dependencies (what it will use to make the desired output), separating these with a colon. Then, on the next line, you enter a tab and then the commands you want the Makefile to preform. For this project, I wanted to create a document called *'paper.md'* by concatenating the four files that included the components of the paper and then also create a file called *'paper.html'* that would be an html version of the same paper. 

![pandoc](../images/pandoc-logo.png)

This is done by using pandoc, a document converter that changes files from one file format to another. The advantages of pandoc is the ability to write a report in one format that may be consistent with the coding language you are using or the applications you want to run to produce the report, and then you are able to convert it to another format so it's easier to share and can be used by people with different coding languages, file systems, etc. This allows many different users with completely different programs to access the same information and research, increasing the paper's reproducibility. 

The reason we use a Makefile for this process is so in the future, if I were to edit any one of the four sections of the paper, I could re-run the make file and it would re-create my paper including the changes. This is especially helpful if you want to keep your data separate from your analysis, for example, and then want to add more data to your report later. The Makefile saves a lot of time by automatically updating the files. I added a command '**all**' which tells the computer to run all of the targets listed afterward in the Makefile, just to make sure Makefile does not only run the first component thinking the second component should only be run if it's needed to complete the first part. The Makefile is extremely helpful in reproducibility because anyone who has access to the Makefile should have no problems replicating my paper simply by running the Makefile themselves.

![Github](../images/github-logo.png)

Now that the paper was created and could be created time and time again on my computer, it was time to create a platform with which I could share my paper and make it easily reproducible  by anyone. For this I used Github, which is an online repository that allows users to upload and re-upload content from their computer. This allows researches, students, and professors alike to manipulate data, projects, reports, etc. on their computer and quickly share it online. This way not everything has to be updated online immediately, but you can upload your progress or edits when you are ready. In this project, I had all my content and files stored on my computer, but to be able to share it I needed to create a github repository called '*stat159-fall2016-project1*.' This is where I uploaded the paper and all the files I had created in order for others to be able to view and reproduce my work. To push the files from my computer to the github repository, I had to use another tool called Git. 

![Git](../images/git-logo.png)

Git is a version control system that stores information from terminal as you go and allows the user to save their progress incrementally. The first command ran is '**git init**' which will initialize a git subdirectory where all your files will be stored. Git allows you to modify your file and then add it to the staging area, files here will later be committed to your database when you run the commit command. Running **git add .** will add all the files in that directory to the staging area, and then running **git commit -m "short message"** will commit those files to the database. After that, all you have to do is run '**git remote add origin (link to your online github repository)**?'which will create the path to which the remote repository will upload to. Running '**git push origin master**' will upload all of your content online in the github repository you specified. Later, if you want to modify any content in the paper and then re-upload it to github, you need to run '**git pull (link to your online github repository)**' to sync the online repository with yours and make it available to upload your new content.

All someone would have to do to reproduce my paper would be to pull the content from my *"stat159-fall2016-project1"* repository and run the Makefile. Then they should generate my exact paper and be able to edit it and upload it to a different github repository if they wanted to.  
