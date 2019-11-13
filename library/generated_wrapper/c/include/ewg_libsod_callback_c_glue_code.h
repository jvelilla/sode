#ifndef EWG_CALLBACK_LIBSOD___
#define EWG_CALLBACK_LIBSOD___

#include <sod.h>

typedef void (*proc_rnn_callback_eiffel_feature) (void *a_class, char const *anonymous_1, size_t anonymous_2, void *anonymous_3);

void* get_proc_rnn_callback_stub ();

struct proc_rnn_callback_entry_struct
{
	void* a_class;
	proc_rnn_callback_eiffel_feature feature;
};

void set_proc_rnn_callback_entry (void* a_class, void* a_feature);

void call_proc_rnn_callback (void *a_function, char const *anonymous_1, size_t anonymous_2, void *anonymous_3);


#endif
