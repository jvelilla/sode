#ifndef EWG_CALLBACK_UNKNOWN___
#define EWG_CALLBACK_UNKNOWN___

#include <sod.h>

typedef int (*int_int_int_anonymous_callback_eiffel_feature) (void *a_class, int width, int height);

void* get_int_int_int_anonymous_callback_stub ();

struct int_int_int_anonymous_callback_entry_struct
{
	void* a_class;
	int_int_int_anonymous_callback_eiffel_feature feature;
};

void set_int_int_int_anonymous_callback_entry (void* a_class, void* a_feature);

int call_int_int_int_anonymous_callback (void *a_function, int width, int height);


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
