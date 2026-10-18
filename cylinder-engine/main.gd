extends Node2D

@onready var frame_sprite: Sprite2D = $"Frame Sprite"
@onready var head_to_arm: PinJoint2D = $"Head to Arm"
@onready var arm_to_weight: PinJoint2D = $"Arm to Weight"
@onready var weight_to_static: PinJoint2D = $"Weight To Static"
@onready var head_to_frame: GrooveJoint2D = $"Head to Frame"
@onready var head_rb: RigidBody2D = $"Head RB"
@onready var weight_rb: RigidBody2D = $"Weight RB"
@onready var arm_rb: RigidBody2D = $"Arm RB"
@onready var air_fuel_mixture_area: Area2D = $"Air Fuel Mixture Area"
@onready var exhaust_valve_area: Area2D = $"Exhaust Valve Area"
@onready var transfer_port_area: Area2D = $"Transfer Port Area"
@onready var spark_visual: MeshInstance2D = $"Spark Visual"
@onready var frame_collider: StaticBody2D = $"Frame Collider"
@onready var frame_head_collider: StaticBody2D = $"Frame Head Collider"
@onready var weight_static: StaticBody2D = $"Weight Static"
@onready var spark_egnition_timer: Timer = $"Spark Egnition Timer"

func _process(delta: float) -> void:
	spark_visual.modulate = Color(1.0, 1.0, 0.02, 0.0)

func _on_spark_egnition_timer_timeout() -> void:
	spark_visual.modulate = Color(1.0, 1.0, 0.02, 1.0)
	head_rb.apply_central_force(Vector2(0,-1000))
