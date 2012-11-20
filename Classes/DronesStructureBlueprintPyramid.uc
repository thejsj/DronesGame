//==========================CLASS DECLARATION==================================
class DronesStructureBlueprintPyramid extends DronesStructureBlueprint;

//==========================EVENTS==========================================
event PostBeginPlay()
{
	SetBrickRelativeLocationsArray();
	SetBrickRelativeRotationsArray();
	InitializeBrickWorldLocationsAndRotationsArrays();
}

//==========================FUNCTIONS==========================================
function SetBrickRelativeLocationsArray()
{
	local vector v;
	local int currentAdd;
	local int index;
	local int index2;
	local int index3; //this setting up the variables at the top this gets old VERY quickly!
	local int levels;

		levels = 5;
		currentAdd = 0;
	
		for(index = levels; index >= 0; index--){ //this should be counting down, so we build it from the bottom up...
		
			//this is a pyramind with 20 levels... for each level remove two columns and 2 rows...
			
			//Let's draw the columns
			for(index2 = 0; index2 < index; index2++){
			
				//Let's draw the Rows
				for(index3 = 0; index3 < index; index3++){
				
					v.X = -(BrickSize.X * index2); // BrickSize.X, - BrickSize.X
					v.Y = -(BrickSize.Y * index3); //BrickSize.Y, - BrickSize.Y
					v.Z = BrickSize.Z * (levels - index);
					BrickRelativeLocationsArray[currentAdd] = v;
					currentAdd++;
					
				}
			
			}
		}

	/*
	Zack, this code is ugly as hhhhhhhhhhhhhhhhhhhhhheeeeeeeeeeeeeeeeeeeeeelllllllllllllll!

	v.X = 0; 				v.Y = 0; 				v.Z = 0;
		BrickRelativeLocationsArray[0] = v;
	v.X = 0; 				v.Y = BrickSize.Y; 		v.Z = 0;
		BrickRelativeLocationsArray[1] = v;
	v.X = 0; 				v.Y = -BrickSize.Y; 	v.Z = 0;
		BrickRelativeLocationsArray[2] = v;
	v.X = BrickSize.X; 		v.Y = 0; 				v.Z = 0;
		BrickRelativeLocationsArray[3] = v;
	v.X = BrickSize.X; 		v.Y = BrickSize.Y; 		v.Z = 0;
		BrickRelativeLocationsArray[4] = v;
	v.X = BrickSize.X; 		v.Y = -BrickSize.Y; 	v.Z = 0;
		BrickRelativeLocationsArray[5] = v;
	v.X = BrickSize.X * 2; 	v.Y = 0; 				v.Z = 0;
		BrickRelativeLocationsArray[6] = v;
	v.X = BrickSize.X * 2; 	v.Y = BrickSize.Y; 		v.Z = 0;
		BrickRelativeLocationsArray[7] = v;
	v.X = BrickSize.X * 2; 	v.Y = -BrickSize.Y; 	v.Z = 0;
		BrickRelativeLocationsArray[8] = v;
	v.X = -BrickSize.X; 	v.Y = 0; 				v.Z = 0;
		BrickRelativeLocationsArray[9] = v;
	v.X = -BrickSize.X; 	v.Y = BrickSize.Y; 		v.Z = 0;
		BrickRelativeLocationsArray[10] = v;
	v.X = -BrickSize.X; 	v.Y = -BrickSize.Y; 	v.Z = 0;
		BrickRelativeLocationsArray[11] = v;
	v.X = -BrickSize.X * 2; 	v.Y = 0; 				v.Z = 0;
		BrickRelativeLocationsArray[12] = v;
	v.X = -BrickSize.X * 2; 	v.Y = BrickSize.Y; 		v.Z = 0;
		BrickRelativeLocationsArray[13] = v;
	v.X = -BrickSize.X * 2; 	v.Y = -BrickSize.Y; 	v.Z = 0;
		BrickRelativeLocationsArray[14] = v;

	v.X = BrickSize.X; 		v.Y = BrickSize.Y / 2; 	v.Z = BrickSize.Z;
		BrickRelativeLocationsArray[15] = v;
	v.X = BrickSize.X; 		v.Y = -BrickSize.Y / 2; 	v.Z = BrickSize.Z;
		BrickRelativeLocationsArray[16] = v;
	v.X = 0; 				v.Y = BrickSize.Y / 2; 	v.Z = BrickSize.Z;
		BrickRelativeLocationsArray[17] = v;
	v.X = 0; 				v.Y = -BrickSize.Y / 2; 	v.Z = BrickSize.Z;
		BrickRelativeLocationsArray[18] = v;
	v.X = -BrickSize.X; 	v.Y = BrickSize.Y / 2; 	v.Z = BrickSize.Z;
		BrickRelativeLocationsArray[19] = v;
	v.X = -BrickSize.X; 	v.Y = -BrickSize.Y / 2; 	v.Z = BrickSize.Z;
		BrickRelativeLocationsArray[20] = v;
	
	v.X = 0;				v.Y = 0;				v.Z = BrickSize.Z * 2;
		BrickRelativeLocationsArray[21] = v;
	*/
}

function SetBrickRelativeRotationsArray()
{

	local rotator r;
	local int currentAdd;
	local int index;
	local int index2;
	local int index3; //this setting up the variables at the top this gets old VERY quickly!
	local int levels;

		levels = 5;
		currentAdd = 0;
	
		for(index = levels; index >= 0; index--){ //this should be counting down, so we build it from the bottom up...
	
			//Let's draw the columns
			for(index2 = 0; index2 < index; index2++){
			
				//Let's draw the Rows
				for(index3 = 0; index3 < index; index3++){
				
					r.Pitch = 0; 
					r.Yaw = 0; 
					r.Roll = 0;
					BrickRelativeRotationsArray[currentAdd] = r;
					currentAdd++;
					
				}
			
			}
		}
		
}