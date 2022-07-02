import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../../data/models/destination_request.dart';
// import '../../../routes/app_pages.dart';
import '../../../services/client_service.dart';

String token = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMDc3ZTIxN2E0MzhlMWNhYjEyODUzOGM0OWIwYTk1OTVhYTNkOGIxOTI4YzgxZjI3ZDlkYTFhNmVkMmY4YzhiNDNkMmRlNzhlMWU3ZjM3MTMiLCJpYXQiOjE2NTYxMzg5NDYuMTE4MDAzLCJuYmYiOjE2NTYxMzg5NDYuMTE4MDA0LCJleHAiOjE2ODc2NzQ5NDYuMTE2ODU1LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.EAjm6dZ_jJd17daHZ0sE8qaU_6KMUmFbjjwiFta_E5EPb_sO9fj5l2lvPAMUnxb546663yHmlzNYt9fb7BohwCk-gOu-IyNTFYbO-Qq43A1ZfnrOmBo91HLH_UN4_-YQK2v3_nfnuotGgkoG2h9vqdQ0_ez5ZOxbujX1x-KaZa22fj33w-pcxqLWpgKVmdtXSsf6AdAAvvoYEgSicz-Q8jbjD3dpDMLRaPxc3kwMLqRBZ1edhdPp40Jt2eN3XrACuuXGOuVUnTOLhVpRHgfaUVYtraFTMFJ6lspJN5Yfr4xHhUxIF1IKFfKTIiAnU0boPxo7031SiWqT2aNfSWy7GmHqYZs3sLlF2Fu0L1pdyUuIVs-W-nkADH6i-ZwqSZ4Eo1d4vvjVd9sZzXQuW-SkspwDjw_f5OMgdK0-2SIVREqqAWxrTTvY0_M7AHhxj0RMA6czFsQ11jT2_nNJ3eVKjo-dKonDCmSfnZWdBb8hYpgw9SYaBuZVfP2lQ8CKKw3UdsGGv57oACVJGDhotOE4PTUBimAbjaL5BDtQwzLaiLoJTh99kabDaALwZ_FBcORKS8FJkqlEXGjq53BHiMXp2PwfVoiivfqs-UHQEia6kdDOW0i-9wWN5Kj3O05C1VOyKetcY_er1eusonCdKctILrWKqmrOKXU4_-0DXi-VOnA";

class HomeController extends GetxController {
  final _service = Get.find<ClientService>();

  void destination() async {
    try {
      final response = await _service.destination(token);
      if (response.success == true) {
        return;
      } else {
        Get.rawSnackbar(
          message: response.message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          borderRadius: 10,
          margin: const EdgeInsets.all(10),
          borderColor: Colors.red,
          borderWidth: 2,
        );
      }
    } catch (e) {
      // handle error
      // show error message
      Get.rawSnackbar(
        message: 'Failed to get destination list.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        borderColor: Colors.red,
        borderWidth: 2,
      );
    }
  }
}
