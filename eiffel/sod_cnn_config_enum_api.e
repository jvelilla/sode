-- enum wrapper
class SOD_CNN_CONFIG_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = sod_cnn_network_output or a_value = sod_cnn_detection_threshold or a_value = sod_cnn_nms or a_value = sod_cnn_detection_classes or a_value = sod_cnn_rand_seed or a_value = sod_cnn_hier_threshold or a_value = sod_cnn_temperature or a_value = sod_cnn_log_callback or a_value = sod_rnn_callback or a_value = sod_rnn_text_length or a_value = sod_rnn_data_length or a_value = sod_rnn_seed
		end

	sod_cnn_network_output: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_CNN_NETWORK_OUTPUT"
		end

	sod_cnn_detection_threshold: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_CNN_DETECTION_THRESHOLD"
		end

	sod_cnn_nms: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_CNN_NMS"
		end

	sod_cnn_detection_classes: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_CNN_DETECTION_CLASSES"
		end

	sod_cnn_rand_seed: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_CNN_RAND_SEED"
		end

	sod_cnn_hier_threshold: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_CNN_HIER_THRESHOLD"
		end

	sod_cnn_temperature: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_CNN_TEMPERATURE"
		end

	sod_cnn_log_callback: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_CNN_LOG_CALLBACK"
		end

	sod_rnn_callback: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_RNN_CALLBACK"
		end

	sod_rnn_text_length: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_RNN_TEXT_LENGTH"
		end

	sod_rnn_data_length: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_RNN_DATA_LENGTH"
		end

	sod_rnn_seed: INTEGER 
		external
			"C inline use <sod.h>"
		alias
			"SOD_RNN_SEED"
		end

end
