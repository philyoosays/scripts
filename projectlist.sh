#!/bin/bash
#
# =================
#   What uses me?
# =================
#   projects.sh
#   start.sh
#

  dir='/Users/philyoo/webdev'
  ga='/Users/philyoo/wdi'

  case $PROJECT in
    scripts)
      ext=/scripts
      ;;
    templates)
      ext=/templates
      ;;
    boneyard)
      ext=/boneyard
      ;;
    sandbox)
      ext=/boneyard/sandbox
      ;;
    pos)
      ext=/pos
      if [[ $AMHOME == 'true' ]]; then
        START=both
      else
        START=all
      fi
      SECONDARY=remote
      ;;
    posclient)
      ext=/pos_clientside
      START=start
      ;;
    eri)
      ext=/ERI-snopes
      START=both
      ;;
    helios)
      ext=/personal/helios/helios-react
      START=dev
      ;;
    jarvis)
      ext=/personal/helios
      START=dev
      ;;
    gastack)
      dir=$ga
      ext=/unit02/projects/stackoverflow
      START=dev
      ;;
    tetris)
      dir=$ga
      ext=/unit01/projects/tetris
      ;;
    snake)
      dir=$ga
      ext=/unit01/projects/snake
      ;;
    crm)
      dir=$ga
      ext=/unit02/projects/crm
      START=dev
      ;;
    spaceteam)
      dir=$ga
      ext=/unit04/projects/space-team
      START=both
      ;;
    b2dev)
      ext=/b2devs
      START=both
      ;;
    chad)
      ext=/chad_app
      START=both
      ;;
    chadapp)
      ext=/chad_app
      START=both
      ;;
    email)
      ext=/emailwidget
      START=both
      ;;
    psychmeds)
      ext=/psych_meds_app
      START=both
      ;;
    minesweeper)
      ext=/personal/minesweeper
      ;;
    philyoo)
      ext=/personal/backup_portfolio/client
      START=start
      ;;
    personal)
      ext=/personal/backup_portfolio/client
      START=start
      ;;
    angulartodo)
      ext=/boneyard/angular-todo-app
      START=both
      ;;
    speechtest)
      ext=/boneyard/speech-test
      ;;
    mediaviewer)
      ext=/personal/mediaviewer
      ;;
    *)
      echo "$1 does not exist"
  esac

  DIRECTORY=$dir$ext

