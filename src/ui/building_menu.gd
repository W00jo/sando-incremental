# Building menu UI controller
class_name BuildingMenuUI
extends Control

# Building references for future functionality
@onready var townhall_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/TownhallRow/TownhallButton
@onready var church_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/ChurchRow/ChurchButton
@onready var statue_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/StatueRow/StatueButton
@onready var timber_camp_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/TimberCampRow/TimberCampButton
@onready var clay_pits_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/ClayPitsRow/ClayPitsButton
@onready var iron_mine_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/IronMineRow/IronMineButton
@onready var fishing_hut_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/FishingHutRow/FishingHutButton
@onready var winery_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/WineryRow/WineryButton
@onready var warehouse_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/WarehouseRow/WarehouseButton
@onready var wall_button: Button = $Panel/VBoxContainer/ScrollContainer/BuildingsContainer/WallRow/WallButton

func _ready() -> void:
	# Building menu initialization (ready for future functionality)
	pass
