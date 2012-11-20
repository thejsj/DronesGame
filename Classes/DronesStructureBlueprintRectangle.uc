//==========================CLASS DECLARATION==================================
class DronesStructureBlueprintRectangle extends DronesStructureBlueprint;

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

		for(index = 0; index < 30; index++){
		
			for(index2 = 0; index2 < 5; index2++){
			
				for(index3 = 0; index3 < 3; index3++){
			
					v.X = BrickSize.X * index; 				
					v.Y = BrickSize.Y * index2;			
					v.Z = BrickSize.Y * index3;
					BrickRelativeLocationsArray[currentAdd] = v; 
					currentAdd++;
					
				}
			
			}
		
		}
}

function SetBrickRelativeRotationsArray()
{
	local rotator r;
	local int index;
	local int index2;
	local int index3;
	local int currentAdd;
	
		currentAdd = 0;

		for(index = 0; index < 30; index++){
		
			for(index2 = 0; index2 < 5; index2++){
				
				for(index3 = 0; index3 < 3; index3++){
			
					r.Roll = 0; 				
					r.Pitch = 0; 				
					r.Yaw = 0;
					BrickRelativeRotationsArray[currentAdd] = r;
					currentAdd++;
				
				}
			
			}
		
		}
		
}