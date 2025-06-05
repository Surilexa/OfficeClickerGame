/// @description Insert description here
// You can write your code in this editor
global.previewLayers = ds_map_create();
global.SavedPreviewData = ds_map_create();
global.OccupiedTiles = [0,0];
global.PreviewTiles = [0,0];
previewMode = false;
currentlyPreviewing = false;
setup = false;