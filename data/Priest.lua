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

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("PRIEST", 70000, 3, {
	[528] = "HARMFUL DISPEL", -- Dispel Magic
	COOLDOWN = {
		   2050, -- Holy Word: Serenity
		   8092, -- Mind Blast
		  32375, -- Mass Dispel
		  34433, -- Shadowfiend
		  34861, -- Holy Word: Sanctify
		  47540, -- Penance
		  64843, -- Divine Hymn
		  73325, -- Leap of Faith
		 110744, -- Divine Star
		 120517, -- Halo
		 129250, -- Power Word: Solace
		 205351, -- Shadow Word: Void
		 205385, -- Shadow Clash
		 207946, -- Light's Wrath (Discipline artifact)
		[123040] = "MANA_REGEN", -- Mindbender
		[200174] = "POWER_REGEN", -- Mindbender (Shadow)
		DISPEL = {
			[   527] = "HELPFUL", -- Purify
			[ 32375] = "HARMFUL HELPFUL", -- Mass Dispel
			[213634] = "HELPFUL", -- Purify Disease
		},
		AURA = {
			HELPFUL = {
				    17, -- Power Word: Shield
				 33076, -- Prayer of Mending
				 47788, -- Guardian Spirit
				 62618, -- Power Word: Barrier
				 65081, -- Body and Soul
				121557, -- Angelic Feather
				SURVIVAL = {
					33206, -- Pain Suppression
					81782, -- Power Word: Barrier
				},
			},
			HARMFUL = {
				 14914, -- Holy Fire
				 15487, -- Silence -- NOTE: non-players only INTERRUPT, special case
				204263, -- Shininig Force (slow)
				205065, -- Void Torrent (Shadow artifact)
				205369, -- Mind Bomb
				214621, -- Schism
				CROWD_CTL = {
					  8122, -- Psychic Scream (disorient)
					 88625, -- Holy Word: Chastise (incapacitate)
					226943, -- Mind Bomb (stun)
				},
			},
			PERSONAL = {
				  15286, -- Vampiric Embrace
				 194022, -- Mental Fortitude (Shadow artifact)
				 194025, -- Thrive in the Shadows (Shadow artifact)
				 197767, -- Speed of the Pious (Discipline artifact)
				 210027, -- Share in the Light (Discipline artifact)
				[212570] = "INVERT_AURA", -- Surrendered Soul
				SURVIVAL = {
					   586, -- Fade
					 47585, -- Dispersion
					216135, -- Vestments of Discipline (Discipline artifact)
				},
				BURST = {
					 10060, -- Power Infusion
					 47536, -- Rapture
					193223, -- Surrender to Madness
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			    139, -- Renew
			  41635, -- Prayer of Mending
			  64844, -- Divine Hymn
			  77489, -- Echo of Light
			 152118, -- Clarity of Will
			 186367, -- Prayer's Reprise
			 194384, -- Atonement
			 208772, -- Smite
			INVERT_AURA = {
				187464, -- Shadow Mend
				219521, -- Shadow Covenant
			},
			[111759] = "UNIQUE_AURA", -- Levitate
		},
		HARMFUL = {
			   589, -- Shadow Word: Pain
			 15407, -- Mind Flay
			 34914, -- Void Touch
			 48045, -- Mind Sear
			204213, -- Purge the Wicked
			217673, -- Mind Spike
			CROWD_CTL = {
				  9484, -- Shackle Undead (incapacitate)
				200196, -- Holy Word: Chastise (incapacitate)
			},
		},
		PERSONAL = {
			  2096, -- Mind Vision
			 45242, -- Focused Will
			124430, -- Shadowy Insight
			186478, -- Reparation
			193065, -- Masochism
			197763, -- Borrowed Time (Discipline artifact)
			198069, -- Power of the Dark Side (Discipline artifact)
			205372, -- Void Ray
		},
		PET = {
			[   605] = "CROWD_CTL INVERT_AURA", -- Mind Control (disorient)
		},
	},
}, { -- map aura to provider(s)
	[ 41635] =  33076, -- Prayer of Mending
	[ 45242] =  45243, -- Focused Will
	[ 64844] =  64843, -- Divine Hymn
	[ 65081] =  64129, -- Body and Soul
	[ 77489] =  77485, -- Echo of Light
	[ 81782] =  62618, -- Power Word: Barrier
	[111759] =   1706, -- Levitate
	[121557] = 121536, -- Angelic Feather
	[124430] = 162452, -- Shadowy Insight
	[186367] =  33076, -- Prayer's Reprise <- Prayer of Mending
	[186478] =  47540, -- Reparation <- Penance
	[187464] = 186263, -- Shadow Mend
	[193065] = 193063, -- Masochism
	[194022] = 194018, -- Mental Fortitude (Shadow artifact)
	[194025] = 194024, -- Thrive in the Shadows (Shadow artifact)
	[194384] =  81749, -- Atonement
	[197763] = 197762, -- Borrowed Time (Discipline artifact)
	[197767] = 197766, -- Speed of the Pious (Discipline artifact)
	[198069] = 198068, -- Power of the Dark Side (Discipline artifact)
	[200196] =  88625, -- Holy Word: Chastise
	[204213] = 204197, -- Purge the Wicked
	[205372] = 205371, -- Void Ray
	[208772] = 585, -- Smite
	[210027] = 197781, -- Share in the Light (Discipline artifact)
	[212570] = 193223, -- Surrendered Soul <- Surrender to Madness
	[216135] = 197711, -- Vestments of Discipline (Discipline artifact)
	[217673] = 73510, -- Mind Spike
	[219521] = 204065, -- Shadow Covenant
	[226943] = 205369, -- Mind Bomb (stun)
}, { -- map aura(s) to modified spell(s)
	[ 65081] = { -- Body and Soul
		   17, -- Power Word: Shield
		73325, -- Leap of Faith
	},
	[ 77489] = { -- Echo of Light
		  139, -- Renew
		  596, -- Prayer of Healing
		 2050, -- Holy Word: Serenity
		 2060, -- Heal
		 2061, -- Flash Heal
		34861, -- Holy Word: Sanctify
		64843, -- Divine Hymn
	},
	[124430] = 8092, -- Shadowy Insight -> Mind Blast
	[193065] = 186263, -- Masochism -> Shadow Mend
	[194022] = 34914, -- Mental Fortitude (Shadow artifact) -> Vampiric Touch
	[194025] = 47585, -- Thrive in the Shadows (Shadow artifact) -> Dispersion
	[194384] = { -- Atonement
		    17, -- Power Word: Shield
		186263, -- Shadow Mend
		194509, -- Power Word: Radiance
		200829, -- Plea
	},
	[197763] = { -- Borrowed Time (Discipline artifact)
		   585, -- Smite
		 47540, -- Penance
		207946, -- Light's Wrath
	},
	[197767] = 47540, -- Speed of the Pious (Discipline artifact) -> Penance
	[198069] = 47540, -- Power of the Dark Side (Discipline artifact) -> Penance
	[205372] = { -- Void Ray
		15407, -- Mind Flay
		48045, -- Mind Sear
		73510, -- Mind Spike
	},
	[210027] = 17, -- Share in the Light (Discipline artifact) -> Power Word: Shield
	[216135] = 586, -- Vestments of Discipline (Discipline artifact) -> Fade
	[217673] = 8092, -- Mind Spike -> Mind Blast
})
