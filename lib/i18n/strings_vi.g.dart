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
	@override String get text_login => 'Đăng nhập';
	@override String get need_help => 'Cần giúp đỡ?';
	@override String get forget_password => 'Quên mật khẩu';
}

// Path: strings
class _StringsStringsVi extends _StringsStringsEn {
	_StringsStringsVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String hello({required Object name}) => 'Hello ${name}';
	@override String get save => 'Save';
	@override late final _StringsStringsLoginVi login = _StringsStringsLoginVi._(_root);
	@override late final _StringsStringsNavigationVi navigation = _StringsStringsNavigationVi._(_root);
	@override late final _StringsStringsTestVi test = _StringsStringsTestVi._(_root);
	@override late final _StringsStringsFormVi form = _StringsStringsFormVi._(_root);
	@override late final _StringsStringsErrorsVi errors = _StringsStringsErrorsVi._(_root);
	@override late final _StringsStringsFilePickerVi file_picker = _StringsStringsFilePickerVi._(_root);
	@override late final _StringsStringsNoFeatureVi no_feature = _StringsStringsNoFeatureVi._(_root);
	@override late final _StringsStringsDashboardVi dashboard = _StringsStringsDashboardVi._(_root);
	@override late final _StringsStringsCreateOrderVi create_order = _StringsStringsCreateOrderVi._(_root);
}

// Path: strings.login
class _StringsStringsLoginVi extends _StringsStringsLoginEn {
	_StringsStringsLoginVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get success => 'Logged in successfully';
	@override String get fail => 'Logged in failed';
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
	@override late final _StringsStringsFormPhoneVi phone = _StringsStringsFormPhoneVi._(_root);
	@override late final _StringsStringsFormUsernameVi username = _StringsStringsFormUsernameVi._(_root);
	@override late final _StringsStringsFormPasswordVi password = _StringsStringsFormPasswordVi._(_root);
	@override late final _StringsStringsFormFullNameVi full_name = _StringsStringsFormFullNameVi._(_root);
	@override late final _StringsStringsFormTransferAddressVi transfer_address = _StringsStringsFormTransferAddressVi._(_root);
	@override late final _StringsStringsFormProductNameVi product_name = _StringsStringsFormProductNameVi._(_root);
	@override late final _StringsStringsFormUnitPriceVi unit_price = _StringsStringsFormUnitPriceVi._(_root);
	@override late final _StringsStringsFormDeliveryChargesVi delivery_charges = _StringsStringsFormDeliveryChargesVi._(_root);
}

// Path: strings.errors
class _StringsStringsErrorsVi extends _StringsStringsErrorsEn {
	_StringsStringsErrorsVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStringsErrorsFormVi form = _StringsStringsErrorsFormVi._(_root);
	@override late final _StringsStringsErrorsOthersVi others = _StringsStringsErrorsOthersVi._(_root);
	@override late final _StringsStringsErrorsLoginVi login = _StringsStringsErrorsLoginVi._(_root);
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
	@override String get in_progress => 'Function in progress';
}

// Path: strings.dashboard
class _StringsStringsDashboardVi extends _StringsStringsDashboardEn {
	_StringsStringsDashboardVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get greeting => 'Welcome, Silvia';
	@override String get how_you_feel => 'Now, how do you feel?';
	@override String get description => 'Describe the problem';
	@override String get info_problem => 'What information is available?';
	@override String get hint_write => 'Write something...';
}

// Path: strings.create_order
class _StringsStringsCreateOrderVi extends _StringsStringsCreateOrderEn {
	_StringsStringsCreateOrderVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tạo đơn hàng';
	@override String get text_information_customer => 'Thông tin khách hàng';
	@override String get text_information_order => 'Thông tin đơn hàng';
	@override String get text_continue => 'Tiếp tục';
	@override String get text_quantity => 'Số lượng';
	@override String get text_price => 'Thành tiền:';
	@override String get text_total_price => 'Cộng tiền hàng:';
	@override String get text_delivery_charges => 'Phí giao hàng:';
}

// Path: strings.navigation.bottom
class _StringsStringsNavigationBottomVi extends _StringsStringsNavigationBottomEn {
	_StringsStringsNavigationBottomVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get sample => 'Sample';
	@override String get home => 'Home';
	@override String get features => 'Features';
	@override String get informations => 'Informations';
}

// Path: strings.form.phone
class _StringsStringsFormPhoneVi extends _StringsStringsFormPhoneEn {
	_StringsStringsFormPhoneVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Số điện thoại';
	@override String get hint => 'Nhập số điện thoại';
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
	@override String get label => 'Mật khẩu';
	@override String get hint => 'Nhập mật khẩu';
}

// Path: strings.form.full_name
class _StringsStringsFormFullNameVi extends _StringsStringsFormFullNameEn {
	_StringsStringsFormFullNameVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Họ và tên';
	@override String get hint => 'Nhập Họ và tên';
}

// Path: strings.form.transfer_address
class _StringsStringsFormTransferAddressVi extends _StringsStringsFormTransferAddressEn {
	_StringsStringsFormTransferAddressVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Địa chỉ giao hàng';
	@override String get hint => 'Nhập Địa chỉ giao hàng';
}

// Path: strings.form.product_name
class _StringsStringsFormProductNameVi extends _StringsStringsFormProductNameEn {
	_StringsStringsFormProductNameVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Tên sản phẩm';
	@override String get hint => 'Nhập Tên sản phẩm';
}

// Path: strings.form.unit_price
class _StringsStringsFormUnitPriceVi extends _StringsStringsFormUnitPriceEn {
	_StringsStringsFormUnitPriceVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Đơn giá';
	@override String get hint => 'Đơn giá';
}

// Path: strings.form.delivery_charges
class _StringsStringsFormDeliveryChargesVi extends _StringsStringsFormDeliveryChargesEn {
	_StringsStringsFormDeliveryChargesVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Phí giao hàng';
	@override String get hint => 'Nhập Phí giao hàng';
}

// Path: strings.errors.form
class _StringsStringsErrorsFormVi extends _StringsStringsErrorsFormEn {
	_StringsStringsErrorsFormVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String maxLength({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
	@override String minLength({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
	@override String required({required Object field}) => 'Vui lòng nhập ${field}';
	@override String get email => 'Địa chỉ Email không hợp lệ.';
	@override String pattern({required Object field}) => '${field} không hợp lệ.';
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

// Path: strings.errors.login
class _StringsStringsErrorsLoginVi extends _StringsStringsErrorsLoginEn {
	_StringsStringsErrorsLoginVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get E_USER_ACCOUNT_NOT_EXISTS => 'Vui lòng kiểm tra lại mật khẩu';
	@override String get E_USER_HAS_BLOCKED => 'User đã bị khoá';
	@override String get E_USER_NOT_EXISTS => 'User không tồn tại';
}
