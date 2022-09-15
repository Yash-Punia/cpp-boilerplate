#Calls the build console app to run
import subprocess

prj_name = "ProjectName"

subprocess.call(["powershell", "-Command", "bin/Debug/{}/{}.exe".format(prj_name, prj_name)])