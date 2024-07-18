local M = {}

M.headers = {
	{
		[[                               __                ]],
		[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
		[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
		[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
		[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
		[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
	},
	{
		[[ _______             ____   ____.__         ]],
		[[ \      \   ____  ___\   \ /   /|__| _____  ]],
		[[ /   |   \_/ __ \/  _ \   Y   / |  |/     \ ]],
		[[/    |    \  ___(  <_> )     /  |  |  Y Y  \]],
		[[\____|__  /\___  >____/ \___/   |__|__|_|  /]],
		[[        \/     \/                        \/ ]],
	},
	{
		[[                                                                       ]],
		[[  ██████   █████                   █████   █████  ███                  ]],
		[[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
		[[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
		[[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
		[[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
		[[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
		[[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
		[[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
		[[                                                                       ]],
	},
	{
		[[                                                    ]],
		[[     dMMMMb  dMMMMMP .aMMMb  dMP dMP dMP dMMMMMMMMb ]],
		[[    dMP dMP dMP     dMP"dMP dMP dMP amr dMP"dMP"dMP ]],
		[[   dMP dMP dMMMP   dMP dMP dMP dMP dMP dMP dMP dMP  ]],
		[[  dMP dMP dMP     dMP.aMP  YMvAP" dMP dMP dMP dMP   ]],
		[[ dMP dMP dMMMMMP  VMMMP"    VP"  dMP dMP dMP dMP    ]],
		[[                                                    ]],
	},
	{
		[[                                                                                   ]],
		[[     /\__\         /\  \         /\  \         /\__\          ___        /\__\     ]],
		[[    /::|  |       /::\  \       /::\  \       /:/  /         /\  \      /::|  |    ]],
		[[   /:|:|  |      /:/\:\  \     /:/\:\  \     /:/  /          \:\  \    /:|:|  |    ]],
		[[  /:/|:|  |__   /::\~\:\  \   /:/  \:\  \   /:/__/  ___      /::\__\  /:/|:|__|__  ]],
		[[ /:/ |:| /\__\ /:/\:\ \:\__\ /:/__/ \:\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\ ]],
		[[ \/__|:|/:/  / \:\~\:\ \/__/ \:\  \ /:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  / ]],
		[[     |:/:/  /   \:\ \:\__\    \:\  /:/  /   |:|__/:/  /  \::/__/           /:/  /  ]],
		[[     |::/  /     \:\ \/__/     \:\/:/  /     \::::/__/    \:\__\          /:/  /   ]],
		[[     /:/  /       \:\__\        \::/  /       ~~~~         \/__/         /:/  /    ]],
		[[     \/__/         \/__/         \/__/                                   \/__/     ]],
		[[                                                                                   ]],
	},
	{
		[[                                     ]],
		[[      __                _            ]],
		[[   /\ \ \___  ___/\   /(_)_ __ ___   ]],
		[[  /  \/ / _ \/ _ \ \ / | | '_ ` _ \  ]],
		[[ / /\  |  __| (_) \ V /| | | | | | | ]],
		[[ \_\ \/ \___|\___/ \_/ |_|_| |_| |_| ]],
		[[                                     ]],
	},
	{
		[[                                                                                                   ]],
		[[ /\\\\\_____/\\\_______________________________/\\\________/\\\___________________________         ]],
		[[ \/\\\\\\___\/\\\______________________________\/\\\_______\/\\\__________________________         ]],
		[[ _\/\\\/\\\__\/\\\______________________________\//\\\______/\\\___/\\\_____________________       ]],
		[[  _\/\\\//\\\_\/\\\_____/\\\\\\\\______/\\\\\_____\//\\\____/\\\___\///_____/\\\\\__/\\\\\__       ]],
		[[   _\/\\\\//\\\\/\\\___/\\\/////\\\___/\\\///\\\____\//\\\__/\\\_____/\\\__/\\\///\\\\\///\\\_     ]],
		[[    _\/\\\_\//\\\/\\\__/\\\\\\\\\\\___/\\\__\//\\\____\//\\\/\\\_____\/\\\_\/\\\_\//\\\__\/\\\     ]],
		[[     _\/\\\__\//\\\\\\_\//\\///////___\//\\\__/\\\______\//\\\\\______\/\\\_\/\\\__\/\\\__\/\\\_   ]],
		[[      _\/\\\___\//\\\\\__\//\\\\\\\\\\__\///\\\\\/________\//\\\_______\/\\\_\/\\\__\/\\\__\/\\\   ]],
		[[       _\///_____\/////____\//////////_____\/////___________\///________\///__\///___\///___\///__ ]],
		[[                                                                                                   ]],
	},
	{
		[[                                                    ]],
		[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
		[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
		[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
		[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
		[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
		[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
		[[                                                    ]],
	},
	{
		[[                                                     ]],
		[[  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ]],
		[[  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ]],
		[[ ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ]],
		[[ ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ]],
		[[ ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ]],
		[[ ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ]],
		[[ ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ]],
		[[    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ]],
		[[          ░    ░  ░    ░ ░        ░   ░         ░    ]],
		[[                                 ░                   ]],
		[[                                                     ]],
	},
	{
		[[                                                                   ]],
		[[ ███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ]],
		[[ ███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ]],
		[[ ███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
		[[ ███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
		[[ ███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
		[[ ███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ ]],
		[[ ███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ ]],
		[[  ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ]],
		[[                                                                   ]],
	},
	{
		[[                                   ]],
		[[  ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·.  ]],
		[[ •█▌▐█▀▄.▀·▪     ▪█·█▌██ ·██ ▐███▪ ]],
		[[ ▐█▐▐▌▐▀▀▪▄ ▄█▀▄ ▐█▐█•▐█·▐█ ▌▐▌▐█· ]],
		[[ ██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌ ]],
		[[ ▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀▀▀▀  █▪▀▀▀ ]],
		[[                                   ]],
	},
	{
		[[                                       ]],
		[[    ▄   ▄███▄   ████▄     ▄   ▄█ █▀▄▀█ ]],
		[[     █  █▀   ▀  █   █      █  ██ █ █ █ ]],
		[[ ██   █ ██▄▄    █   █ █     █ ██ █ ▄ █ ]],
		[[ █ █  █ █▄   ▄▀ ▀████  █    █ ▐█ █   █ ]],
		[[ █  █ █ ▀███▀           █  █   ▐    █  ]],
		[[ █   ██                  █▐        ▀   ]],
		[[                         ▐             ]],
		[[                                       ]],
	},
	{
		[[                                                      ]],
		[[ ##    ## ########  #######  ##     ## #### ##     ## ]],
		[[ ###   ## ##       ##     ## ##     ##  ##  ###   ### ]],
		[[ ####  ## ##       ##     ## ##     ##  ##  #### #### ]],
		[[ ## ## ## ######   ##     ## ##     ##  ##  ## ### ## ]],
		[[ ##  #### ##       ##     ##  ##   ##   ##  ##     ## ]],
		[[ ##   ### ##       ##     ##   ## ##    ##  ##     ## ]],
		[[ ##    ## ########  #######     ###    #### ##     ## ]],
		[[                                                      ]],
	},
	{
		[[                                                            ]],
		[[ 888b    888                  888     888 d8b               ]],
		[[ 8888b   888                  888     888 Y8P               ]],
		[[ 88888b  888                  888     888                   ]],
		[[ 888Y88b 888  .d88b.   .d88b. Y88b   d88P 888 88888b.d88b.  ]],
		[[ 888 Y88b888 d8P  Y8b d88""88b Y88b d88P  888 888 "888 "88b ]],
		[[ 888  Y88888 88888888 888  888  Y88o88P   888 888  888  888 ]],
		[[ 888   Y8888 Y8b.     Y88..88P   Y888P    888 888  888  888 ]],
		[[ 888    Y888  "Y8888   "Y88P"     Y8P     888 888  888  888 ]],
		[[                                                            ]],
	},
	{
		[[                                                                         ]],
		[[                               :                                         ]],
		[[ L.                     ,;    t#,                                        ]],
		[[ EW:        ,ft       f#i    ;##W.              t                        ]],
		[[ E##;       t#E     .E#t    :#L:WE              Ej            ..       : ]],
		[[ E###t      t#E    i#W,    .KG  ,#D  t      .DD.E#,          ,W,     .Et ]],
		[[ E#fE#f     t#E   L#D.     EE    ;#f EK:   ,WK. E#t         t##,    ,W#t ]],
		[[ E#t D#G    t#E :K#Wfff;  f#.     t#iE#t  i#D   E#t        L###,   j###t ]],
		[[ E#t  f#E.  t#E i##WLLLLt :#G     GK E#t j#f    E#t      .E#j##,  G#fE#t ]],
		[[ E#t   t#K: t#E  .E#L      ;#L   LW. E#tL#i     E#t     ;WW; ##,:K#i E#t ]],
		[[ E#t    ;#W,t#E    f#E:     t#f f#:  E#WW,      E#t    j#E.  ##f#W,  E#t ]],
		[[ E#t     :K#D#E     ,WW;     f#D#;   E#K:       E#t  .D#L    ###K:   E#t ]],
		[[ E#t      .E##E      .D#;     G#t    ED.        E#t :K#t     ##D.    E#t ]],
		[[ ..         G#E        tt      t     t          E#t ...      #G      ..  ]],
		[[             fE                                 ,;.          j           ]],
		[[              ,                                                          ]],
		[[                                                                         ]],
	},
	{
		[[                                                     ]],
		[[  __  __                 __  __                      ]],
		[[ /\ \/\ \               /\ \/\ \  __                 ]],
		[[ \ \ `\\ \     __    ___\ \ \ \ \/\_\    ___ ___     ]],
		[[  \ \ , ` \  /'__`\ / __`\ \ \ \ \/\ \ /' __` __`\   ]],
		[[   \ \ \`\ \/\  __//\ \L\ \ \ \_/ \ \ \/\ \/\ \/\ \  ]],
		[[    \ \_\ \_\ \____\ \____/\ `\___/\ \_\ \_\ \_\ \_\ ]],
		[[     \/_/\/_/\/____/\/___/  `\/__/  \/_/\/_/\/_/\/_/ ]],
		[[                                                     ]],
	},
	{
		[[                                                                  ]],
		[[     _/      _/                      _/      _/  _/               ]],
		[[    _/_/    _/    _/_/      _/_/    _/      _/      _/_/_/  _/_/  ]],
		[[   _/  _/  _/  _/_/_/_/  _/    _/  _/      _/  _/  _/    _/    _/ ]],
		[[  _/    _/_/  _/        _/    _/    _/  _/    _/  _/    _/    _/  ]],
		[[ _/      _/    _/_/_/    _/_/        _/      _/  _/    _/    _/   ]],
		[[                                                                  ]],
	},
	{
		[[                                                                       ]],
		[[                                                                     ]],
		[[       ████ ██████           █████      ██                     ]],
		[[      ███████████             █████                             ]],
		[[      █████████ ███████████████████ ███   ███████████   ]],
		[[     █████████  ███    █████████████ █████ ██████████████   ]],
		[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
		[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
		[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
		[[                                                                       ]],
	},
}

return M.headers[math.random(#M.headers)]
