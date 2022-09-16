-- Change the project name at workspace, startproject

workspace "project"
    startproject "project"
    architecture "x64"

    configurations
    {
        "Debug",
        "Release"
    }

--Target and object directories

tdir = "bin/%{cfg.buildcfg}/%{prj.name}"
odir = "bin-obj/%{cfg.buildcfg}/%{prj.name}"

-- Change the project name at project, location

project "ProjectName"
    location "ProjectName"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir(tdir)
    objdir(odir)

    files 
    {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    sysincludedirs
    {
        "%{prj.name}/src",
        "%{prj.name}/include"
    }

    flags
    {
        "FatalWarnings"
    }