#include <cstdlib>
#include "Map.h"
#include "internal.h"
#include "loi2proba.h"
#include "p6/p6.h"
#define DOCTEST_CONFIG_IMPLEMENT
#include "doctest/doctest.h"

int main(int argc, char* argv[])
{
    { // Run the tests
        if (doctest::Context{}.run() != 0)
            return EXIT_FAILURE;
        // The CI does not have a GPU so it cannot run the rest of the code.
        const bool no_gpu_available = argc >= 2 && strcmp(argv[1], "-nogpu") == 0; // NOLINT(cppcoreguidelines-pro-bounds-pointer-arithmetic)
        if (no_gpu_available)
            return EXIT_SUCCESS;
    }

    // Actual app
    auto ctx = p6::Context{{.title = "Simple-p6-Setup"}};
    ctx.maximize_window();

    Map map(ctx.aspect_ratio());

    p6::Image IMGgoose = p6::load_image("img/goosegame.jpeg");

    // Boucle de rendu
    ctx.update = [&]() {
        ctx.background(p6::Color(39.f/255.f, 110.f/255.f, 188.f/255.f)); //Fond
        ctx.image(IMGgoose, p6::Center(-0.52f, -0.05), p6::RadiusX(p6::RadiusX().value - 0.2f), p6::Rotation()); //Image
        if(map.draw(ctx)){ //Dessin de la carte
            map.update(ctx); //Mis à jour de la carte
        };
    };

    // Should be done last. It starts the infinite loop.
    ctx.start();
}