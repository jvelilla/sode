-- enum wrapper
class SOD_REALNET_MODEL_CONFIG_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sod_realnet_model_minsize or a_value = sod_realnet_model_maxsize or a_value = sod_realnet_model_scalefactor or a_value = sod_realnet_model_stridefactor or a_value = sod_relanet_model_detection_threshold or a_value = sod_realnet_model_nms or a_value = sod_realnet_model_discard_null_boxes or a_value = sod_realnet_model_name or a_value = sod_realnet_model_about_info
		end

	sod_realnet_model_minsize: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_REALNET_MODEL_MINSIZE"
		end

	sod_realnet_model_maxsize: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_REALNET_MODEL_MAXSIZE"
		end

	sod_realnet_model_scalefactor: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_REALNET_MODEL_SCALEFACTOR"
		end

	sod_realnet_model_stridefactor: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_REALNET_MODEL_STRIDEFACTOR"
		end

	sod_relanet_model_detection_threshold: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_RELANET_MODEL_DETECTION_THRESHOLD"
		end

	sod_realnet_model_nms: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_REALNET_MODEL_NMS"
		end

	sod_realnet_model_discard_null_boxes: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_REALNET_MODEL_DISCARD_NULL_BOXES"
		end

	sod_realnet_model_name: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_REALNET_MODEL_NAME"
		end

	sod_realnet_model_about_info: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_REALNET_MODEL_ABOUT_INFO"
		end

end
