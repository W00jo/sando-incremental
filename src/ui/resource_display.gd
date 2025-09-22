# Displays current resource counts (wood, clay, iron, population)
class_name ResourceDisplay
extends Control

# Resource label references
@onready var wood_label: Label = $WoodLabel
@onready var clay_label: Label = $ClayLabel  
@onready var iron_label: Label = $StoneLabel
@onready var population_label: Label = $PopulationLabel

# Reference to resource manager
var resource_manager

func _ready() -> void:
	# Will be set from parent scene
	pass

# Connect to resource manager and set up display
func setup_with_resource_manager(rm) -> void:
	resource_manager = rm
	resource_manager.resource_changed.connect(_on_resource_changed)
	update_display()

# Handle resource changes from ResourceManager
func _on_resource_changed(_resource_type: String, _new_amount: int) -> void:
	update_display()

# Update all resource labels
func update_display() -> void:
	if resource_manager == null:
		return
		
	wood_label.text = "Wood: " + str(resource_manager.get_wood())
	clay_label.text = "Clay: " + str(resource_manager.get_clay())
	iron_label.text = "Iron: " + str(resource_manager.get_iron())
	population_label.text = "Population: " + str(resource_manager.get_population())