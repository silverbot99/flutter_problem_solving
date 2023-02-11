part of 'strings.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'login.login_button': return 'Login';
			case 'strings.hello': return ({required Object name}) => 'Hello ${name}';
			case 'strings.save': return 'Save';
			case 'strings.login.success': return 'Logged in successfully';
			case 'strings.login.fail': return 'Logged in failed';
			case 'strings.navigation.bottom.sample': return 'Sample';
			case 'strings.navigation.bottom.features': return 'Features';
			case 'strings.navigation.bottom.informations': return 'Informations';
			case 'strings.test.succeded': return 'Test successfull.';
			case 'strings.test.failed': return 'Test failed.';
			case 'strings.form.username.label': return 'Username';
			case 'strings.form.username.hint': return 'Enter your username';
			case 'strings.form.password.label': return 'Password';
			case 'strings.form.password.hint': return 'Enter your password';
			case 'strings.errors.form.maxLength': return ({required Object field, required Object count}) => '${field} cannot be more than ${count} characters.';
			case 'strings.errors.form.minLength': return ({required Object field, required Object count}) => '${field} cannot be less than ${count} characters.';
			case 'strings.errors.form.required': return ({required Object field}) => '${field} is required.';
			case 'strings.errors.form.email': return 'You entered an invalid email address.';
			case 'strings.errors.others.no_item_found': return 'There is no data to show.';
			case 'strings.errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'strings.errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'strings.errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'strings.errors.others.server_failure': return 'Server failure encountered.';
			case 'strings.errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'strings.file_picker.size_warning': return ({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
			case 'strings.file_picker.no_permission': return 'We have no permission to open your gallery.';
			case 'strings.no_feature.in_progress': return 'Function in progress';
			default: return null;
		}
	}
}

extension on _StringsVi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'login.login_button': return 'Đăng nhập';
			case 'strings.hello': return ({required Object name}) => 'Chào ${name}';
			case 'strings.save': return 'Lưu';
			case 'strings.login.success': return 'Đăng nhập thành công';
			case 'strings.login.fail': return 'Đăng nhập thất bại';
			case 'strings.navigation.bottom.sample': return 'Mẫu';
			case 'strings.navigation.bottom.features': return 'Chức năng';
			case 'strings.navigation.bottom.informations': return 'Thông tin';
			case 'strings.test.succeded': return 'Test successfull.';
			case 'strings.test.failed': return 'Test failed.';
			case 'strings.form.username.label': return 'Username';
			case 'strings.form.username.hint': return 'Vui lòng nhập username';
			case 'strings.form.password.label': return 'Password';
			case 'strings.form.password.hint': return 'Nhập password';
			case 'strings.errors.form.maxLength': return ({required Object field, required Object count}) => '${field} cannot be more than ${count} characters.';
			case 'strings.errors.form.minLength': return ({required Object field, required Object count}) => '${field} cannot be less than ${count} characters.';
			case 'strings.errors.form.required': return ({required Object field}) => '${field} is required.';
			case 'strings.errors.form.email': return 'You entered an invalid email address.';
			case 'strings.errors.others.no_item_found': return 'There is no data to show.';
			case 'strings.errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'strings.errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'strings.errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'strings.errors.others.server_failure': return 'Server failure encountered.';
			case 'strings.errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'strings.file_picker.size_warning': return ({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
			case 'strings.file_picker.no_permission': return 'We have no permission to open your gallery.';
			case 'strings.no_feature.in_progress': return 'Chức năng đang trong quá trình phát triển';
			default: return null;
		}
	}
}
