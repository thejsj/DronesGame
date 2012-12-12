//==========================CLASS DECLARATION==================================
class DronesStructureBlueprintRectangle extends DronesStructureBlueprint;

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
	local int index3;
	local int levels;
	local int rows; 
	local int cols;

	
	
		currentAdd = 0;
		
		levels = RandRange(1,25);
		cols = RandRange(1,10);
		rows = RandRange(1,10);

		for(index = 0; index < levels; index++){
		
			for(index2 = 0; index2 < rows; index2++){
			
				for(index3 = 0; index3 < cols; index3++){
			
					v.X = BrickSize.X * index; 				
					v.Y = BrickSize.Y * index2;			
					v.Z = BrickSize.Z * index3;
					BrickRelativeLocationsArray[currentAdd] = v;

					r.Roll = 0; 				
					r.Pitch = 0; 				
					r.Yaw = 0;
					BrickRelativeRotationsArray[currentAdd] = r;
					
					currentAdd++;
					
				}
			
			}
		
		}
}
