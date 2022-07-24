


ifeq ("${VIM_FILEEXT}",".py")
CMD:=python3 ${VIM_FILEPATH}
endif


default:
	@cd ${VIM_FILEDIR};${CMD}
