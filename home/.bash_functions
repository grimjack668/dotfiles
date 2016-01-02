#
# .bash_functions
#

# Ubooquity Comic Server {{{
#
# personal comic and ebook server
# tutorial Video: https://www.youtube.com/watch?v=qfLG9nKt3ew
# http://vaemendis.net/ubooquity/

PATH_UBOOQUITY=~/.ubooquity
ubooquity() { cd $PATH_UBOOQUITY && nohup java -jar $PATH_UBOOQUITY/Ubooquity.jar -webadmin -headless >/dev/null 2>&1& }
ubooquity-gui() { cd $PATH_UBOOQUITY && nohup java -jar $PATH_UBOOQUITY/Ubooquity.jar -webadmin >/dev/null 2>&1& }
ubooquity-quit() { kill $(ps -ef | grep '[U]booquity.jar' | awk '{print $2}') ;}
ubooquity-status()
{ 
   if ps -ef | grep '[U]booquity.jar' > /dev/null
   then
      echo "Ubooquity is running on http://localhost:2202"
      echo "To change settings use http://localhost:2202/admin"
   else
      echo "Ubooquity has stopped"
   fi
}

# }}}


