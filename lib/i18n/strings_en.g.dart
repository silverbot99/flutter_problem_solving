part of 'strings.g.dart';

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsLoginEn login = _StringsLoginEn._(_root);
	late final _StringsStringsEn strings = _StringsStringsEn._(_root);
}

// Path: login
class _StringsLoginEn {
	_StringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get text_login => 'Login';
	String get need_help => 'Need help?';
	String get forget_password => 'Forgot Password';
}

// Path: strings
class _StringsStringsEn {
	_StringsStringsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String hello({required Object name}) => 'Hello ${name}';
	String get save => 'Save';
	late final _StringsStringsLoginEn login = _StringsStringsLoginEn._(_root);
	late final _StringsStringsNavigationEn navigation = _StringsStringsNavigationEn._(_root);
	late final _StringsStringsTestEn test = _StringsStringsTestEn._(_root);
	late final _StringsStringsFormEn form = _StringsStringsFormEn._(_root);
	late final _StringsStringsErrorsEn errors = _StringsStringsErrorsEn._(_root);
	late final _StringsStringsFilePickerEn file_picker = _StringsStringsFilePickerEn._(_root);
	late final _StringsStringsNoFeatureEn no_feature = _StringsStringsNoFeatureEn._(_root);
	late final _StringsStringsDashboardEn dashboard = _StringsStringsDashboardEn._(_root);
}

// Path: strings.login
class _StringsStringsLoginEn {
	_StringsStringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get success => 'Logged in successfully';
	String get fail => 'Logged in failed';
}

// Path: strings.navigation
class _StringsStringsNavigationEn {
	_StringsStringsNavigationEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsStringsNavigationBottomEn bottom = _StringsStringsNavigationBottomEn._(_root);
}

// Path: strings.test
class _StringsStringsTestEn {
	_StringsStringsTestEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get succeded => 'Test successfull.';
	String get failed => 'Test failed.';
}

// Path: strings.form
class _StringsStringsFormEn {
	_StringsStringsFormEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsStringsFormUsernameEn username = _StringsStringsFormUsernameEn._(_root);
	late final _StringsStringsFormPasswordEn password = _StringsStringsFormPasswordEn._(_root);
}

// Path: strings.errors
class _StringsStringsErrorsEn {
	_StringsStringsErrorsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsStringsErrorsFormEn form = _StringsStringsErrorsFormEn._(_root);
	late final _StringsStringsErrorsOthersEn others = _StringsStringsErrorsOthersEn._(_root);
}

// Path: strings.file_picker
class _StringsStringsFilePickerEn {
	_StringsStringsFilePickerEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String size_warning({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
	String get no_permission => 'We have no permission to open your gallery.';
}

// Path: strings.no_feature
class _StringsStringsNoFeatureEn {
	_StringsStringsNoFeatureEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get in_progress => 'Function in progress';
}

// Path: strings.dashboard
class _StringsStringsDashboardEn {
	_StringsStringsDashboardEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get greeting => 'Welcome, Silvia';
	String get how_you_feel => 'Now, how do you feel?';
	String get description => 'Describe the problem';
	String get info_problem => 'What information is available?';
	String get hint_write => 'Write something...';
}

// Path: strings.navigation.bottom
class _StringsStringsNavigationBottomEn {
	_StringsStringsNavigationBottomEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get sample => 'Sample';
	String get home => 'Home';
	String get features => 'Features';
	String get informations => 'Informations';
}

// Path: strings.form.username
class _StringsStringsFormUsernameEn {
	_StringsStringsFormUsernameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Username';
	String get hint => 'Enter your username';
}

// Path: strings.form.password
class _StringsStringsFormPasswordEn {
	_StringsStringsFormPasswordEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Password';
	String get hint => 'Enter your password';
}

// Path: strings.errors.form
class _StringsStringsErrorsFormEn {
	_StringsStringsErrorsFormEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String maxLength({required Object field, required Object count}) => '${field} cannot be more than ${count} characters.';
	String minLength({required Object field, required Object count}) => '${field} cannot be less than ${count} characters.';
	String required({required Object field}) => '${field} is required.';
	String get email => 'You entered an invalid email address.';
}

// Path: strings.errors.others
class _StringsStringsErrorsOthersEn {
	_StringsStringsErrorsOthersEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get no_item_found => 'There is no data to show.';
	String get something_went_wrong => 'Something went wrong and data couldn\'t loaded.';
	String get an_unknown_error => 'An unknown error happened.';
	String get no_internet_connection => 'Internet connectivity is not available.';
	String get server_failure => 'Server failure encountered.';
	String get communication_error => 'There was an error with our communication with the servers.';
}
