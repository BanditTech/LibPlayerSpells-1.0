--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0", true)
if not lib then return end
lib:__RegisterSpells("RACIAL", 70200, 1, {
	COOLDOWN = {
		 7744, -- Will of the Forsaken (Undead)
		20589, -- Escape Artist (Gnome)
		59752, -- Every Man for Himself (Human)
		69041, -- Rocket Barrage (Goblin)
		69046, -- Pack Hobgoblin (Goblin)
		69070, -- Rocket Jump (Goblin)
		AURA = {
			PERSONAL = {
				20578, -- Cannibalize (Undead)
				26297, -- Berserking (Troll)
				20572, -- Blood Fury (Orc attack power)
				33697, -- Blood Fury (Orc both)
				33702, -- Blood Fury (Orc spell power)
				58984, -- Shadowmeld (Night elf)
				65116, -- Stoneform (Dwarf)
				68992, -- Darkflight (Worgen)
			},
			HELPFUL = {
				 28880, -- Gift of the Naaru (Draenei Warrior)
				 59542, -- Gift of the Naaru (Draenei Paladin)
				 59543, -- Gift of the Naaru (Draenei Hunter)
				 59544, -- Gift of the Naaru (Draenei Priest)
				 59545, -- Gift of the Naaru (Draenei Death Knight)
				 59547, -- Gift of the Naaru (Draenei Shaman)
				 59548, -- Gift of the Naaru (Draenei Mage)
				121093, -- Gift of the Naaru (Draenei Monk)
			},
			HARMFUL = {
				 20549, -- War Stomp (Tauren)
				 25046, -- Arcane Torrent (Blood elf energy)
				 28730, -- Arcane Torrent (Blood elf mana)
				 50613, -- Arcane Torrent (Blood elf runic power)
				 69179, -- Arcane Torrent (Blood elf rage)
				 80483, -- Arcane Torrent (Blood elf focus)
				107079, -- Quaking Palm (Monk)
				129597, -- Arcane Torrent (Blood elf chi)
				155145, -- Arcane Torrent (Blood elf holy power)
			},
		},
	},
	AURA = {
		PERSONAL = {
			87840, -- Running Wild (Worgen)
		},
	},
}, {
	-- map aura to provider
	[20578] = 20577, -- Cannibalize (Undead)
	[65116] = 20594, -- Stone Form (Dwarf)
})
