//==========================CLASS DECLARATION==================================
class DronesStructureBlueprintRealPyramid extends DronesStructureBlueprint;

//==========================EVENTS==========================================
event PostBeginPlay()
{
	SetBrickRelativeLocationsArray();
	//SetBrickRelativeRotationsArray();
	InitializeBrickWorldLocationsAndRotationsArrays();
}

//==========================FUNCTIONS==========================================
function SetBrickRelativeLocationsArray()
{
	local vector v;
	local rotator r;
	local int currentAdd;
	local int index;
	local int index2;
	local int index3; //this setting up the variables at the top this gets old VERY quickly!
	local int levels;
	
	/*Not working as nice as I would like it too... 
	*/

		levels = RandRange(1,25);
		currentAdd = 0;
	
		for(index = levels; index >= 0; index--){ //this should be counting down, so we build it from the bottom up...
		
			//this is a pyramind with 20 levels... for each level remove two columns and 2 rows...
			
			//Let's draw the columns
			for(index2 = 0; index2 < (index*2); index2++){
			
				//Let's draw the Rows
				for(index3 = 0; index3 < index; index3++){
				
					v.X = -(BrickSize.X * (index2 - (index * 1)) ); // BrickSize.X, - BrickSize.X
					v.Y = -(BrickSize.Y * (index3 - (index * 1)) ); //BrickSize.Y, - BrickSize.Y
					v.Z = BrickSize.Z * (levels - index);
					BrickRelativeLocationsArray[currentAdd] = v;
					
					r.Pitch = 0; 
					r.Yaw = 0; 
					r.Roll = 0;
					BrickRelativeRotationsArray[currentAdd] = r;
					
					currentAdd++;
					
				}
			
			}
		}
}

