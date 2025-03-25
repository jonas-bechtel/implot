project "implot"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files 
    {
        "implot.h",
        "implot_internal.h",
        "implot.cpp",
        "implot_demo.cpp",
        "implot_items.cpp"
    }

    includedirs 
    {
        "./../imgui" -- if you also added ImGui as a sibling project
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
