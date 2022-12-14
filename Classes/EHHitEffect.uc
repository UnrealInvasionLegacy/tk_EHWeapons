class EHHitEffect extends Effects;

var(HitEffect) class<Actor> HitEffectDefault;
var(HitEffect) class<Actor> HitEffectRock;
var(HitEffect) class<Actor> HitEffectDirt;
var(HitEffect) class<Actor> HitEffectMetal;
var(HitEffect) class<Actor> HitEffectWood;
var(HitEffect) class<Actor> HitEffectPlant;
var(HitEffect) class<Actor> HitEffectFlesh;
var(HitEffect) class<Actor> HitEffectIce;
var(HitEffect) class<Actor> HitEffectSnow;
var(HitEffect) class<Actor> HitEffectWater;
var(HitEffect) class<Actor> HitEffectGlass;

static function class<Actor> GetHitEffect( Actor Victim, Vector HitLocation, Vector HitNormal )
{
    if (Victim == None)
        return Default.HitEffectDefault;

    switch (Victim.SurfaceType)
    {
        case EST_Rock:
            return Default.HitEffectRock;
        case EST_Dirt:
            return Default.HitEffectDirt;
        case EST_Metal:
            return Default.HitEffectMetal;
        case EST_Wood:
            return Default.HitEffectWood;
        case EST_Plant:
            return Default.HitEffectPlant;
        case EST_Flesh:
            return Default.HitEffectFlesh;
        case EST_Ice:
            return Default.HitEffectIce;
        case EST_Snow:
            return Default.HitEffectSnow;
        case EST_Water:
            return Default.HitEffectWater;
        case EST_Glass:
            return Default.HitEffectGlass;
        default:
            return Default.HitEffectDefault;
    }
}

defaultproperties
{
     HitEffectDefault=Class'EHWeaponsE.EHMinigunHitEffect'
     HitEffectRock=Class'EHWeaponsE.EHMinigunDirtHitEffect'
     HitEffectDirt=Class'EHWeaponsE.EHMinigunDirtHitEffect'
     HitEffectMetal=Class'EHWeaponsE.EHMinigunMetalHitEffect'
     HitEffectWood=Class'EHWeaponsE.HitSmokeBlack'
     HitEffectPlant=Class'XEffects.pclImpactSmoke'
     HitEffectFlesh=Class'XEffects.pclredsmoke'
     HitEffectIce=Class'XEffects.pclImpactSmoke'
     HitEffectSnow=Class'XEffects.pclImpactSmoke'
     HitEffectWater=Class'EHWeaponsE.EHMinigunHitEffect'
     HitEffectGlass=Class'XEffects.pclImpactSmoke'
}