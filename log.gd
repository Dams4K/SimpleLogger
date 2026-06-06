@abstract
extends Object
class_name Log

static func debug(message: Variant) -> void:
	var stack = get_stack()
	var caller = stack[1] if stack.size() > 1 else {}
	var source = "%s:%s" % [caller.get("source", "?"), caller.get("line", "?")]
	print("[DEBUG] ", message, " - At: ", source)

static func info(message: Variant) -> void:
	print("[INFO] ", message)

static func warn(message: Variant) -> void:
	push_warning("[WARNING] ", message)

static func error(message: Variant) -> void:
	push_error("[ERROR] ", message)
