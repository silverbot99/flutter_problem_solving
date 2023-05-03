part of 'strings.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'login.text_login': return 'Login';
			case 'login.need_help': return 'Need help?';
			case 'login.forget_password': return 'Forgot Password';
			case 'strings.hello': return ({required Object name}) => 'Hello ${name}';
			case 'strings.save': return 'Save';
			case 'strings.login.success': return 'Logged in successfully';
			case 'strings.login.fail': return 'Logged in failed';
			case 'strings.navigation.bottom.sample': return 'Sample';
			case 'strings.navigation.bottom.home': return 'Home';
			case 'strings.navigation.bottom.features': return 'Features';
			case 'strings.navigation.bottom.informations': return 'Informations';
			case 'strings.test.succeded': return 'Test successfull.';
			case 'strings.test.failed': return 'Test failed.';
			case 'strings.form.phone.label': return 'Số điện thoại';
			case 'strings.form.phone.hint': return 'Nhập số điện thoại';
			case 'strings.form.username.label': return 'Username';
			case 'strings.form.username.hint': return 'Vui lòng nhập username';
			case 'strings.form.password.label': return 'Mật khẩu';
			case 'strings.form.password.hint': return 'Nhập mật khẩu';
			case 'strings.form.full_name.label': return 'Họ và tên';
			case 'strings.form.full_name.hint': return 'Nhập Họ và tên';
			case 'strings.form.transfer_address.label': return 'Địa chỉ giao hàng';
			case 'strings.form.transfer_address.hint': return 'Nhập Địa chỉ giao hàng';
			case 'strings.form.product_name.label': return 'Tên sản phẩm';
			case 'strings.form.product_name.hint': return 'Nhập Tên sản phẩm';
			case 'strings.form.unit_price.label': return 'Đơn giá';
			case 'strings.form.unit_price.hint': return 'Đơn giá';
			case 'strings.form.delivery_charges.label': return 'Phí giao hàng';
			case 'strings.form.delivery_charges.hint': return 'Nhập Phí giao hàng';
			case 'strings.errors.form.maxLength': return ({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
			case 'strings.errors.form.minLength': return ({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
			case 'strings.errors.form.required': return ({required Object field}) => 'Vui lòng nhập ${field}';
			case 'strings.errors.form.email': return 'Địa chỉ Email không hợp lệ.';
			case 'strings.errors.form.pattern': return ({required Object field}) => '${field} không hợp lệ.';
			case 'strings.errors.others.no_item_found': return 'There is no data to show.';
			case 'strings.errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'strings.errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'strings.errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'strings.errors.others.server_failure': return 'Server failure encountered.';
			case 'strings.errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'strings.errors.login.E_USER_ACCOUNT_NOT_EXISTS': return 'Vui lòng kiểm tra lại mật khẩu';
			case 'strings.errors.login.E_USER_HAS_BLOCKED': return 'User đã bị khoá';
			case 'strings.errors.login.E_USER_NOT_EXISTS': return 'User không tồn tại';
			case 'strings.file_picker.size_warning': return ({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
			case 'strings.file_picker.no_permission': return 'We have no permission to open your gallery.';
			case 'strings.no_feature.in_progress': return 'Function in progress';
			case 'strings.dashboard.greeting': return 'Welcome, Silvia';
			case 'strings.dashboard.how_you_feel': return 'Now, how do you feel?';
			case 'strings.dashboard.description': return 'Describe the problem';
			case 'strings.dashboard.info_problem': return 'What information is available?';
			case 'strings.dashboard.hint_write': return 'Write something...';
			case 'strings.create_order.title': return 'Tạo đơn hàng';
			case 'strings.create_order.text_information_customer': return 'Thông tin khách hàng';
			case 'strings.create_order.text_information_order': return 'Thông tin đơn hàng';
			case 'strings.create_order.text_continue': return 'Tiếp tục';
			case 'strings.create_order.text_quantity': return 'Số lượng';
			case 'strings.create_order.text_price': return 'Thành tiền:';
			case 'strings.create_order.text_total_price': return 'Cộng tiền hàng:';
			case 'strings.create_order.text_delivery_charges': return 'Phí giao hàng:';
			default: return null;
		}
	}
}

extension on _StringsVi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'login.text_login': return 'Đăng nhập';
			case 'login.need_help': return 'Cần giúp đỡ?';
			case 'login.forget_password': return 'Quên mật khẩu';
			case 'strings.hello': return ({required Object name}) => 'Hello ${name}';
			case 'strings.save': return 'Save';
			case 'strings.login.success': return 'Logged in successfully';
			case 'strings.login.fail': return 'Logged in failed';
			case 'strings.navigation.bottom.sample': return 'Sample';
			case 'strings.navigation.bottom.home': return 'Home';
			case 'strings.navigation.bottom.features': return 'Features';
			case 'strings.navigation.bottom.informations': return 'Informations';
			case 'strings.test.succeded': return 'Test successfull.';
			case 'strings.test.failed': return 'Test failed.';
			case 'strings.form.phone.label': return 'Số điện thoại';
			case 'strings.form.phone.hint': return 'Nhập số điện thoại';
			case 'strings.form.username.label': return 'Username';
			case 'strings.form.username.hint': return 'Vui lòng nhập username';
			case 'strings.form.password.label': return 'Mật khẩu';
			case 'strings.form.password.hint': return 'Nhập mật khẩu';
			case 'strings.form.full_name.label': return 'Họ và tên';
			case 'strings.form.full_name.hint': return 'Nhập Họ và tên';
			case 'strings.form.transfer_address.label': return 'Địa chỉ giao hàng';
			case 'strings.form.transfer_address.hint': return 'Nhập Địa chỉ giao hàng';
			case 'strings.form.product_name.label': return 'Tên sản phẩm';
			case 'strings.form.product_name.hint': return 'Nhập Tên sản phẩm';
			case 'strings.form.unit_price.label': return 'Đơn giá';
			case 'strings.form.unit_price.hint': return 'Đơn giá';
			case 'strings.form.delivery_charges.label': return 'Phí giao hàng';
			case 'strings.form.delivery_charges.hint': return 'Nhập Phí giao hàng';
			case 'strings.errors.form.maxLength': return ({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
			case 'strings.errors.form.minLength': return ({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
			case 'strings.errors.form.required': return ({required Object field}) => 'Vui lòng nhập ${field}';
			case 'strings.errors.form.email': return 'Địa chỉ Email không hợp lệ.';
			case 'strings.errors.form.pattern': return ({required Object field}) => '${field} không hợp lệ.';
			case 'strings.errors.others.no_item_found': return 'There is no data to show.';
			case 'strings.errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'strings.errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'strings.errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'strings.errors.others.server_failure': return 'Server failure encountered.';
			case 'strings.errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'strings.errors.login.E_USER_ACCOUNT_NOT_EXISTS': return 'Vui lòng kiểm tra lại mật khẩu';
			case 'strings.errors.login.E_USER_HAS_BLOCKED': return 'User đã bị khoá';
			case 'strings.errors.login.E_USER_NOT_EXISTS': return 'User không tồn tại';
			case 'strings.file_picker.size_warning': return ({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
			case 'strings.file_picker.no_permission': return 'We have no permission to open your gallery.';
			case 'strings.no_feature.in_progress': return 'Function in progress';
			case 'strings.dashboard.greeting': return 'Welcome, Silvia';
			case 'strings.dashboard.how_you_feel': return 'Now, how do you feel?';
			case 'strings.dashboard.description': return 'Describe the problem';
			case 'strings.dashboard.info_problem': return 'What information is available?';
			case 'strings.dashboard.hint_write': return 'Write something...';
			case 'strings.create_order.title': return 'Tạo đơn hàng';
			case 'strings.create_order.text_information_customer': return 'Thông tin khách hàng';
			case 'strings.create_order.text_information_order': return 'Thông tin đơn hàng';
			case 'strings.create_order.text_continue': return 'Tiếp tục';
			case 'strings.create_order.text_quantity': return 'Số lượng';
			case 'strings.create_order.text_price': return 'Thành tiền:';
			case 'strings.create_order.text_total_price': return 'Cộng tiền hàng:';
			case 'strings.create_order.text_delivery_charges': return 'Phí giao hàng:';
			default: return null;
		}
	}
}
