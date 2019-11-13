#include <ewg_eiffel.h>
#include <ewg_libsod_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
struct proc_rnn_callback_entry_struct proc_rnn_callback_entry = {NULL, NULL};

void proc_rnn_callback_stub (char const *anonymous_1, size_t anonymous_2, void *anonymous_3)
{
	if (proc_rnn_callback_entry.a_class != NULL && proc_rnn_callback_entry.feature != NULL)
	{
		proc_rnn_callback_entry.feature (eif_access(proc_rnn_callback_entry.a_class), anonymous_1, anonymous_2, anonymous_3);
	}
}

void set_proc_rnn_callback_entry (void* a_class, void* a_feature)
{
	proc_rnn_callback_entry.a_class = eif_adopt(a_class);
	proc_rnn_callback_entry.feature = (proc_rnn_callback_eiffel_feature) a_feature;
}

void* get_proc_rnn_callback_stub ()
{
	return (void*) proc_rnn_callback_stub;
}

void call_proc_rnn_callback (void *a_function, char const *anonymous_1, size_t anonymous_2, void *anonymous_3)
{
	((void (*) (char const *anonymous_1, size_t anonymous_2, void *anonymous_3))a_function) (anonymous_1, anonymous_2, anonymous_3);
}

