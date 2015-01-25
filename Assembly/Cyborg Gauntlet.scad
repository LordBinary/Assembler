/*

This program assembles the components from various e-NABLE designs, and scales and arranges them based on measurements.

    Copyright (C) 2014, Laird Popkin

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

module CyborgGauntlet(thumb=1, hand=0) {
//%	import("../Cyborg_Beast/STL Files/Cyborg_gauntlet_1.2__Ivan_.stl");
//%	import("../Cyborg_Beast/STL Files/hex_sleeve_solo.stl");
        echo(str("Cyborg Gauntlet 2.0, ",thumb?" Full":"No Thumb"));
        rotate([0,0,180]) translate([2.25,-63.5,15]) {
            if (thumb) {
                if (hand) {
                    mirror([1,0,0]) import("../Cyborg_Beast_2/normal gauntlet.stl");
                    echo("Cyborg_Beast_2/normal gauntlet.stl");
                    }
                else {
                    import("../Cyborg_Beast_2/normal gauntlet.stl");
                    echo("Cyborg_Beast_2/normal gauntlet.stl");
                    }
                }
            if (!thumb) 
                if (hand) { // right hand prosthetic
                    echo("Cyborg_Beast_2/R one hinge gauntlet.stl");
                    mirror([1,0,0]) translate([0,-7.7,2]) import("../Cyborg_Beast_2/R one hinge gauntlet.stl");
                    }
                else {
                    translate([0,-7.7,2]) import("../Cyborg_Beast_2/L one hinge gauntlet.stl");
                    echo("Cyborg_Beast_2/L one hinge gauntlet.stl");
                }
            }

	}

//CyborgGauntlet(thumb=1, hand=0);
