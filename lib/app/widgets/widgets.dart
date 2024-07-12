String getAdType({required int adType}) {
  switch (adType) {
    case 1:
      return "Skip Video-Ad";
    case 2:
      return "Non-Skip Video-Ad";
    case 3:
      return "Bumper Ads";
    case 4:
      return "QR Code Image Ads";
    case 5:
      return "QR Code Video Ads";
    case 28:
      return "Banner Ads";
    case 29:
      return "Master Ads";
    default:
      return "Skip Video-Ad";
  }
}
