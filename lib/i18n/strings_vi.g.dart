part of 'strings.g.dart';

// Path: <root>
class _StringsVi extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsVi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsVi _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsLoginVi login = _StringsLoginVi._(_root);
	@override late final _StringsStringsVi strings = _StringsStringsVi._(_root);
}

// Path: login
class _StringsLoginVi extends _StringsLoginEn {
	_StringsLoginVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get login_button => 'Đăng nhập';
}

// Path: strings
class _StringsStringsVi extends _StringsStringsEn {
	_StringsStringsVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String hello({required Object name}) => 'Chào ${name}';
	@override String get save => 'Lưu';
	@override late final _StringsStringsLoginVi login = _StringsStringsLoginVi._(_root);
	@override late final _StringsStringsNavigationVi navigation = _StringsStringsNavigationVi._(_root);
	@override late final _StringsStringsTestVi test = _StringsStringsTestVi._(_root);
	@override late final _StringsStringsFormVi form = _StringsStringsFormVi._(_root);
	@override late final _StringsStringsErrorsVi errors = _StringsStringsErrorsVi._(_root);
	@override late final _StringsStringsFilePickerVi file_picker = _StringsStringsFilePickerVi._(_root);
	@override late final _StringsStringsNoFeatureVi no_feature = _StringsStringsNoFeatureVi._(_root);
	@override late final _StringsStringsDashboardVi dashboard = _StringsStringsDashboardVi._(_root);
}

// Path: strings.login
class _StringsStringsLoginVi extends _StringsStringsLoginEn {
	_StringsStringsLoginVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get success => 'Đăng nhập thành công';
	@override String get fail => 'Đăng nhập thất bại';
}

// Path: strings.navigation
class _StringsStringsNavigationVi extends _StringsStringsNavigationEn {
	_StringsStringsNavigationVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStringsNavigationBottomVi bottom = _StringsStringsNavigationBottomVi._(_root);
}

// Path: strings.test
class _StringsStringsTestVi extends _StringsStringsTestEn {
	_StringsStringsTestVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get succeded => 'Test successfull.';
	@override String get failed => 'Test failed.';
}

// Path: strings.form
class _StringsStringsFormVi extends _StringsStringsFormEn {
	_StringsStringsFormVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStringsFormUsernameVi username = _StringsStringsFormUsernameVi._(_root);
	@override late final _StringsStringsFormPasswordVi password = _StringsStringsFormPasswordVi._(_root);
}

// Path: strings.errors
class _StringsStringsErrorsVi extends _StringsStringsErrorsEn {
	_StringsStringsErrorsVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStringsErrorsFormVi form = _StringsStringsErrorsFormVi._(_root);
	@override late final _StringsStringsErrorsOthersVi others = _StringsStringsErrorsOthersVi._(_root);
}

// Path: strings.file_picker
class _StringsStringsFilePickerVi extends _StringsStringsFilePickerEn {
	_StringsStringsFilePickerVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String size_warning({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
	@override String get no_permission => 'We have no permission to open your gallery.';
}

// Path: strings.no_feature
class _StringsStringsNoFeatureVi extends _StringsStringsNoFeatureEn {
	_StringsStringsNoFeatureVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get in_progress => 'Chức năng đang trong quá trình phát triển';
}

// Path: strings.dashboard
class _StringsStringsDashboardVi extends _StringsStringsDashboardEn {
	_StringsStringsDashboardVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get greeting => 'Chào buổi sáng, Silvia';
	@override String get how_you_feel => 'Bây giờ bạn cảm thấy thế nào?';
	@override String get description => 'Mô tả vấn đề bạn đang gặp?';
	@override String get info_problem => 'Tình hình, sự kiện hiện tại, có những thông tin gì?';
	@override String get hint_write => 'Viết gì đó...';
}

// Path: strings.navigation.bottom
class _StringsStringsNavigationBottomVi extends _StringsStringsNavigationBottomEn {
	_StringsStringsNavigationBottomVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get sample => 'Mẫu';
	@override String get home => 'Trang chủ';
	@override String get features => 'Chức năng';
	@override String get informations => 'Thông tin';
}

// Path: strings.form.username
class _StringsStringsFormUsernameVi extends _StringsStringsFormUsernameEn {
	_StringsStringsFormUsernameVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Username';
	@override String get hint => 'Vui lòng nhập username';
}

// Path: strings.form.password
class _StringsStringsFormPasswordVi extends _StringsStringsFormPasswordEn {
	_StringsStringsFormPasswordVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Password';
	@override String get hint => 'Nhập password';
}

// Path: strings.errors.form
class _StringsStringsErrorsFormVi extends _StringsStringsErrorsFormEn {
	_StringsStringsErrorsFormVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String maxLength({required Object field, required Object count}) => '${field} cannot be more than ${count} characters.';
	@override String minLength({required Object field, required Object count}) => '${field} cannot be less than ${count} characters.';
	@override String required({required Object field}) => '${field} is required.';
	@override String get email => 'You entered an invalid email address.';
}

// Path: strings.errors.others
class _StringsStringsErrorsOthersVi extends _StringsStringsErrorsOthersEn {
	_StringsStringsErrorsOthersVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get no_item_found => 'There is no data to show.';
	@override String get something_went_wrong => 'Something went wrong and data couldn\'t loaded.';
	@override String get an_unknown_error => 'An unknown error happened.';
	@override String get no_internet_connection => 'Internet connectivity is not available.';
	@override String get server_failure => 'Server failure encountered.';
	@override String get communication_error => 'There was an error with our communication with the servers.';
}
