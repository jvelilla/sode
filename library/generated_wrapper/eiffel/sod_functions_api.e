note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class SOD_FUNCTIONS_API


feature -- Access

	sod_cnn_create (ppout: SOD_CNN_STRUCT_API; zarch: STRING; zmodelpath: STRING; pzerr: POINTER): INTEGER 
		local
			zarch_c_string: C_STRING
			zmodelpath_c_string: C_STRING
		do
			create zarch_c_string.make (zarch)
			create zmodelpath_c_string.make (zmodelpath)
			Result := c_sod_cnn_create (ppout.item, zarch_c_string.item, zmodelpath_c_string.item, pzerr)
		end

	sod_cnn_config (pnet: SOD_CNN_STRUCT_API; conf: INTEGER): INTEGER 
		do
			Result := c_sod_cnn_config (pnet.item, conf)
		end

	sod_cnn_predict (pnet: SOD_CNN_STRUCT_API; pinput: POINTER; pabox: SOD_BOX_STRUCT_API; pnbox: POINTER): INTEGER 
		do
			Result := c_sod_cnn_predict (pnet.item, pinput, pabox.item, pnbox)
		end

	sod_cnn_destroy (pnet: SOD_CNN_STRUCT_API) 
		do
			c_sod_cnn_destroy (pnet.item)
		end

	sod_cnn_prepare_image (pnet: SOD_CNN_STRUCT_API; in: SOD_IMG_STRUCT_API): POINTER 
		do
			Result := c_sod_cnn_prepare_image (pnet.item, in.item)
		end

	sod_cnn_get_network_size (pnet: SOD_CNN_STRUCT_API; pwidth: POINTER; pheight: POINTER; pchannels: POINTER): INTEGER 
		do
			Result := c_sod_cnn_get_network_size (pnet.item, pwidth, pheight, pchannels)
		end

	sod_realnet_create (ppout: SOD_REALNET_STRUCT_API): INTEGER 
		do
			Result := c_sod_realnet_create (ppout.item)
		end

	sod_realnet_load_model_from_mem (pnet: SOD_REALNET_STRUCT_API; pmodel: POINTER; nbytes: INTEGER; pouthandle: POINTER): INTEGER 
		do
			Result := c_sod_realnet_load_model_from_mem (pnet.item, pmodel, nbytes, pouthandle)
		end

	sod_realnet_load_model_from_disk (pnet: SOD_REALNET_STRUCT_API; zpath: STRING; pouthandle: POINTER): INTEGER 
		local
			zpath_c_string: C_STRING
		do
			create zpath_c_string.make (zpath)
			Result := c_sod_realnet_load_model_from_disk (pnet.item, zpath_c_string.item, pouthandle)
		end

	sod_realnet_model_config (pnet: SOD_REALNET_STRUCT_API; handle: INTEGER; conf: INTEGER): INTEGER 
		do
			Result := c_sod_realnet_model_config (pnet.item, handle, conf)
		end

	sod_realnet_detect (pnet: SOD_REALNET_STRUCT_API; zgrayimg: STRING; width: INTEGER; height: INTEGER; apbox: SOD_BOX_STRUCT_API; pnbox: POINTER): INTEGER 
		local
			zgrayimg_c_string: C_STRING
		do
			create zgrayimg_c_string.make (zgrayimg)
			Result := c_sod_realnet_detect (pnet.item, zgrayimg_c_string.item, width, height, apbox.item, pnbox)
		end

	sod_realnet_destroy (pnet: SOD_REALNET_STRUCT_API) 
		do
			c_sod_realnet_destroy (pnet.item)
		end

	sod_make_empty_image (w: INTEGER; h: INTEGER; c: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_make_empty_image ((int)$w, (int)$h, (int)$c);
				return result;
			]"
		end

	sod_make_image (w: INTEGER; h: INTEGER; c: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_make_image ((int)$w, (int)$h, (int)$c);
				return result;
			]"
		end

	sod_grow_image (pimg: SOD_IMG_STRUCT_API; w: INTEGER; h: INTEGER; c: INTEGER): INTEGER 
		do
			Result := c_sod_grow_image (pimg.item, w, h, c)
		end

	sod_make_random_image (w: INTEGER; h: INTEGER; c: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_make_random_image ((int)$w, (int)$h, (int)$c);
				return result;
			]"
		end

	sod_copy_image (m: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_copy_image (m.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_free_image (m: SOD_IMG_STRUCT_API) 
		do
			c_sod_free_image (m.item)
		end

	sod_img_load_from_file (zfile: STRING; nchannels: INTEGER): detachable SOD_IMG_STRUCT_API 
		local
			zfile_c_string: C_STRING
		do
			create zfile_c_string.make (zfile)
			if attached c_sod_img_load_from_file (zfile_c_string.item, nchannels) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_img_load_from_mem (zbuf: STRING; buf_len: INTEGER; nchannels: INTEGER): detachable SOD_IMG_STRUCT_API 
		local
			zbuf_c_string: C_STRING
		do
			create zbuf_c_string.make (zbuf)
			if attached c_sod_img_load_from_mem (zbuf_c_string.item, buf_len, nchannels) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_img_set_load_from_directory (zpath: STRING; aploaded: SOD_IMG_STRUCT_API; pnloaded: POINTER; max_entries: INTEGER): INTEGER 
		local
			zpath_c_string: C_STRING
		do
			create zpath_c_string.make (zpath)
			Result := c_sod_img_set_load_from_directory (zpath_c_string.item, aploaded.item, pnloaded, max_entries)
		end

	sod_img_set_release (aloaded: SOD_IMG_STRUCT_API; nentries: INTEGER) 
		do
			c_sod_img_set_release (aloaded.item, nentries)
		end

	sod_img_save_as_png (input: SOD_IMG_STRUCT_API; zpath: STRING): INTEGER 
		local
			zpath_c_string: C_STRING
		do
			create zpath_c_string.make (zpath)
			Result := c_sod_img_save_as_png (input.item, zpath_c_string.item)
		end

	sod_img_save_as_jpeg (input: SOD_IMG_STRUCT_API; zpath: STRING; quality: INTEGER): INTEGER 
		local
			zpath_c_string: C_STRING
		do
			create zpath_c_string.make (zpath)
			Result := c_sod_img_save_as_jpeg (input.item, zpath_c_string.item, quality)
		end

	sod_img_blob_save_as_png (zpath: STRING; zblob: STRING; width: INTEGER; height: INTEGER; nchannels: INTEGER): INTEGER 
		local
			zpath_c_string: C_STRING
			zblob_c_string: C_STRING
		do
			create zpath_c_string.make (zpath)
			create zblob_c_string.make (zblob)
			Result := c_sod_img_blob_save_as_png (zpath_c_string.item, zblob_c_string.item, width, height, nchannels)
		end

	sod_img_blob_save_as_jpeg (zpath: STRING; zblob: STRING; width: INTEGER; height: INTEGER; nchannels: INTEGER; quality: INTEGER): INTEGER 
		local
			zpath_c_string: C_STRING
			zblob_c_string: C_STRING
		do
			create zpath_c_string.make (zpath)
			create zblob_c_string.make (zblob)
			Result := c_sod_img_blob_save_as_jpeg (zpath_c_string.item, zblob_c_string.item, width, height, nchannels, quality)
		end

	sod_img_blob_save_as_bmp (zpath: STRING; zblob: STRING; width: INTEGER; height: INTEGER; nchannels: INTEGER): INTEGER 
		local
			zpath_c_string: C_STRING
			zblob_c_string: C_STRING
		do
			create zpath_c_string.make (zpath)
			create zblob_c_string.make (zblob)
			Result := c_sod_img_blob_save_as_bmp (zpath_c_string.item, zblob_c_string.item, width, height, nchannels)
		end

	sod_img_get_pixel (m: SOD_IMG_STRUCT_API; x: INTEGER; y: INTEGER; c: INTEGER): REAL 
		do
			Result := c_sod_img_get_pixel (m.item, x, y, c)
		end

	sod_img_set_pixel (m: SOD_IMG_STRUCT_API; x: INTEGER; y: INTEGER; c: INTEGER; val: REAL) 
		do
			c_sod_img_set_pixel (m.item, x, y, c, val)
		end

	sod_img_add_pixel (m: SOD_IMG_STRUCT_API; x: INTEGER; y: INTEGER; c: INTEGER; val: REAL) 
		do
			c_sod_img_add_pixel (m.item, x, y, c, val)
		end

	sod_img_get_layer (m: SOD_IMG_STRUCT_API; l: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_img_get_layer (m.item, l) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_img_rgb_to_hsv (im: SOD_IMG_STRUCT_API) 
		do
			c_sod_img_rgb_to_hsv (im.item)
		end

	sod_img_hsv_to_rgb (im: SOD_IMG_STRUCT_API) 
		do
			c_sod_img_hsv_to_rgb (im.item)
		end

	sod_img_rgb_to_bgr (im: SOD_IMG_STRUCT_API) 
		do
			c_sod_img_rgb_to_bgr (im.item)
		end

	sod_img_bgr_to_rgb (im: SOD_IMG_STRUCT_API) 
		do
			c_sod_img_bgr_to_rgb (im.item)
		end

	sod_img_yuv_to_rgb (im: SOD_IMG_STRUCT_API) 
		do
			c_sod_img_yuv_to_rgb (im.item)
		end

	sod_img_rgb_to_yuv (im: SOD_IMG_STRUCT_API) 
		do
			c_sod_img_rgb_to_yuv (im.item)
		end

	sod_minutiae (bin: SOD_IMG_STRUCT_API; ptotal: POINTER; pep: POINTER; pbp: POINTER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_minutiae (bin.item, ptotal, pep, pbp) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_gaussian_noise_reduce (grayscale: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_gaussian_noise_reduce (grayscale.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_equalize_histogram (im: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_equalize_histogram (im.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_grayscale_image (im: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_grayscale_image (im.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_grayscale_image_3c (im: SOD_IMG_STRUCT_API) 
		do
			c_sod_grayscale_image_3c (im.item)
		end

	sod_threshold_image (im: SOD_IMG_STRUCT_API; thresh: REAL): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_threshold_image (im.item, thresh) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_otsu_binarize_image (im: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_otsu_binarize_image (im.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_binarize_image (im: SOD_IMG_STRUCT_API; reverse: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_binarize_image (im.item, reverse) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_dilate_image (im: SOD_IMG_STRUCT_API; times: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_dilate_image (im.item, times) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_erode_image (im: SOD_IMG_STRUCT_API; times: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_erode_image (im.item, times) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_sharpen_filtering_image (im: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_sharpen_filtering_image (im.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_hilditch_thin_image (im: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_hilditch_thin_image (im.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_sobel_image (im: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_sobel_image (im.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_canny_edge_image (im: SOD_IMG_STRUCT_API; reduce_noise: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_canny_edge_image (im.item, reduce_noise) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_hough_lines_detect (im: SOD_IMG_STRUCT_API; threshold: INTEGER; npts: POINTER): detachable SOD_PTS_STRUCT_API 
		do
			if attached c_sod_hough_lines_detect (im.item, threshold, npts) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_hough_lines_release (plines: SOD_PTS_STRUCT_API) 
		do
			c_sod_hough_lines_release (plines.item)
		end

	sod_image_find_blobs (im: SOD_IMG_STRUCT_API; pabox: SOD_BOX_STRUCT_API; pnbox: POINTER; xfilter: POINTER): INTEGER 
		do
			Result := c_sod_image_find_blobs (im.item, pabox.item, pnbox, xfilter)
		end

	sod_image_blob_boxes_release (pbox: SOD_BOX_STRUCT_API) 
		do
			c_sod_image_blob_boxes_release (pbox.item)
		end

	sod_composite_image (source: SOD_IMG_STRUCT_API; dest: SOD_IMG_STRUCT_API; dx: INTEGER; dy: INTEGER) 
		do
			c_sod_composite_image (source.item, dest.item, dx, dy)
		end

	sod_flip_image (input: SOD_IMG_STRUCT_API) 
		do
			c_sod_flip_image (input.item)
		end

	sod_image_distance (a: SOD_IMG_STRUCT_API; b: SOD_IMG_STRUCT_API): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_image_distance (a.item, b.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_embed_image (source: SOD_IMG_STRUCT_API; dest: SOD_IMG_STRUCT_API; dx: INTEGER; dy: INTEGER) 
		do
			c_sod_embed_image (source.item, dest.item, dx, dy)
		end

	sod_blend_image (fore: SOD_IMG_STRUCT_API; back: SOD_IMG_STRUCT_API; alpha: REAL): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_blend_image (fore.item, back.item, alpha) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_scale_image_channel (im: SOD_IMG_STRUCT_API; c: INTEGER; v: REAL) 
		do
			c_sod_scale_image_channel (im.item, c, v)
		end

	sod_translate_image_channel (im: SOD_IMG_STRUCT_API; c: INTEGER; v: REAL) 
		do
			c_sod_translate_image_channel (im.item, c, v)
		end

	sod_resize_image (im: SOD_IMG_STRUCT_API; w: INTEGER; h: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_resize_image (im.item, w, h) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_resize_max (im: SOD_IMG_STRUCT_API; max: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_resize_max (im.item, max) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_resize_min (im: SOD_IMG_STRUCT_API; min: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_resize_min (im.item, min) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_rotate_crop_image (im: SOD_IMG_STRUCT_API; rad: REAL; s: REAL; w: INTEGER; h: INTEGER; dx: REAL; dy: REAL; aspect: REAL): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_rotate_crop_image (im.item, rad, s, w, h, dx, dy, aspect) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_rotate_image (im: SOD_IMG_STRUCT_API; rad: REAL): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_rotate_image (im.item, rad) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_translate_image (m: SOD_IMG_STRUCT_API; s: REAL) 
		do
			c_sod_translate_image (m.item, s)
		end

	sod_scale_image (m: SOD_IMG_STRUCT_API; s: REAL) 
		do
			c_sod_scale_image (m.item, s)
		end

	sod_normalize_image (p: SOD_IMG_STRUCT_API) 
		do
			c_sod_normalize_image (p.item)
		end

	sod_transpose_image (im: SOD_IMG_STRUCT_API) 
		do
			c_sod_transpose_image (im.item)
		end

	sod_crop_image (im: SOD_IMG_STRUCT_API; dx: INTEGER; dy: INTEGER; w: INTEGER; h: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_crop_image (im.item, dx, dy, w, h) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_random_crop_image (im: SOD_IMG_STRUCT_API; w: INTEGER; h: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_random_crop_image (im.item, w, h) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_random_augment_image (im: SOD_IMG_STRUCT_API; angle: REAL; aspect: REAL; low: INTEGER; high: INTEGER; size: INTEGER): detachable SOD_IMG_STRUCT_API 
		do
			if attached c_sod_random_augment_image (im.item, angle, aspect, low, high, size) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	sod_image_draw_box (im: SOD_IMG_STRUCT_API; x1: INTEGER; y1: INTEGER; x2: INTEGER; y2: INTEGER; r: REAL; g: REAL; b: REAL) 
		do
			c_sod_image_draw_box (im.item, x1, y1, x2, y2, r, g, b)
		end

	sod_image_draw_box_grayscale (im: SOD_IMG_STRUCT_API; x1: INTEGER; y1: INTEGER; x2: INTEGER; y2: INTEGER; g: REAL) 
		do
			c_sod_image_draw_box_grayscale (im.item, x1, y1, x2, y2, g)
		end

	sod_image_draw_circle (im: SOD_IMG_STRUCT_API; x0: INTEGER; y0: INTEGER; radius: INTEGER; r: REAL; g: REAL; b: REAL) 
		do
			c_sod_image_draw_circle (im.item, x0, y0, radius, r, g, b)
		end

	sod_image_draw_circle_thickness (im: SOD_IMG_STRUCT_API; x0: INTEGER; y0: INTEGER; radius: INTEGER; width: INTEGER; r: REAL; g: REAL; b: REAL) 
		do
			c_sod_image_draw_circle_thickness (im.item, x0, y0, radius, width, r, g, b)
		end

	sod_image_draw_bbox (im: SOD_IMG_STRUCT_API; bbox: SOD_BOX_STRUCT_API; r: REAL; g: REAL; b: REAL) 
		do
			c_sod_image_draw_bbox (im.item, bbox.item, r, g, b)
		end

	sod_image_draw_bbox_width (im: SOD_IMG_STRUCT_API; bbox: SOD_BOX_STRUCT_API; width: INTEGER; r: REAL; g: REAL; b: REAL) 
		do
			c_sod_image_draw_bbox_width (im.item, bbox.item, width, r, g, b)
		end

	sod_image_draw_line (im: SOD_IMG_STRUCT_API; start: SOD_PTS_STRUCT_API; a_end: SOD_PTS_STRUCT_API; r: REAL; g: REAL; b: REAL) 
		do
			c_sod_image_draw_line (im.item, start.item, a_end.item, r, g, b)
		end

	sod_image_to_blob (im: SOD_IMG_STRUCT_API): POINTER 
		do
			Result := c_sod_image_to_blob (im.item)
		end

	sod_image_free_blob (zblob: STRING) 
		local
			zblob_c_string: C_STRING
		do
			create zblob_c_string.make (zblob)
			c_sod_image_free_blob (zblob_c_string.item)
		end

	sod_lib_copyright: POINTER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_lib_copyright ();
			]"
		end

feature -- Externals

	c_sod_cnn_create (ppout: POINTER; zarch: POINTER; zmodelpath: POINTER; pzerr: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_cnn_create ((sod_cnn**)$ppout, (char const*)$zarch, (char const*)$zmodelpath, (char const**)$pzerr);
			]"
		end

	c_sod_cnn_config (pnet: POINTER; conf: INTEGER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_cnn_config ((sod_cnn*)$pnet, (SOD_CNN_CONFIG)$conf);
			]"
		end

	c_sod_cnn_predict (pnet: POINTER; pinput: POINTER; pabox: POINTER; pnbox: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_cnn_predict ((sod_cnn*)$pnet, (float*)$pinput, (sod_box**)$pabox, (int*)$pnbox);
			]"
		end

	c_sod_cnn_destroy (pnet: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_cnn_destroy ((sod_cnn*)$pnet);
			]"
		end

	c_sod_cnn_prepare_image (pnet: POINTER; in: POINTER): POINTER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_cnn_prepare_image ((sod_cnn*)$pnet, *(sod_img*)$in);
			]"
		end

	c_sod_cnn_get_network_size (pnet: POINTER; pwidth: POINTER; pheight: POINTER; pchannels: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_cnn_get_network_size ((sod_cnn*)$pnet, (int*)$pwidth, (int*)$pheight, (int*)$pchannels);
			]"
		end

	c_sod_realnet_create (ppout: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_realnet_create ((sod_realnet**)$ppout);
			]"
		end

	c_sod_realnet_load_model_from_mem (pnet: POINTER; pmodel: POINTER; nbytes: INTEGER; pouthandle: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_realnet_load_model_from_mem ((sod_realnet*)$pnet, (void const*)$pmodel, (unsigned int)$nbytes, (sod_realnet_model_handle*)$pouthandle);
			]"
		end

	c_sod_realnet_load_model_from_disk (pnet: POINTER; zpath: POINTER; pouthandle: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_realnet_load_model_from_disk ((sod_realnet*)$pnet, (char const*)$zpath, (sod_realnet_model_handle*)$pouthandle);
			]"
		end

	c_sod_realnet_model_config (pnet: POINTER; handle: INTEGER; conf: INTEGER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_realnet_model_config ((sod_realnet*)$pnet, (sod_realnet_model_handle)$handle, (SOD_REALNET_MODEL_CONFIG)$conf);
			]"
		end

	c_sod_realnet_detect (pnet: POINTER; zgrayimg: POINTER; width: INTEGER; height: INTEGER; apbox: POINTER; pnbox: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_realnet_detect ((sod_realnet*)$pnet, (unsigned char const*)$zgrayimg, (int)$width, (int)$height, (sod_box**)$apbox, (int*)$pnbox);
			]"
		end

	c_sod_realnet_destroy (pnet: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_realnet_destroy ((sod_realnet*)$pnet);
			]"
		end

	c_sod_grow_image (pimg: POINTER; w: INTEGER; h: INTEGER; c: INTEGER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_grow_image ((sod_img*)$pimg, (int)$w, (int)$h, (int)$c);
			]"
		end

	c_sod_copy_image (m: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_copy_image (*(sod_img*)$m);
				return result;
			]"
		end

	c_sod_free_image (m: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_free_image (*(sod_img*)$m);
			]"
		end

	c_sod_img_load_from_file (zfile: POINTER; nchannels: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_img_load_from_file ((char const*)$zfile, (int)$nchannels);
				return result;
			]"
		end

	c_sod_img_load_from_mem (zbuf: POINTER; buf_len: INTEGER; nchannels: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_img_load_from_mem ((unsigned char const*)$zbuf, (int)$buf_len, (int)$nchannels);
				return result;
			]"
		end

	c_sod_img_set_load_from_directory (zpath: POINTER; aploaded: POINTER; pnloaded: POINTER; max_entries: INTEGER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_img_set_load_from_directory ((char const*)$zpath, (sod_img**)$aploaded, (int*)$pnloaded, (int)$max_entries);
			]"
		end

	c_sod_img_set_release (aloaded: POINTER; nentries: INTEGER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_set_release ((sod_img*)$aloaded, (int)$nentries);
			]"
		end

	c_sod_img_save_as_png (input: POINTER; zpath: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_img_save_as_png (*(sod_img*)$input, (char const*)$zpath);
			]"
		end

	c_sod_img_save_as_jpeg (input: POINTER; zpath: POINTER; quality: INTEGER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_img_save_as_jpeg (*(sod_img*)$input, (char const*)$zpath, (int)$quality);
			]"
		end

	c_sod_img_blob_save_as_png (zpath: POINTER; zblob: POINTER; width: INTEGER; height: INTEGER; nchannels: INTEGER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_img_blob_save_as_png ((char const*)$zpath, (unsigned char const*)$zblob, (int)$width, (int)$height, (int)$nchannels);
			]"
		end

	c_sod_img_blob_save_as_jpeg (zpath: POINTER; zblob: POINTER; width: INTEGER; height: INTEGER; nchannels: INTEGER; quality: INTEGER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_img_blob_save_as_jpeg ((char const*)$zpath, (unsigned char const*)$zblob, (int)$width, (int)$height, (int)$nchannels, (int)$quality);
			]"
		end

	c_sod_img_blob_save_as_bmp (zpath: POINTER; zblob: POINTER; width: INTEGER; height: INTEGER; nchannels: INTEGER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_img_blob_save_as_bmp ((char const*)$zpath, (unsigned char const*)$zblob, (int)$width, (int)$height, (int)$nchannels);
			]"
		end

	c_sod_img_get_pixel (m: POINTER; x: INTEGER; y: INTEGER; c: INTEGER): REAL
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_img_get_pixel (*(sod_img*)$m, (int)$x, (int)$y, (int)$c);
			]"
		end

	c_sod_img_set_pixel (m: POINTER; x: INTEGER; y: INTEGER; c: INTEGER; val: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_set_pixel (*(sod_img*)$m, (int)$x, (int)$y, (int)$c, (float)$val);
			]"
		end

	c_sod_img_add_pixel (m: POINTER; x: INTEGER; y: INTEGER; c: INTEGER; val: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_add_pixel (*(sod_img*)$m, (int)$x, (int)$y, (int)$c, (float)$val);
			]"
		end

	c_sod_img_get_layer (m: POINTER; l: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_img_get_layer (*(sod_img*)$m, (int)$l);
				return result;
			]"
		end

	c_sod_img_rgb_to_hsv (im: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_rgb_to_hsv (*(sod_img*)$im);
			]"
		end

	c_sod_img_hsv_to_rgb (im: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_hsv_to_rgb (*(sod_img*)$im);
			]"
		end

	c_sod_img_rgb_to_bgr (im: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_rgb_to_bgr (*(sod_img*)$im);
			]"
		end

	c_sod_img_bgr_to_rgb (im: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_bgr_to_rgb (*(sod_img*)$im);
			]"
		end

	c_sod_img_yuv_to_rgb (im: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_yuv_to_rgb (*(sod_img*)$im);
			]"
		end

	c_sod_img_rgb_to_yuv (im: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_img_rgb_to_yuv (*(sod_img*)$im);
			]"
		end

	c_sod_minutiae (bin: POINTER; ptotal: POINTER; pep: POINTER; pbp: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_minutiae (*(sod_img*)$bin, (int*)$ptotal, (int*)$pep, (int*)$pbp);
				return result;
			]"
		end

	c_sod_gaussian_noise_reduce (grayscale: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_gaussian_noise_reduce (*(sod_img*)$grayscale);
				return result;
			]"
		end

	c_sod_equalize_histogram (im: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_equalize_histogram (*(sod_img*)$im);
				return result;
			]"
		end

	c_sod_grayscale_image (im: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_grayscale_image (*(sod_img*)$im);
				return result;
			]"
		end

	c_sod_grayscale_image_3c (im: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_grayscale_image_3c (*(sod_img*)$im);
			]"
		end

	c_sod_threshold_image (im: POINTER; thresh: REAL): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_threshold_image (*(sod_img*)$im, (float)$thresh);
				return result;
			]"
		end

	c_sod_otsu_binarize_image (im: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_otsu_binarize_image (*(sod_img*)$im);
				return result;
			]"
		end

	c_sod_binarize_image (im: POINTER; reverse: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_binarize_image (*(sod_img*)$im, (int)$reverse);
				return result;
			]"
		end

	c_sod_dilate_image (im: POINTER; times: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_dilate_image (*(sod_img*)$im, (int)$times);
				return result;
			]"
		end

	c_sod_erode_image (im: POINTER; times: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_erode_image (*(sod_img*)$im, (int)$times);
				return result;
			]"
		end

	c_sod_sharpen_filtering_image (im: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_sharpen_filtering_image (*(sod_img*)$im);
				return result;
			]"
		end

	c_sod_hilditch_thin_image (im: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_hilditch_thin_image (*(sod_img*)$im);
				return result;
			]"
		end

	c_sod_sobel_image (im: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_sobel_image (*(sod_img*)$im);
				return result;
			]"
		end

	c_sod_canny_edge_image (im: POINTER; reduce_noise: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_canny_edge_image (*(sod_img*)$im, (int)$reduce_noise);
				return result;
			]"
		end

	c_sod_hough_lines_detect (im: POINTER; threshold: INTEGER; npts: POINTER): POINTER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_hough_lines_detect (*(sod_img*)$im, (int)$threshold, (int*)$npts);
			]"
		end

	c_sod_hough_lines_release (plines: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_hough_lines_release ((sod_pts*)$plines);
			]"
		end

	c_sod_image_find_blobs (im: POINTER; pabox: POINTER; pnbox: POINTER; xfilter: POINTER): INTEGER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_image_find_blobs (*(sod_img*)$im, (sod_box**)$pabox, (int*)$pnbox, (int (*) (int width, int height))$xfilter);
			]"
		end

	c_sod_image_blob_boxes_release (pbox: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_blob_boxes_release ((sod_box*)$pbox);
			]"
		end

	c_sod_composite_image (source: POINTER; dest: POINTER; dx: INTEGER; dy: INTEGER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_composite_image (*(sod_img*)$source, *(sod_img*)$dest, (int)$dx, (int)$dy);
			]"
		end

	c_sod_flip_image (input: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_flip_image (*(sod_img*)$input);
			]"
		end

	c_sod_image_distance (a: POINTER; b: POINTER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_image_distance (*(sod_img*)$a, *(sod_img*)$b);
				return result;
			]"
		end

	c_sod_embed_image (source: POINTER; dest: POINTER; dx: INTEGER; dy: INTEGER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_embed_image (*(sod_img*)$source, *(sod_img*)$dest, (int)$dx, (int)$dy);
			]"
		end

	c_sod_blend_image (fore: POINTER; back: POINTER; alpha: REAL): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_blend_image (*(sod_img*)$fore, *(sod_img*)$back, (float)$alpha);
				return result;
			]"
		end

	c_sod_scale_image_channel (im: POINTER; c: INTEGER; v: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_scale_image_channel (*(sod_img*)$im, (int)$c, (float)$v);
			]"
		end

	c_sod_translate_image_channel (im: POINTER; c: INTEGER; v: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_translate_image_channel (*(sod_img*)$im, (int)$c, (float)$v);
			]"
		end

	c_sod_resize_image (im: POINTER; w: INTEGER; h: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_resize_image (*(sod_img*)$im, (int)$w, (int)$h);
				return result;
			]"
		end

	c_sod_resize_max (im: POINTER; max: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_resize_max (*(sod_img*)$im, (int)$max);
				return result;
			]"
		end

	c_sod_resize_min (im: POINTER; min: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_resize_min (*(sod_img*)$im, (int)$min);
				return result;
			]"
		end

	c_sod_rotate_crop_image (im: POINTER; rad: REAL; s: REAL; w: INTEGER; h: INTEGER; dx: REAL; dy: REAL; aspect: REAL): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_rotate_crop_image (*(sod_img*)$im, (float)$rad, (float)$s, (int)$w, (int)$h, (float)$dx, (float)$dy, (float)$aspect);
				return result;
			]"
		end

	c_sod_rotate_image (im: POINTER; rad: REAL): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_rotate_image (*(sod_img*)$im, (float)$rad);
				return result;
			]"
		end

	c_sod_translate_image (m: POINTER; s: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_translate_image (*(sod_img*)$m, (float)$s);
			]"
		end

	c_sod_scale_image (m: POINTER; s: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_scale_image (*(sod_img*)$m, (float)$s);
			]"
		end

	c_sod_normalize_image (p: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_normalize_image (*(sod_img*)$p);
			]"
		end

	c_sod_transpose_image (im: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_transpose_image (*(sod_img*)$im);
			]"
		end

	c_sod_crop_image (im: POINTER; dx: INTEGER; dy: INTEGER; w: INTEGER; h: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_crop_image (*(sod_img*)$im, (int)$dx, (int)$dy, (int)$w, (int)$h);
				return result;
			]"
		end

	c_sod_random_crop_image (im: POINTER; w: INTEGER; h: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_random_crop_image (*(sod_img*)$im, (int)$w, (int)$h);
				return result;
			]"
		end

	c_sod_random_augment_image (im: POINTER; angle: REAL; aspect: REAL; low: INTEGER; high: INTEGER; size: INTEGER): POINTER
		external
			"C inline use <sod.h>"

		alias
			"[
				sod_img *result = (sod_img*) malloc (sizeof(sod_img));
				*result = sod_random_augment_image (*(sod_img*)$im, (float)$angle, (float)$aspect, (int)$low, (int)$high, (int)$size);
				return result;
			]"
		end

	c_sod_image_draw_box (im: POINTER; x1: INTEGER; y1: INTEGER; x2: INTEGER; y2: INTEGER; r: REAL; g: REAL; b: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_draw_box (*(sod_img*)$im, (int)$x1, (int)$y1, (int)$x2, (int)$y2, (float)$r, (float)$g, (float)$b);
			]"
		end

	c_sod_image_draw_box_grayscale (im: POINTER; x1: INTEGER; y1: INTEGER; x2: INTEGER; y2: INTEGER; g: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_draw_box_grayscale (*(sod_img*)$im, (int)$x1, (int)$y1, (int)$x2, (int)$y2, (float)$g);
			]"
		end

	c_sod_image_draw_circle (im: POINTER; x0: INTEGER; y0: INTEGER; radius: INTEGER; r: REAL; g: REAL; b: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_draw_circle (*(sod_img*)$im, (int)$x0, (int)$y0, (int)$radius, (float)$r, (float)$g, (float)$b);
			]"
		end

	c_sod_image_draw_circle_thickness (im: POINTER; x0: INTEGER; y0: INTEGER; radius: INTEGER; width: INTEGER; r: REAL; g: REAL; b: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_draw_circle_thickness (*(sod_img*)$im, (int)$x0, (int)$y0, (int)$radius, (int)$width, (float)$r, (float)$g, (float)$b);
			]"
		end

	c_sod_image_draw_bbox (im: POINTER; bbox: POINTER; r: REAL; g: REAL; b: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_draw_bbox (*(sod_img*)$im, *(sod_box*)$bbox, (float)$r, (float)$g, (float)$b);
			]"
		end

	c_sod_image_draw_bbox_width (im: POINTER; bbox: POINTER; width: INTEGER; r: REAL; g: REAL; b: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_draw_bbox_width (*(sod_img*)$im, *(sod_box*)$bbox, (int)$width, (float)$r, (float)$g, (float)$b);
			]"
		end

	c_sod_image_draw_line (im: POINTER; start: POINTER; a_end: POINTER; r: REAL; g: REAL; b: REAL)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_draw_line (*(sod_img*)$im, *(sod_pts*)$start, *(sod_pts*)$a_end, (float)$r, (float)$g, (float)$b);
			]"
		end

	c_sod_image_to_blob (im: POINTER): POINTER
		external
			"C inline use <sod.h>"
		alias
			"[
				return sod_image_to_blob (*(sod_img*)$im);
			]"
		end

	c_sod_image_free_blob (zblob: POINTER)
		external
			"C inline use <sod.h>"
		alias
			"[
				sod_image_free_blob ((unsigned char*)$zblob);
			]"
		end

feature -- Externals Address

end