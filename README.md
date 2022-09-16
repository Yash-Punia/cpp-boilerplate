# C++ Project Boilerplate 🛠️
This is a template project for C++ with a simple project structure and build toolchain. (Toolchain currently for windows only)

The project is built using Premake, and toolchain is working through python. You need to make sure that python is installed in your device.

You can clone the repo and create your own simple C++ projects. This project structure is used for the Aurora Game Engine, and Rendeer.

## Configuration Steps ⚙️
After cloning the repository, the project file structure will look as follows:
```
cpp-boilerplate
|
|-ProjectName
|       |-src
|           |-helloworld.cpp
|           |-main.cpp
|       |-include
|           |-helloworld.h
|-tools
|   |-build.py
|   |-cli.py
|   |-run.py
|   |-version.py
|
|-premake5.lua
|-project.bat

```
The code structure can be altered as per requirements. 
The next important thing is changing the project name as desired. So you neeed to change the name at a few places for proper build and running.

- Change the folder name **'ProjectName'** with desired name
- In `premake5.lua`, change the project name at `workspace, startproject, project, location`. Keep in mind that the folder name should be exactly same as project and location name.
- In `run.py`, change the project name variable accordingly

After that, the project is configured 💫 

You can test it out by 
```
project.bat build run
```

You can rename this .bat file with the project title to maintain consistency across the project

If the console prints out 'Hello World!`, then you are ready to begin with your next C++ project. Write out cpp files in ProjectName/src and header files in ProjectName/include

## Contribution 🖖

The project is a very naive skeleton for a C++ project but it suits my needs for simple projects to start with. However, there are a lot of additions that can be done, and I'll be doing too. You can create issue and then take upon that feature to work upon. Some features to start with - 

- Making the project build toolchain crossplatform
- Addition of External libraries like spdlog, sdl, etc. and adding them into the build toolchain
