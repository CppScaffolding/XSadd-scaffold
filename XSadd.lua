-- scaffold geniefile for XSadd

XSadd_script = path.getabsolute(path.getdirectory(_SCRIPT))
XSadd_root = path.join(XSadd_script, "XSadd")

XSadd_includedirs = {
	path.join(XSadd_script, "config"),
	XSadd_root,
}

XSadd_libdirs = {}
XSadd_links = {}
XSadd_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { XSadd_includedirs }
	end,

	_add_defines = function()
		defines { XSadd_defines }
	end,

	_add_libdirs = function()
		libdirs { XSadd_libdirs }
	end,

	_add_external_links = function()
		links { XSadd_links }
	end,

	_add_self_links = function()
		links { "XSadd" }
	end,

	_create_projects = function()

project "XSadd"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		XSadd_includedirs,
	}

	defines {}

	files {
		path.join(XSadd_script, "config", "**.h"),
		path.join(XSadd_root, "**.h"),
		path.join(XSadd_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
