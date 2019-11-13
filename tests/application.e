class APPLICATION


inherit

	SOD_FUNCTIONS_API

create
	make

feature {NONE} -- Initialization

	make
		do
			print ((create {C_STRING}.make_by_pointer (sod_lib_copyright)).string)
		end
end

