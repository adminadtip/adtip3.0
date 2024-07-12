import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:get/get.dart';

import '../data/network/url_constants.dart';
import '../modules/ad_page/campiona.dart';
import '../modules/myCompanyPage/page/my_company_page.dart';
import '../modules/myCompanyPage/view_product_details/view_product_details.dart';
import '../modules/videoPlay/page/video_play_page.dart';
import '../modules/weTube/models/get_video_by_channel.dart';

class DynamicLinkHandler extends GetxController {
  final linkMessage = ''.obs;
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
  final loading = false.obs;
  void initDynamicLinks() async {
    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();

    _handleDynamicLink(data);
    dynamicLinks.onLink.listen((dynamicLinkData) {
      _handleDynamicLink(dynamicLinkData);

      final Uri uri = dynamicLinkData.link;
      final queryParams = uri.queryParameters;
      print(uri);
      print("${queryParams["id"]} line15");
      if (queryParams.isNotEmpty) {
        String? productId = queryParams["id"];
        String? companyId = queryParams["companyId"];

        Get.to(
          ProductDetailScreen(
            id: int.parse(productId ?? ""),
            companyID: companyId ?? "",
          ),
        );
      } else {}
    }).onError((error) {
      print('onLink error');
      print(error.message);
    });
  }

  static _handleDynamicLink(PendingDynamicLinkData? data) async {
    final Uri? deepLink = data?.link;

    if (deepLink == null) {
      return;
    }
    print("${deepLink}999999");
    String? oderId = deepLink.queryParameters["orderId"];
    String? productId = deepLink.queryParameters["productId"];
    String? companyId = deepLink.queryParameters["companyId"];
    String? postId = deepLink.queryParameters["postId"];
    dynamic videoDatum = deepLink.queryParameters["videoDatum"];
    if (productId != null && companyId != null) {
      Get.to(
        ProductDetailScreen(
          id: int.parse(productId),
          companyID: companyId,
        ),
      );
    } else if (postId != null && companyId != null) {
      // Get.to(ViewPost());
    } else if (companyId != null) {
      Get.to(() => MyCompanyPage(companyID: companyId));
    } else if (oderId != null) {
      Get.to(AdModelShow(orderId: oderId));

      // Get.to(() => OrderListScreen());
    } else if (videoDatum != null) {
      Get.to(() => VideoPlayPage(videoDatum: videoDatum));
    }
    // if (deepLink.queryParameters['id'] != null &&
    //     deepLink.queryParameters['companyId'] != null) {
    //   Get.to(
    //     ProductDetailScreen(
    //       id: int.parse(productId ?? ""),
    //       companyID: companyId ?? "",
    //     ),
    //   );
    // } else {
    //   print("${deepLink}999999");

    //   String? companyId = deepLink.queryParameters["companyId"];

    //   Get.to(() => MyCompanyPage(companyID: companyId));
    // }
  }

  Future<void> createDynamicLink(
      {int? productId,
      String? companyId,
      int? orderId,
      int? postId,
      VideoDatum? videoDatum}) async {
    linkMessage.value = '';
    loading.value = true;
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: UrlConstants.kUriPrefix,
      link: Uri.parse(
          "${UrlConstants.kUriPrefix}?productId=$productId&companyId=$companyId&orderId=$orderId&postId=$postId&videoDatum=$videoDatum"),
      androidParameters: const AndroidParameters(
        packageName: 'com.adtip.app.adtip_app',
        minimumVersion: 0,
      ),
    );
    Uri urlLong = await dynamicLinks.buildLink(
      parameters,
    );
    print("${urlLong}rule77");

    final ShortDynamicLink shortLink =
        await dynamicLinks.buildShortLink(parameters);
    print("${shortLink.shortUrl}rule81");

    Uri url = shortLink.shortUrl;
    linkMessage.value = url.toString();
    loading.value = false;
  }
}
