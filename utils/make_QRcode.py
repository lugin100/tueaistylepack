import fire
import qrcode
from qrcode.image.styledpil import StyledPilImage
from qrcode.image.styles.moduledrawers.pil import GappedSquareModuleDrawer
from qrcode.image.styles.colormasks import SolidFillColorMask


COLORS = {
    "TueAIdark": (56, 56, 56),
    "TueAIgray": (246, 246, 246),
    "TueAIdarkblue": (26, 58, 91),
    "TueAIaccent": (234, 75, 46),
    "TueAIlightblue": (133, 203, 210),
    "TueAIoceanblue": (119, 221, 204),
    "TueAIoceangreen": (119, 221, 159),
    "TueAIspringgreen": (186, 213, 72),
    "TueAIbrightyellow": (255, 221, 0),
    "white": (255, 255, 255),
    "black": (0, 0, 0),
}


def resolve_color(c):
    if isinstance(c, str):
        if c not in COLORS:
            raise ValueError(f"Unknown color '{c}'. Available: {list(COLORS)}")
        return COLORS[c]
    return c


def MakeQR(i, o=None, bg="white", fg="TueAIdarkblue"):
    linkstring = i

    bg = resolve_color(bg)
    fg = resolve_color(fg)

    if o == None:
        o = i + ".png"

    filename = o

    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_H,
        box_size=10,
        border=1,
    )

    qr.add_data(linkstring)
    qr.make(fit=True)
    img = qr.make_image(
        image_factory=StyledPilImage,
        module_drawer=GappedSquareModuleDrawer(),
        color_mask=SolidFillColorMask(back_color=bg, front_color=fg),
    )
    img.save(filename)


if __name__ == "__main__":
    fire.Fire(MakeQR)
