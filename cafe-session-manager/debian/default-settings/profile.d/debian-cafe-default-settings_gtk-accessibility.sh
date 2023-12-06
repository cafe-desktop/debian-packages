# Copyright (C) 2014-2015, Martin Wimpress <code@flexion.org>
# Copyright (C) 2015, Mike Gabriel <mike.gabriel@das-netzwerkteam.de>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# .
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# .
# On Debian systems, the complete text of the GNU General Public
# License version 2 can be found in "/usr/share/common-licenses/GPL-2".

if [ "x$DESKTOP_SESSION" = "xcafe" ] || [ "x$XDG_SESSION_DESKTOP" = "xcafe" ]; then
	# Ensure CTK accessibility modules are active.
	if [ -z "$CTK_MODULES" ] ; then
		CTK_MODULES=gail:atk-bridge
	else
		CTK_MODULES="$CTK_MODULES:gail:atk-bridge"
	fi
	export CTK_MODULES
fi
