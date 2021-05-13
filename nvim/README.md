- Install vimplugin manager
	- https://github.com/junegunn/vim-plug
- Look for plugins
	- https://vimawesome.com/
- Update/Upgrade/remove etc plugins
    - :Plug and then press tab to see options
	```
	call plug#begin('~/.vim/plugged')
	
		Plug 'Your plugin of choice'

	call plug#end()
	```
	- When added plugins run PlugInstall
	- when removing plugins run PlugClean

- For coc plugin
    - paste following in your nvim.init file after "call plug#end()"
	```
	let g:coc_global_extensions = [
		\ 'Your',
		\ 'coc',
		\ 'settings',
		\ ]
	```
	- run :CocUpdate after settings added
	- run :CocUninstall coc-removed-settings (press space and tab to see full list safter CocUninstall)