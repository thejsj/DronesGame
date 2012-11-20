//==========================CLASS DECLARATION==================================
class DronesStructureBlueprintCube extends DronesStructureBlueprint;

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
	local int index3; 
	
		currentAdd = 0;

		for(index = 0; index < 20; index++){
		
			for(index2= 0; index2 < 6; index2++){
			
				for(index3 = 0; index3 < 6; index3++){
		
					v.X = -(BrickSize.Z * index3); ;
					v.Y = -(BrickSize.Z * index2); 
					v.Z = BrickSize.Z * index;
					BrickRelativeLocationsArray[currentAdd] = v; 
					currentAdd++;
					
				}
			
			}
		
		}


}

function SetBrickRelativeRotationsArray()
{

	local rotator r;
	local int currentAdd;
	local int index;
	local int index2;
	local int index3; 
	
		currentAdd = 0;

		for(index = 0; index < 20; index++){
		
			for(index2= 0; index2 < 6; index2++){
			
				for(index3 = 0; index3 < 6; index3++){
		
					r.Pitch = 0; 
					r.Yaw = 0; 
					r.Roll = 0;
					BrickRelativeRotationsArray[currentAdd] = r;
					currentAdd++;
					
				}
			
			}
		
		}
}