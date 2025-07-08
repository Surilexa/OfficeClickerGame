with (obj_pullVFX)
{
    if (layer == layer_get_id("TempObjects"))
    {
        instance_destroy();
    }
}
instance_destroy(self);