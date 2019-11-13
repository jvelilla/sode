note
	description: "Tests of {SODE}."
	testing: "type/manual"

class
	SODE_TEST_SET

inherit
	EQA_TEST_SET
		rename
			assert as assert_old
		end

	EQA_COMMONLY_USED_ASSERTIONS
		undefine
			default_create
		end

	TEST_SET_BRIDGE
		undefine
			default_create
		end

feature -- Test routines

	SODE_tests
			-- `SODE_tests'
		do
			do_nothing -- yet ...
		end

feature {NONE} -- In-system

	proc_rnn_callback_dispatcher: detachable PROC_RNN_CALLBACK_DISPATCHER

	sod_box_struct_api: detachable SOD_BOX_STRUCT_API
	sod_cnn_config_enum_api: detachable SOD_CNN_CONFIG_ENUM_API
	sod_cnn_struct_api: detachable SOD_CNN_STRUCT_API
	sod_functions_api: detachable SOD_FUNCTIONS_API
	sod_img_struct_api: detachable SOD_IMG_STRUCT_API
	sod_pts_struct_api: detachable SOD_PTS_STRUCT_API
	sod_realnet_model_config_enum_api: detachable SOD_REALNET_MODEL_CONFIG_ENUM_API
	sod_realnet_struct_api: detachable SOD_REALNET_STRUCT_API

end
