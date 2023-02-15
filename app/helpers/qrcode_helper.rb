module QrcodeHelper
  require 'rqrcode'

  def render_qr_code text, size = 3
    qrcode = RQRCode::QRCode.new(request.original_url)

# NOTE: showing with default options specified explicitly
svg = qrcode.as_svg(
  color: "000",
  shape_rendering: "crispEdges",
  module_size: 5,
  standalone: true,
  use_path: true
)
  end

  def render_qr_code_mini text, size = 3
    qrcode = RQRCode::QRCode.new(request.original_url)

# NOTE: showing with default options specified explicitly
svg = qrcode.as_svg(
  color: "000",
  shape_rendering: "crispEdges",
  module_size: 2.5,
  standalone: true,
  use_path: true
)
  end
end
