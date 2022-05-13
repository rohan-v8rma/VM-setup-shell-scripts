#!/bin/bash

function Help() {
    #########################################
    #Help Function
    #########################################
    
    echo "Hey! Welcome to Rohan's script for installing applications easily on linux."
    echo "Whatever flag you add will help in specifying what application you want to install."
    echo 
    echo "Syntax for running the script : bash rohan-script flag(s)"
    echo
    echo "Note that the script should be run with one or more flags."
    echo 
    echo "Standard Softwares:"
    echo 
    echo "--codeprocessors       A set of standard compilers and interpreters."
    echo "--cpufreq              A software for managing CPU powersaving."
    echo "--discord              Discord : A VoIP, instant messaging and digital distribution platform for gamers."
    echo "--dropbox              A script for integrating Dropbox with the Nautilus file manager."
    echo "--edge                 Microsoft Edge : The default browser in Windows 11."
    echo "--gnometweaks          A software for customizing the GNOME desktop environment."
    echo "--lxde                 LXDE : A lightweight desktop environment for Linux."
    echo "--onlyoffice           Onlyoffice : The best editor for editing Microsoft Office files in Linux."
    echo "--vscode               VS Code : A code editor by Microsoft."
    echo "--allapps              Install all the apps."
    echo 
    echo "Complex Instructions:"
    echo 
    echo "--dockmodify           A script for changing the dock position to the bottom in GNOME."
    echo "--linwintime           A script for resolving the time discrepancy in a dual boot of Windows and Linux."
    echo "--allinstruct          Execute all instructions." 
    echo    
    echo "--help                 This help text."
    echo 

}

Help

for flag in "$@"; do

    case ${flag} in 
    # Here, we had to use command substitution to get the value of the variable in the for loop
        --help)
            Help
            ;;
        *)
            echo "'${flag}' is an invalid flag. Please try again."
            echo "Type 'bash rohan-script.sh --help' for all flag options."
            ;;

        #Standard Softwares

        --codeprocessors)
            ./compilers-and-interpreters.sh
            ;;
        --cpufreq)
            ./cpufreq-power-manager.sh
            ;;
        --discord)
            ./discord.sh
            ;; 
        
        --dropbox)
            ./dropbox.sh
            ;;
        --edge)
            ./microsoft-edge.sh
            ;;
        --gnometweaks)
            ./gnome-tweaks.sh
            ;;
        --lxde)
            ./lxde-install.sh
            ;;
        --onlyoffice)
            ./onlyoffice.sh
            ;;
        --vscode)
            ./vs-code.sh
            ;;
        --allapps)
            ./compilers-and-interpreters.sh
            ./cpufreq-power-manager.sh
            ./discord.sh 
            ./dropbox.sh
            ./microsoft-edge.sh
            ./gnome-tweaks.sh
            ./lxde-install.sh
            ./onlyoffice.sh
            ./vs-code.sh
            ;;

        # Complex Instructions
        
        --dockmodify)
            ./dock-modification.sh
            ;;
        --linwintime)
            ./linux-windows-time-diff.sh
            ;;
        --allinstruct)
            ./dock-modification.sh
            ./linux-windows-time-diff.sh
            ;;
    esac
done

