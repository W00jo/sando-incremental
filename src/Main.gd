extends Control

# Resource management
var resource_manager

# UI references
@onready var wood_label: Label = $UI/HUD/ResourcePanel/WoodLabel
@onready var clay_label: Label = $UI/HUD/ResourcePanel/ClayLabel  
@onready var iron_label: Label = $UI/HUD/ResourcePanel/IronLabel
@onready var population_label: Label = $UI/HUD/ResourcePanel/PopulationLabel

# Gathering buttons
@onready var wood_button: Button = $UI/GatheringArea/Wood
@onready var clay_button: Button = $UI/GatheringArea/Clay
@onready var iron_button: Button = $UI/GatheringArea/Iron
@onready var fish_button: Button = $UI/GatheringArea/Fish

func _ready() -> void:
	# Initialize resource manager
	resource_manager = preload("res://src/managers/resource_manager.gd").new()
	
	# Connect resource manager signals
	resource_manager.resource_changed.connect(_on_resource_changed)
	
	# Update initial display
	_update_resource_display()

func _on_wood_pressed() -> void:
	resource_manager.gather_wood()

func _on_clay_pressed() -> void:
	resource_manager.gather_clay()

func _on_iron_pressed() -> void:
	resource_manager.gather_iron()

func _on_fish_pressed() -> void:
	resource_manager.feed_folk()

# Handle resource changes from ResourceManager
func _on_resource_changed(_resource_type: String, _new_amount: int) -> void:
	_update_resource_display()

# Update all resource labels
func _update_resource_display() -> void:
	wood_label.text = "Wood: " + str(resource_manager.get_wood())
	clay_label.text = "Clay: " + str(resource_manager.get_clay())
	iron_label.text = "Iron: " + str(resource_manager.get_iron())
	population_label.text = "Population: " + str(resource_manager.get_population())

# Building menu button handler - load Building scene
func _on_building_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Building.tscn")
