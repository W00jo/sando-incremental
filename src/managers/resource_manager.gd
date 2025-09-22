# Manages all resources (wood, clay, iron, population)
class_name ResourceManager
extends RefCounted

# Signals for resource updates
signal resource_changed(resource_type: String, new_amount: int)

# Resource amounts
var wood: int = 0
var clay: int = 0  
var iron: int = 0
var population: int = 1

# Resource gathering amounts per click
var wood_per_click: int = 1
var clay_per_click: int = 1
var iron_per_click: int = 1

func _init():
	pass

# Gather wood by clicking
func gather_wood() -> void:
	wood += wood_per_click
	resource_changed.emit("wood", wood)

# Gather clay by clicking  
func gather_clay() -> void:
	clay += clay_per_click
	resource_changed.emit("clay", clay)

# Gather iron by clicking
func gather_iron() -> void:
	iron += iron_per_click
	resource_changed.emit("iron", iron)

# Feed folk to increase population
func feed_folk() -> void:
	population += 1
	resource_changed.emit("population", population)

# Get current resource amounts
func get_wood() -> int:
	return wood

func get_clay() -> int:
	return clay

func get_iron() -> int:
	return iron

func get_population() -> int:
	return population

# Get all resources as dictionary
func get_all_resources() -> Dictionary:
	return {
		"wood": wood,
		"clay": clay,
		"iron": iron,
		"population": population
	}
