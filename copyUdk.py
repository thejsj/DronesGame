import shutil
import getopt
import sys
import os

def copyFiles(destination, udkdir):

    print "UDK Directory : ", udkdir
    print "Repository des: ",destination

    errors = 0

    # Copy Classes
    try:
        shutil.rmtree(os.path.join(destination, "Classes/"))
    except Exception: 
        errors += 1
        pass

    try:
        shutil.copytree(os.path.join(udkdir, "Development/Src/Drones/Classes/"), os.path.join(destination, "Classes/"))
    except Exception: 
        errors += 1
        print "Couldn't copy Classes/"
    

    # Copy Config Files
    configFiles = ["DefaultEngine.ini", "DefaultGame.ini", "DefaultInput.ini"];
    for fn in configFiles:
        try: 
            shutil.copyfile(os.path.join(udkdir, "UDKGame/Config/", fn), os.path.join(destination, "Config/", fn))
        except Exception: 
            errors += 1
            print "Couldn't copy:", fn
    # Copy Content Files
    gameContentFiles = ["DronesHUD.upk", "DronesPackage.upk"];
    for fn in gameContentFiles:
        try:
            shutil.copyfile(os.path.join(udkdir, "UDKGame/Content/", fn), os.path.join(destination, "DronesGameContent", fn))
        except Exception: 
            errors += 1
            print "Couldn't copy:", fn

    # Copy Map Files
    gameContentFiles = ["DronesEmpty.udk"];
    for fn in gameContentFiles:
        try: 
            shutil.copyfile(os.path.join(udkdir, "UDKGame/Content/Maps/", fn), os.path.join(destination, "Maps", fn))
        except Exception: 
            errors += 1
            print "Couldn't copy:", fn

    if errors == 0:
        print "Files Copied With NO Errors."
    else:
        print errors, " during copyFiles()"

def usage():
    print ' -------------------------------------------------------------------------'
    print ' Jorge Silva-Jetter (jorge.silva@thejsj.com) '
    print ' '
    print ' '
    print ' Typical usage:'
    # print ' KepInvestigationAtMAST.py --invid=GO10003 --quarter=1'
    print ' copyUdk.py --copy --destination:"C/Users/Jorge/Documents/GitHub/" --udkdir="C:\UDK\UDK-2012-10" - Copy all Data to Destination'
    print ' '
    print ' -------------------------------------------------------------------------'
    sys.exit(' ')

def main():
    status = 0

# input arguments / KepInvestigationAtMAST.py --invid=STKL --quarter=1

    try:
        opts, args = getopt.getopt(sys.argv[1:],"h:iq",["help","copy","everything","destination=","udkdir="])
    except getopt.GetoptError:
        usage()
    for o, a in opts:
        if o in ("-h", "--help"):
            usage()
        if o in ("-c", "--copy"):

            # Is Destination Declared?
            if o in ("-d", "--destination"):
                destination = str(a)
            else:
                destination = "C:/Users/Jorge/Documents/GitHub/DronesGame/"

            # Is the UDK directory Declared?
            if o in ("-u", "--udkdir"):
                udkdir = str(a)
            else:
                udkdir = "C:/UDK/UDK-2012-10/"

            copyFiles(destination, udkdir)

if __name__ == "__main__":
    main()