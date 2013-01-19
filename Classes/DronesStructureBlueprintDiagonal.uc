//==========================CLASS DECLARATION==================================
class DronesStructureBlueprintDiagonal extends DronesStructureBlueprint;

//==========================EVENTS==========================================
event PostBeginPlay()
{
	SetBrickRelativeLocationsArray();
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
	local int forward;
	local int lean;
			
		currentAdd = 0;
		levels = (int(RandRange(0,5)) * 2); //They should be even, so that it's a perfect cube
		lean = RandRange(-1,1);
		
		for(index = 0; index < levels; index++){
		
			for(index2= 0; index2 < (levels/2); index2++){
			
				forward = RandRange(-2,2);
			
				for(index3 = 0; index3 < levels; index3++){
		
					v.X = -(BrickSize.X * (index3 + forward));
					v.Y = -(BrickSize.Y * (index2 + lean)); 
					v.Z = BrickSize.Z * index;
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