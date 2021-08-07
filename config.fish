alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

alias rfish='source ~/.config/fish/config.fish'

function laravel
	echo "https://laravel.build/$argv"
	command curl -s "https://laravel.build/$argv" | bash
	if test $status = 0
		switch $argv[(count $argv)]
			case '-*'
			case '*'
				cd $argv[(count $argv)]
				return
		end
	end
end
