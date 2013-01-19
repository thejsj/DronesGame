//==========================CLASS DECLARATION==================================
class DronesStructureBlueprintRotatedStack extends DronesStructureBlueprint;

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
	local int levels;
	
	currentAdd = 0;
	levels = int(RandRange(0,50));

	for(index = 0; index < levels; index++){
	
		v.X = BrickSize.X;
		v.Y = BrickSize.Y; 
		v.Z = BrickSize.Z * index;
		BrickRelativeLocationsArray[currentAdd] = v; 
				
		r.Pitch = 0; 
		r.Yaw   = (index % 24) * (65535  / 24); 
		r.Roll  = 0;
		BrickRelativeRotationsArray[currentAdd] = r;
				
		currentAdd++;
	
	}


}