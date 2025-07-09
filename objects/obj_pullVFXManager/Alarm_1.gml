with (obj_pullVFX)
{
    if (layer == layer_get_id("TempObjects"))
    {
        instance_destroy();
    }
}
global.isGacha = true;
instance_destroy(self);