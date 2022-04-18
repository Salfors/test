<<com

The idea behind this script is that I'm someone who switches between Linux distributions a lot and every time I need Flatback and Snap for my apps.

The idea isn't that important but it looks like I did it primarily for fun 

my Scripts are usually disorganized but I hope the following diagram makes it all clear.

__________ SNAPK
                  |
                  ……… Configuration stages
                  |           |
                  |           |……… COLORS CODE (For formatting colors used in script)
                  |           |……… Clean_screen (to make clean screen with limit trying )
                  |           |……… ASCII_Art  (To show the art of ascii )
                  |           |……… sources  (to export source functions)
                  |           |……… installation  (For the installation process after passing all verifications)
                  |           |……… check_snapk  (This function is to check whether Flatpak and snap is already installed or not)
                  |           |           |……Status_Messages(In addition to the status messages function if any)
                  |           |     
                  |           |……… main  (The main function is to collect and coordinate previous jobs)
                  |
                   ………Verification process ( Is to check for the existence of the "snapk_distros" which folder containing the installation function functions)
com


# ------------------------------ COLORS CODE -------------------------------------------------------------#


r="\e[0;91m"  #> red
b="\e[0;94m"  # > blue
y="\033[1;33m" #>Yellow#
g="\e[0;92m" #> green
w="\e[0;97m" #> white
bo="\e[1m" #> bold
u="\e[4m" #> uline
rt="\e[0m" #> reset
p='\033[0;35m' #> Purple

SL=${p}${bo}[${rt}${b}${bo}-${rt}${p}${bo}]${rt}  #Start of Some Menu
SL0=${p}${bo}[${rt}${y}${bo}0${rt}${p}${bo}]${rt}
SL1=${p}${bo}[${rt}${y}${bo}1${rt}${p}${bo}]${rt} #Start of Numbers Menus (1)
SL2=${p}${bo}[${rt}${y}${bo}2${rt}${p}${bo}]${rt} #Start of Numbers Menus (2)
SL3=${p}${bo}[${rt}${y}${bo}3${rt}${p}${bo}]${rt}

SE=${r}${bo}[${rt}${y}${bo}!${rt}${r}${bo}]${rt}${w}${bo} #Start Exclamation error 
EE=${rt}${r}${bo}[${rt}${y}${bo}!${rt}${r}${bo}]${rt} #End of Exclamation error 
#
SM=${r}${bo}[${rt}${y}${bo}-${rt}${r}${bo}]${rt}${w}${bo}${u} #Start of the Minus sign error
EM=${rt}${r}${bo}[${rt}${y}${bo}-${rt}${r}${bo}]${rt} #End of Minus sign error 
#
SP=${g}${bo}[${rt}${y}${bo}+${rt}${g}${bo}]${rt}${w}${bo} #Start of the success of a Positive sign
EP=${rt}${g}${bo}[${rt}${y}${bo}+${rt}${g}${bo}]${rt} #End of the success of a Positive sign

#------------------------------------------------------------------------------------------------------------#


count=0
max=2

 #------- to make clean screen with limit trying 

function clean_screen() {
      if [ "$count" -eq "$max" ]; then
            clear
            count=`expr $count - 2`
       fi
}

#------To check the name of the distribution------#

pwd=`pwd`

os=`cat  /etc/os-release | grep "PRETTY_NAME" | sed 's/PRETTY_NAME=//g' >$pwd/os_name ` 

os=`grep -Eo '^[^ ]+' os_name`

 sudo rm -rf os_name

#---------------------------#

<<com
# OLD ART

clear
echo -e "
${y}${bo}╔═╗┌┐┌${rt}${p}${bo}╔═╗${rt}${w}${bo}┌─┐┬┌─${rt}
${y}${bo}╚═╗│││${rt}${p}${bo}╠═╣${rt}${w}${bo}├─┘├┴┐${rt}
${y}${bo}╚═╝┘└┘${rt}${p}${bo}╩ ╩${rt}${w}${bo}┴  ┴ ┴${rt}
"
com


function ASCII_Art () {  
clear
sleep 0.4 ; 
echo -e "
${y}${bo}╔═╗┌┐┌${rt}${p}${bo}╔═╗${rt}${w}${bo}┌─┐┬┌─${rt}"; sleep 0.4
echo -e "${y}${bo}╚═╗│││${rt}${p}${bo}╠═╣${rt}${w}${bo}├─┘├┴┐${rt}"; sleep 0.4
echo -e "${y}${bo}╚═╝┘└┘${rt}${p}${bo}╩ ╩${rt}${w}${bo}┴  ┴ ┴${rt}
" ; sleep 0.4

ASCII_art =0

while true 
do 
clear
sleep 0.3
echo -e "
${y}${bo}╔═╗┌┐┌${rt}${p}${bo}╔═╗${rt}${w}${bo}┌─┐┬┌─${rt}
${y}${bo}╚═╗│││${rt}${p}${bo}╠═╣${rt}${w}${bo}├─┘├┴┐${rt}
${y}${bo}╚═╝┘└┘${rt}${p}${bo}╩ ╩${rt}${w}${bo}┴  ┴ ┴${rt}
"
sleep 0.3
ASCII_art=`expr $ASCII_art + 1`
if [ "$ASCII_art" == "3" ]; then 
      break
fi
done 
clear 

echo -e "
${y}${bo}╔═╗┌┐┌${rt}${p}${bo}╔═╗${rt}${w}${bo}┌─┐┬┌─${rt}
${y}${bo}╚═╗│││${rt}${p}${bo}╠═╣${rt}${w}${bo}├─┘├┴┐${rt}
${y}${bo}╚═╝┘└┘${rt}${p}${bo}╩ ╩${rt}${w}${bo}┴  ┴ ┴${rt}
"



}
ASCII_Art 


#----------------source the function----------------#

function sources() {

      source $pwd/snapk_distros/AlmaLinux
      source $pwd/snapk_distros/Alpine
      source $pwd/snapk_distros/Arch_Linux
      source $pwd/snapk_distros/Ataraxia
      source $pwd/snapk_distros/CentOS
      source $pwd/snapk_distros/Chrome_OS
      source $pwd/snapk_distros/Clear
      source $pwd/snapk_distros/Debian
      source $pwd/snapk_distros/Deepin
      source $pwd/snapk_distros/elementary
      source $pwd/snapk_distros/EndeavourOS
      source $pwd/snapk_distros/Endless
      source $pwd/snapk_distros/Fedora
      source $pwd/snapk_distros/GalliumOS
      source $pwd/snapk_distros/Gentoo
      source $pwd/snapk_distros/Kali
      source $pwd/snapk_distros/KDE
      source $pwd/snapk_distros/Kubuntu
      source $pwd/snapk_distros/Linux_Mint
      source $pwd/snapk_distros/Mageia
      source $pwd/snapk_distros/Manjaro
      source $pwd/snapk_distros/Mx
      source $pwd/snapk_distros/NixOS
      source $pwd/snapk_distros/openSUSE
      source $pwd/snapk_distros/Pardus
      source $pwd/snapk_distros/Parrot
      source $pwd/snapk_distros/Pop_os
      source $pwd/snapk_distros/PureOS
      source $pwd/snapk_distros/Red_Hat_Enterprise_Linux
      source $pwd/snapk_distros/Rocky
      source $pwd/snapk_distros/Souls
      source $pwd/snapk_distros/SulinOS
      source $pwd/snapk_distros/Ubuntu
      source $pwd/snapk_distros/Void
      source $pwd/snapk_distros/Xubuntu
      source $pwd/snapk_distros/Zorin_os

}

#---------------------------------------------------------#


#----------------installationation function----------------#

function installation() {
  
      case $os in 
            '"Arch')
                  distro_os="Arch Linux" 
                  Arch_Linux  ;;

            '"AlmaLinux')
                  distro_os="AlmaLinux"
                  AlmaLinux  ;;

            '"Alpine')
                  distro_os="Alpine" 
                  Alpine;;

            '"Ataraxia')
                  distro_os="Ataraxia Linux" 
                  Ataraxia ;;

            '"CentOs')
                  distro_os="CentOS" 
                  CentOS ;;

            '"Chrome')
                  distro_os="Chrome OS" 
                  Chrome_OS;;

            '"Clear')
                  distro_os="Clear Linux" 
                  Clear ;;

            '"Debian')
                  distro_os="Debian"
                  Debian ;;

            '"Deepin')
                  distro_os="Deepin" 
                  Deepin ;;

            '"elementary')
                  distro_os="elementary OS" 
                  elementary ;;

            '"EndeavourOS')
                  distro_os="EndeavourOS" 
                  EndeavourOS ;;

            '"Endless')
                  distro_os="Endless OS" 
                  Endless ;;

            '"Fedora')
                  distro_os="Fedora" 
                  Fedora ;;

            '"Gentoo')
                  distro_os="Gentoo" 
                  Gentoo ;;

            '"KDE')
                  distro_os="KDE neon" 
                  KDE ;;

            '"Kubuntu')
                  distro_os="Kubuntu" 
                  Kubuntu ;;

            '"Linux') 
                  distro_os="Linux Mint" 
                  Linux_Mint ;;

            '"Mageia')
                  distro_os="Mageia" 
                  Mageia ;;

            '"Manjaro')
                  distro_os="Manjaro"
                  Manjaro;;

            '"NixOS')
                  distro_os="NixOS" 
                  NixOS ;;

            '"Pardus')
                  distro_os="Pardus" 
                  Pardus;;

            '"Pop!_OS')
                  distro_os="Pop!_OS" 
                  Pop_os ;;

            '"PureOS')
                  distro_os="PureOS" 
                  PureOS ;;

            '"Red Hat Enterprise Linux')
                  distro_os="Red Hat Enterprise Linux" 
                  Red_Hat_Enterprise_Linux ;;

            '"Solus')
                  distro_os="Solus" 
                  Souls ;;

            '"SulinOS')
                  distro_os="SulinOS" 
                  SulinOS ;;

            '"Ubuntu')
                  distro_os="Ubuntu" 
                  Ubuntu ;;

            '"Void')
                  distro_os="Void Linux" 
                  Void ;;

            '"Zorin')
                  distro_os="Zorin OS" 
                  Zorin_os ;;

            '"Mx')
                  distro_os="Mx OS" 
                  Mx ;;

            '"openSUSE')
                  distro_os="openSUSE" 
                  openSUSE ;;

            '"Kali')
                  distro_os="KaliLInux" 
                  Kali;;

            '"Parrot')
                  distro_os="ParrotLinux" 
                  Parrot ;;

            '"Xubuntu')
                  distro_os="XubuntuLInux" 
                  Xubuntu;;

            '"Rocky')
                  distro_os=" Rocky LInux" 
                  Rocky ;;

            '"GalliumOS')
                  distro_os=" GalliumOS LInux" 
                  GalliumOS ;;
            *)
                  clear
                  echo -e "\n${SM}Your distro is not in the list of distros included in the script ${EM}\n" ;;


      esac

}

#---------------------------------------------------------#


#----------------checking snapk function----------------#


#__This function is to check whether Flatpak and snap is already installed or not,  In addition to the status messages function if any___#



function check_snapk() {


      function Status_Messages() {

            if [ "$note" != ""  ]  && [ "$note2" != "" ]; then 
                  echo -e "$note"
                  echo -e "$note2\n$Snap\n"
                 
            elif [ "$note" != "" ]; then 
                  echo -e "$note"                

            elif [ "$note2" != "" ]; then
                  echo -e "$note2\n$Snap\n"               

            fi

            if [ "$snap_note" != ""  ]  && [ "$flatpak_note" != "" ]; then 
                  echo -e "$snap_note"
                  echo -e "$flatpak_note" 
                 
            elif [ "$snap_note" != "" ]; then 
                  echo -e "$snap_note"
            
            elif [ "$flatpak_note" != "" ]; then
                  echo -e "$flatpak_note"

            fi

            if [ "$note" == ""  ]  && [ "$note2" == "" ] && [ "$snap_note" == ""  ]  && [ "$flatpak_note" == "" ]; then 
                  echo -e "\n${SP}Done${EP}\n"
                  read -n 1 -s -r -p "Press any key to Exit ..."
                  clear
            else 
                  read -n 1 -s -r -p "Press any key to Exit ..."
                  clear
            fi
      }

      case $TODO in 
            "1")
                  Snap=`snap --version`
                  if ! $Snap >/dev/null 2>&1; then
                        clear
                        echo -e "\n${SP}you already have${EP}:\n"
                        echo -e "$Snap\n"

                  else
                        clear
                        installation 
                        Status_Messages

                  fi ;;
            "2")
                  Flatpak=`flatpak --version` 
                  if ! $Flatpak >/dev/null 2>&1; then
                        clear
                        (cd $Home; cd Downloads/ ; sudo rm -rf flathub.* ; wget https://flathub.org/repo/flathub.flatpakrepo; sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo)  
                        clear
                        echo -e "\n${SP}you already have${EP}: $Flatpak\n"

                  else
		            clear
                        installation
                        Status_Messages
                  fi ;;

            "3")
                  Flatpak=`flatpak --version` 
                  if ! $Flatpak >/dev/null 2>&1; then
                        clear
                        (cd $Home; cd Downloads/ ; sudo rm -rf flathub.* ; wget https://flathub.org/repo/flathub.flatpakrepo; sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo) 
                        note="\n${SP}you already have${EP}: $Flatpak\n"
                  else
                        installation 

                  fi
                  Snap=`snap --version`
                  if ! $Snap >/dev/null 2>&1; then
                        note2="${SP}you already have${EP}:\n"

                  else
                        installation 
                  fi
                  clear # add to comment to understand the changes 
                  Status_Messages ;;
      esac
      
}


#---------------------------------------------------------#


#----------------Main function----------------#

function main() {  
      while true
      do  
            echo -e "\n${b}========================"
            echo -e "[---]  ${p}SnApk Menu${rt}${b}  [---]"
            echo -e "========================${rt}\n"
            echo -e "${g}${bo}+${rt}${SL1} ${w}${bo}Snapd${rt}" 
            echo -e "${g}${bo}+${rt}${SL2} ${w}${bo}FlatPAK${rt}" 
            echo -e "${g}${bo}+${rt}${SL3} ${w}${bo}FlatPAK & Snapd${rt}"  
            echo -e "${g}${bo}+${rt}${SL0} ${w}${bo}Exit${rt}\n"  

            read -p "Choose an option: "  option
            case $option in 
                  "1") # To Do
                        TODO="1" # Snapd 
                        check_snapk
                        break ;;

                  "2")
                        TODO="2"  # Flatpak
                        check_snapk
                        break ;;

                  "3")
                      TODO="3" # Snap & Flatpak
                      check_snapk
                      break  ;;

                  "0")
                        clear
                        break ;;
                  *)
                        echo -e "\n${SM} ENTER A Number of them !!! ${EM}\n" 
                        count=`expr $count + 1`
                        clean_screen ;;
              esac

      done
}

#---------------------------------------------------------#


 #Is to check for the existence of the "snapk_distros" which folder containing the installation function functions 

pwd=`pwd`
find=`find $pwd -type d -name "snapk_distros"`

if ! $find >/dev/null 2>&1; then
      main
else 
      sleep 2
      clear
      echo -e "\n${SE}functions directory 'snapk_distros' not found on $pwd/...?${EE}\n"

fi