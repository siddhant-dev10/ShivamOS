// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $LocalHotelSettingsTable extends LocalHotelSettings
    with TableInfo<$LocalHotelSettingsTable, LocalHotelSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalHotelSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _hotelNameMeta =
      const VerificationMeta('hotelName');
  @override
  late final GeneratedColumn<String> hotelName = GeneratedColumn<String>(
      'hotel_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Hotel New Shivam Inn'));
  static const VerificationMeta _taglineMeta =
      const VerificationMeta('tagline');
  @override
  late final GeneratedColumn<String> tagline = GeneratedColumn<String>(
      'tagline', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('One Hotel. Every Operation. One System.'));
  static const VerificationMeta _addressLine1Meta =
      const VerificationMeta('addressLine1');
  @override
  late final GeneratedColumn<String> addressLine1 = GeneratedColumn<String>(
      'address_line1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressLine2Meta =
      const VerificationMeta('addressLine2');
  @override
  late final GeneratedColumn<String> addressLine2 = GeneratedColumn<String>(
      'address_line2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('India'));
  static const VerificationMeta _pincodeMeta =
      const VerificationMeta('pincode');
  @override
  late final GeneratedColumn<String> pincode = GeneratedColumn<String>(
      'pincode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phonePrimaryMeta =
      const VerificationMeta('phonePrimary');
  @override
  late final GeneratedColumn<String> phonePrimary = GeneratedColumn<String>(
      'phone_primary', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneSecondaryMeta =
      const VerificationMeta('phoneSecondary');
  @override
  late final GeneratedColumn<String> phoneSecondary = GeneratedColumn<String>(
      'phone_secondary', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gstinMeta = const VerificationMeta('gstin');
  @override
  late final GeneratedColumn<String> gstin = GeneratedColumn<String>(
      'gstin', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cgstRatePercentMeta =
      const VerificationMeta('cgstRatePercent');
  @override
  late final GeneratedColumn<double> cgstRatePercent = GeneratedColumn<double>(
      'cgst_rate_percent', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(2.50));
  static const VerificationMeta _sgstRatePercentMeta =
      const VerificationMeta('sgstRatePercent');
  @override
  late final GeneratedColumn<double> sgstRatePercent = GeneratedColumn<double>(
      'sgst_rate_percent', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(2.50));
  static const VerificationMeta _igstRatePercentMeta =
      const VerificationMeta('igstRatePercent');
  @override
  late final GeneratedColumn<double> igstRatePercent = GeneratedColumn<double>(
      'igst_rate_percent', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(5.00));
  static const VerificationMeta _invoicePrefixMeta =
      const VerificationMeta('invoicePrefix');
  @override
  late final GeneratedColumn<String> invoicePrefix = GeneratedColumn<String>(
      'invoice_prefix', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('NSI-'));
  static const VerificationMeta _nextInvoiceNumberMeta =
      const VerificationMeta('nextInvoiceNumber');
  @override
  late final GeneratedColumn<int> nextInvoiceNumber = GeneratedColumn<int>(
      'next_invoice_number', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1540));
  static const VerificationMeta _invoiceFooterTextMeta =
      const VerificationMeta('invoiceFooterText');
  @override
  late final GeneratedColumn<String> invoiceFooterText =
      GeneratedColumn<String>('invoice_footer_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        hotelName,
        tagline,
        addressLine1,
        addressLine2,
        city,
        state,
        country,
        pincode,
        phonePrimary,
        phoneSecondary,
        email,
        gstin,
        cgstRatePercent,
        sgstRatePercent,
        igstRatePercent,
        invoicePrefix,
        nextInvoiceNumber,
        invoiceFooterText
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_hotel_settings';
  @override
  VerificationContext validateIntegrity(Insertable<LocalHotelSetting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('hotel_name')) {
      context.handle(_hotelNameMeta,
          hotelName.isAcceptableOrUnknown(data['hotel_name']!, _hotelNameMeta));
    }
    if (data.containsKey('tagline')) {
      context.handle(_taglineMeta,
          tagline.isAcceptableOrUnknown(data['tagline']!, _taglineMeta));
    }
    if (data.containsKey('address_line1')) {
      context.handle(
          _addressLine1Meta,
          addressLine1.isAcceptableOrUnknown(
              data['address_line1']!, _addressLine1Meta));
    } else if (isInserting) {
      context.missing(_addressLine1Meta);
    }
    if (data.containsKey('address_line2')) {
      context.handle(
          _addressLine2Meta,
          addressLine2.isAcceptableOrUnknown(
              data['address_line2']!, _addressLine2Meta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('pincode')) {
      context.handle(_pincodeMeta,
          pincode.isAcceptableOrUnknown(data['pincode']!, _pincodeMeta));
    }
    if (data.containsKey('phone_primary')) {
      context.handle(
          _phonePrimaryMeta,
          phonePrimary.isAcceptableOrUnknown(
              data['phone_primary']!, _phonePrimaryMeta));
    } else if (isInserting) {
      context.missing(_phonePrimaryMeta);
    }
    if (data.containsKey('phone_secondary')) {
      context.handle(
          _phoneSecondaryMeta,
          phoneSecondary.isAcceptableOrUnknown(
              data['phone_secondary']!, _phoneSecondaryMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('gstin')) {
      context.handle(
          _gstinMeta, gstin.isAcceptableOrUnknown(data['gstin']!, _gstinMeta));
    }
    if (data.containsKey('cgst_rate_percent')) {
      context.handle(
          _cgstRatePercentMeta,
          cgstRatePercent.isAcceptableOrUnknown(
              data['cgst_rate_percent']!, _cgstRatePercentMeta));
    }
    if (data.containsKey('sgst_rate_percent')) {
      context.handle(
          _sgstRatePercentMeta,
          sgstRatePercent.isAcceptableOrUnknown(
              data['sgst_rate_percent']!, _sgstRatePercentMeta));
    }
    if (data.containsKey('igst_rate_percent')) {
      context.handle(
          _igstRatePercentMeta,
          igstRatePercent.isAcceptableOrUnknown(
              data['igst_rate_percent']!, _igstRatePercentMeta));
    }
    if (data.containsKey('invoice_prefix')) {
      context.handle(
          _invoicePrefixMeta,
          invoicePrefix.isAcceptableOrUnknown(
              data['invoice_prefix']!, _invoicePrefixMeta));
    }
    if (data.containsKey('next_invoice_number')) {
      context.handle(
          _nextInvoiceNumberMeta,
          nextInvoiceNumber.isAcceptableOrUnknown(
              data['next_invoice_number']!, _nextInvoiceNumberMeta));
    }
    if (data.containsKey('invoice_footer_text')) {
      context.handle(
          _invoiceFooterTextMeta,
          invoiceFooterText.isAcceptableOrUnknown(
              data['invoice_footer_text']!, _invoiceFooterTextMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalHotelSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalHotelSetting(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      hotelName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hotel_name'])!,
      tagline: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tagline'])!,
      addressLine1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address_line1'])!,
      addressLine2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address_line2']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state'])!,
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country'])!,
      pincode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pincode']),
      phonePrimary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_primary'])!,
      phoneSecondary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_secondary']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      gstin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gstin']),
      cgstRatePercent: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}cgst_rate_percent'])!,
      sgstRatePercent: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}sgst_rate_percent'])!,
      igstRatePercent: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}igst_rate_percent'])!,
      invoicePrefix: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}invoice_prefix'])!,
      nextInvoiceNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}next_invoice_number'])!,
      invoiceFooterText: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}invoice_footer_text']),
    );
  }

  @override
  $LocalHotelSettingsTable createAlias(String alias) {
    return $LocalHotelSettingsTable(attachedDatabase, alias);
  }
}

class LocalHotelSetting extends DataClass
    implements Insertable<LocalHotelSetting> {
  final String id;
  final String hotelName;
  final String tagline;
  final String addressLine1;
  final String? addressLine2;
  final String city;
  final String state;
  final String country;
  final String? pincode;
  final String phonePrimary;
  final String? phoneSecondary;
  final String? email;
  final String? gstin;
  final double cgstRatePercent;
  final double sgstRatePercent;
  final double igstRatePercent;
  final String invoicePrefix;
  final int nextInvoiceNumber;
  final String? invoiceFooterText;
  const LocalHotelSetting(
      {required this.id,
      required this.hotelName,
      required this.tagline,
      required this.addressLine1,
      this.addressLine2,
      required this.city,
      required this.state,
      required this.country,
      this.pincode,
      required this.phonePrimary,
      this.phoneSecondary,
      this.email,
      this.gstin,
      required this.cgstRatePercent,
      required this.sgstRatePercent,
      required this.igstRatePercent,
      required this.invoicePrefix,
      required this.nextInvoiceNumber,
      this.invoiceFooterText});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['hotel_name'] = Variable<String>(hotelName);
    map['tagline'] = Variable<String>(tagline);
    map['address_line1'] = Variable<String>(addressLine1);
    if (!nullToAbsent || addressLine2 != null) {
      map['address_line2'] = Variable<String>(addressLine2);
    }
    map['city'] = Variable<String>(city);
    map['state'] = Variable<String>(state);
    map['country'] = Variable<String>(country);
    if (!nullToAbsent || pincode != null) {
      map['pincode'] = Variable<String>(pincode);
    }
    map['phone_primary'] = Variable<String>(phonePrimary);
    if (!nullToAbsent || phoneSecondary != null) {
      map['phone_secondary'] = Variable<String>(phoneSecondary);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || gstin != null) {
      map['gstin'] = Variable<String>(gstin);
    }
    map['cgst_rate_percent'] = Variable<double>(cgstRatePercent);
    map['sgst_rate_percent'] = Variable<double>(sgstRatePercent);
    map['igst_rate_percent'] = Variable<double>(igstRatePercent);
    map['invoice_prefix'] = Variable<String>(invoicePrefix);
    map['next_invoice_number'] = Variable<int>(nextInvoiceNumber);
    if (!nullToAbsent || invoiceFooterText != null) {
      map['invoice_footer_text'] = Variable<String>(invoiceFooterText);
    }
    return map;
  }

  LocalHotelSettingsCompanion toCompanion(bool nullToAbsent) {
    return LocalHotelSettingsCompanion(
      id: Value(id),
      hotelName: Value(hotelName),
      tagline: Value(tagline),
      addressLine1: Value(addressLine1),
      addressLine2: addressLine2 == null && nullToAbsent
          ? const Value.absent()
          : Value(addressLine2),
      city: Value(city),
      state: Value(state),
      country: Value(country),
      pincode: pincode == null && nullToAbsent
          ? const Value.absent()
          : Value(pincode),
      phonePrimary: Value(phonePrimary),
      phoneSecondary: phoneSecondary == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneSecondary),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      gstin:
          gstin == null && nullToAbsent ? const Value.absent() : Value(gstin),
      cgstRatePercent: Value(cgstRatePercent),
      sgstRatePercent: Value(sgstRatePercent),
      igstRatePercent: Value(igstRatePercent),
      invoicePrefix: Value(invoicePrefix),
      nextInvoiceNumber: Value(nextInvoiceNumber),
      invoiceFooterText: invoiceFooterText == null && nullToAbsent
          ? const Value.absent()
          : Value(invoiceFooterText),
    );
  }

  factory LocalHotelSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalHotelSetting(
      id: serializer.fromJson<String>(json['id']),
      hotelName: serializer.fromJson<String>(json['hotelName']),
      tagline: serializer.fromJson<String>(json['tagline']),
      addressLine1: serializer.fromJson<String>(json['addressLine1']),
      addressLine2: serializer.fromJson<String?>(json['addressLine2']),
      city: serializer.fromJson<String>(json['city']),
      state: serializer.fromJson<String>(json['state']),
      country: serializer.fromJson<String>(json['country']),
      pincode: serializer.fromJson<String?>(json['pincode']),
      phonePrimary: serializer.fromJson<String>(json['phonePrimary']),
      phoneSecondary: serializer.fromJson<String?>(json['phoneSecondary']),
      email: serializer.fromJson<String?>(json['email']),
      gstin: serializer.fromJson<String?>(json['gstin']),
      cgstRatePercent: serializer.fromJson<double>(json['cgstRatePercent']),
      sgstRatePercent: serializer.fromJson<double>(json['sgstRatePercent']),
      igstRatePercent: serializer.fromJson<double>(json['igstRatePercent']),
      invoicePrefix: serializer.fromJson<String>(json['invoicePrefix']),
      nextInvoiceNumber: serializer.fromJson<int>(json['nextInvoiceNumber']),
      invoiceFooterText:
          serializer.fromJson<String?>(json['invoiceFooterText']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'hotelName': serializer.toJson<String>(hotelName),
      'tagline': serializer.toJson<String>(tagline),
      'addressLine1': serializer.toJson<String>(addressLine1),
      'addressLine2': serializer.toJson<String?>(addressLine2),
      'city': serializer.toJson<String>(city),
      'state': serializer.toJson<String>(state),
      'country': serializer.toJson<String>(country),
      'pincode': serializer.toJson<String?>(pincode),
      'phonePrimary': serializer.toJson<String>(phonePrimary),
      'phoneSecondary': serializer.toJson<String?>(phoneSecondary),
      'email': serializer.toJson<String?>(email),
      'gstin': serializer.toJson<String?>(gstin),
      'cgstRatePercent': serializer.toJson<double>(cgstRatePercent),
      'sgstRatePercent': serializer.toJson<double>(sgstRatePercent),
      'igstRatePercent': serializer.toJson<double>(igstRatePercent),
      'invoicePrefix': serializer.toJson<String>(invoicePrefix),
      'nextInvoiceNumber': serializer.toJson<int>(nextInvoiceNumber),
      'invoiceFooterText': serializer.toJson<String?>(invoiceFooterText),
    };
  }

  LocalHotelSetting copyWith(
          {String? id,
          String? hotelName,
          String? tagline,
          String? addressLine1,
          Value<String?> addressLine2 = const Value.absent(),
          String? city,
          String? state,
          String? country,
          Value<String?> pincode = const Value.absent(),
          String? phonePrimary,
          Value<String?> phoneSecondary = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> gstin = const Value.absent(),
          double? cgstRatePercent,
          double? sgstRatePercent,
          double? igstRatePercent,
          String? invoicePrefix,
          int? nextInvoiceNumber,
          Value<String?> invoiceFooterText = const Value.absent()}) =>
      LocalHotelSetting(
        id: id ?? this.id,
        hotelName: hotelName ?? this.hotelName,
        tagline: tagline ?? this.tagline,
        addressLine1: addressLine1 ?? this.addressLine1,
        addressLine2:
            addressLine2.present ? addressLine2.value : this.addressLine2,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        pincode: pincode.present ? pincode.value : this.pincode,
        phonePrimary: phonePrimary ?? this.phonePrimary,
        phoneSecondary:
            phoneSecondary.present ? phoneSecondary.value : this.phoneSecondary,
        email: email.present ? email.value : this.email,
        gstin: gstin.present ? gstin.value : this.gstin,
        cgstRatePercent: cgstRatePercent ?? this.cgstRatePercent,
        sgstRatePercent: sgstRatePercent ?? this.sgstRatePercent,
        igstRatePercent: igstRatePercent ?? this.igstRatePercent,
        invoicePrefix: invoicePrefix ?? this.invoicePrefix,
        nextInvoiceNumber: nextInvoiceNumber ?? this.nextInvoiceNumber,
        invoiceFooterText: invoiceFooterText.present
            ? invoiceFooterText.value
            : this.invoiceFooterText,
      );
  LocalHotelSetting copyWithCompanion(LocalHotelSettingsCompanion data) {
    return LocalHotelSetting(
      id: data.id.present ? data.id.value : this.id,
      hotelName: data.hotelName.present ? data.hotelName.value : this.hotelName,
      tagline: data.tagline.present ? data.tagline.value : this.tagline,
      addressLine1: data.addressLine1.present
          ? data.addressLine1.value
          : this.addressLine1,
      addressLine2: data.addressLine2.present
          ? data.addressLine2.value
          : this.addressLine2,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      country: data.country.present ? data.country.value : this.country,
      pincode: data.pincode.present ? data.pincode.value : this.pincode,
      phonePrimary: data.phonePrimary.present
          ? data.phonePrimary.value
          : this.phonePrimary,
      phoneSecondary: data.phoneSecondary.present
          ? data.phoneSecondary.value
          : this.phoneSecondary,
      email: data.email.present ? data.email.value : this.email,
      gstin: data.gstin.present ? data.gstin.value : this.gstin,
      cgstRatePercent: data.cgstRatePercent.present
          ? data.cgstRatePercent.value
          : this.cgstRatePercent,
      sgstRatePercent: data.sgstRatePercent.present
          ? data.sgstRatePercent.value
          : this.sgstRatePercent,
      igstRatePercent: data.igstRatePercent.present
          ? data.igstRatePercent.value
          : this.igstRatePercent,
      invoicePrefix: data.invoicePrefix.present
          ? data.invoicePrefix.value
          : this.invoicePrefix,
      nextInvoiceNumber: data.nextInvoiceNumber.present
          ? data.nextInvoiceNumber.value
          : this.nextInvoiceNumber,
      invoiceFooterText: data.invoiceFooterText.present
          ? data.invoiceFooterText.value
          : this.invoiceFooterText,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalHotelSetting(')
          ..write('id: $id, ')
          ..write('hotelName: $hotelName, ')
          ..write('tagline: $tagline, ')
          ..write('addressLine1: $addressLine1, ')
          ..write('addressLine2: $addressLine2, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('pincode: $pincode, ')
          ..write('phonePrimary: $phonePrimary, ')
          ..write('phoneSecondary: $phoneSecondary, ')
          ..write('email: $email, ')
          ..write('gstin: $gstin, ')
          ..write('cgstRatePercent: $cgstRatePercent, ')
          ..write('sgstRatePercent: $sgstRatePercent, ')
          ..write('igstRatePercent: $igstRatePercent, ')
          ..write('invoicePrefix: $invoicePrefix, ')
          ..write('nextInvoiceNumber: $nextInvoiceNumber, ')
          ..write('invoiceFooterText: $invoiceFooterText')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      hotelName,
      tagline,
      addressLine1,
      addressLine2,
      city,
      state,
      country,
      pincode,
      phonePrimary,
      phoneSecondary,
      email,
      gstin,
      cgstRatePercent,
      sgstRatePercent,
      igstRatePercent,
      invoicePrefix,
      nextInvoiceNumber,
      invoiceFooterText);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalHotelSetting &&
          other.id == this.id &&
          other.hotelName == this.hotelName &&
          other.tagline == this.tagline &&
          other.addressLine1 == this.addressLine1 &&
          other.addressLine2 == this.addressLine2 &&
          other.city == this.city &&
          other.state == this.state &&
          other.country == this.country &&
          other.pincode == this.pincode &&
          other.phonePrimary == this.phonePrimary &&
          other.phoneSecondary == this.phoneSecondary &&
          other.email == this.email &&
          other.gstin == this.gstin &&
          other.cgstRatePercent == this.cgstRatePercent &&
          other.sgstRatePercent == this.sgstRatePercent &&
          other.igstRatePercent == this.igstRatePercent &&
          other.invoicePrefix == this.invoicePrefix &&
          other.nextInvoiceNumber == this.nextInvoiceNumber &&
          other.invoiceFooterText == this.invoiceFooterText);
}

class LocalHotelSettingsCompanion extends UpdateCompanion<LocalHotelSetting> {
  final Value<String> id;
  final Value<String> hotelName;
  final Value<String> tagline;
  final Value<String> addressLine1;
  final Value<String?> addressLine2;
  final Value<String> city;
  final Value<String> state;
  final Value<String> country;
  final Value<String?> pincode;
  final Value<String> phonePrimary;
  final Value<String?> phoneSecondary;
  final Value<String?> email;
  final Value<String?> gstin;
  final Value<double> cgstRatePercent;
  final Value<double> sgstRatePercent;
  final Value<double> igstRatePercent;
  final Value<String> invoicePrefix;
  final Value<int> nextInvoiceNumber;
  final Value<String?> invoiceFooterText;
  final Value<int> rowid;
  const LocalHotelSettingsCompanion({
    this.id = const Value.absent(),
    this.hotelName = const Value.absent(),
    this.tagline = const Value.absent(),
    this.addressLine1 = const Value.absent(),
    this.addressLine2 = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.pincode = const Value.absent(),
    this.phonePrimary = const Value.absent(),
    this.phoneSecondary = const Value.absent(),
    this.email = const Value.absent(),
    this.gstin = const Value.absent(),
    this.cgstRatePercent = const Value.absent(),
    this.sgstRatePercent = const Value.absent(),
    this.igstRatePercent = const Value.absent(),
    this.invoicePrefix = const Value.absent(),
    this.nextInvoiceNumber = const Value.absent(),
    this.invoiceFooterText = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalHotelSettingsCompanion.insert({
    required String id,
    this.hotelName = const Value.absent(),
    this.tagline = const Value.absent(),
    required String addressLine1,
    this.addressLine2 = const Value.absent(),
    required String city,
    required String state,
    this.country = const Value.absent(),
    this.pincode = const Value.absent(),
    required String phonePrimary,
    this.phoneSecondary = const Value.absent(),
    this.email = const Value.absent(),
    this.gstin = const Value.absent(),
    this.cgstRatePercent = const Value.absent(),
    this.sgstRatePercent = const Value.absent(),
    this.igstRatePercent = const Value.absent(),
    this.invoicePrefix = const Value.absent(),
    this.nextInvoiceNumber = const Value.absent(),
    this.invoiceFooterText = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        addressLine1 = Value(addressLine1),
        city = Value(city),
        state = Value(state),
        phonePrimary = Value(phonePrimary);
  static Insertable<LocalHotelSetting> custom({
    Expression<String>? id,
    Expression<String>? hotelName,
    Expression<String>? tagline,
    Expression<String>? addressLine1,
    Expression<String>? addressLine2,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? country,
    Expression<String>? pincode,
    Expression<String>? phonePrimary,
    Expression<String>? phoneSecondary,
    Expression<String>? email,
    Expression<String>? gstin,
    Expression<double>? cgstRatePercent,
    Expression<double>? sgstRatePercent,
    Expression<double>? igstRatePercent,
    Expression<String>? invoicePrefix,
    Expression<int>? nextInvoiceNumber,
    Expression<String>? invoiceFooterText,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hotelName != null) 'hotel_name': hotelName,
      if (tagline != null) 'tagline': tagline,
      if (addressLine1 != null) 'address_line1': addressLine1,
      if (addressLine2 != null) 'address_line2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (pincode != null) 'pincode': pincode,
      if (phonePrimary != null) 'phone_primary': phonePrimary,
      if (phoneSecondary != null) 'phone_secondary': phoneSecondary,
      if (email != null) 'email': email,
      if (gstin != null) 'gstin': gstin,
      if (cgstRatePercent != null) 'cgst_rate_percent': cgstRatePercent,
      if (sgstRatePercent != null) 'sgst_rate_percent': sgstRatePercent,
      if (igstRatePercent != null) 'igst_rate_percent': igstRatePercent,
      if (invoicePrefix != null) 'invoice_prefix': invoicePrefix,
      if (nextInvoiceNumber != null) 'next_invoice_number': nextInvoiceNumber,
      if (invoiceFooterText != null) 'invoice_footer_text': invoiceFooterText,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalHotelSettingsCompanion copyWith(
      {Value<String>? id,
      Value<String>? hotelName,
      Value<String>? tagline,
      Value<String>? addressLine1,
      Value<String?>? addressLine2,
      Value<String>? city,
      Value<String>? state,
      Value<String>? country,
      Value<String?>? pincode,
      Value<String>? phonePrimary,
      Value<String?>? phoneSecondary,
      Value<String?>? email,
      Value<String?>? gstin,
      Value<double>? cgstRatePercent,
      Value<double>? sgstRatePercent,
      Value<double>? igstRatePercent,
      Value<String>? invoicePrefix,
      Value<int>? nextInvoiceNumber,
      Value<String?>? invoiceFooterText,
      Value<int>? rowid}) {
    return LocalHotelSettingsCompanion(
      id: id ?? this.id,
      hotelName: hotelName ?? this.hotelName,
      tagline: tagline ?? this.tagline,
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      phonePrimary: phonePrimary ?? this.phonePrimary,
      phoneSecondary: phoneSecondary ?? this.phoneSecondary,
      email: email ?? this.email,
      gstin: gstin ?? this.gstin,
      cgstRatePercent: cgstRatePercent ?? this.cgstRatePercent,
      sgstRatePercent: sgstRatePercent ?? this.sgstRatePercent,
      igstRatePercent: igstRatePercent ?? this.igstRatePercent,
      invoicePrefix: invoicePrefix ?? this.invoicePrefix,
      nextInvoiceNumber: nextInvoiceNumber ?? this.nextInvoiceNumber,
      invoiceFooterText: invoiceFooterText ?? this.invoiceFooterText,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (hotelName.present) {
      map['hotel_name'] = Variable<String>(hotelName.value);
    }
    if (tagline.present) {
      map['tagline'] = Variable<String>(tagline.value);
    }
    if (addressLine1.present) {
      map['address_line1'] = Variable<String>(addressLine1.value);
    }
    if (addressLine2.present) {
      map['address_line2'] = Variable<String>(addressLine2.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (pincode.present) {
      map['pincode'] = Variable<String>(pincode.value);
    }
    if (phonePrimary.present) {
      map['phone_primary'] = Variable<String>(phonePrimary.value);
    }
    if (phoneSecondary.present) {
      map['phone_secondary'] = Variable<String>(phoneSecondary.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (gstin.present) {
      map['gstin'] = Variable<String>(gstin.value);
    }
    if (cgstRatePercent.present) {
      map['cgst_rate_percent'] = Variable<double>(cgstRatePercent.value);
    }
    if (sgstRatePercent.present) {
      map['sgst_rate_percent'] = Variable<double>(sgstRatePercent.value);
    }
    if (igstRatePercent.present) {
      map['igst_rate_percent'] = Variable<double>(igstRatePercent.value);
    }
    if (invoicePrefix.present) {
      map['invoice_prefix'] = Variable<String>(invoicePrefix.value);
    }
    if (nextInvoiceNumber.present) {
      map['next_invoice_number'] = Variable<int>(nextInvoiceNumber.value);
    }
    if (invoiceFooterText.present) {
      map['invoice_footer_text'] = Variable<String>(invoiceFooterText.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalHotelSettingsCompanion(')
          ..write('id: $id, ')
          ..write('hotelName: $hotelName, ')
          ..write('tagline: $tagline, ')
          ..write('addressLine1: $addressLine1, ')
          ..write('addressLine2: $addressLine2, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('pincode: $pincode, ')
          ..write('phonePrimary: $phonePrimary, ')
          ..write('phoneSecondary: $phoneSecondary, ')
          ..write('email: $email, ')
          ..write('gstin: $gstin, ')
          ..write('cgstRatePercent: $cgstRatePercent, ')
          ..write('sgstRatePercent: $sgstRatePercent, ')
          ..write('igstRatePercent: $igstRatePercent, ')
          ..write('invoicePrefix: $invoicePrefix, ')
          ..write('nextInvoiceNumber: $nextInvoiceNumber, ')
          ..write('invoiceFooterText: $invoiceFooterText, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalRoomCategoriesTable extends LocalRoomCategories
    with TableInfo<$LocalRoomCategoriesTable, LocalRoomCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalRoomCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _baseSingleTariffPaiseMeta =
      const VerificationMeta('baseSingleTariffPaise');
  @override
  late final GeneratedColumn<int> baseSingleTariffPaise = GeneratedColumn<int>(
      'base_single_tariff_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _baseDoubleTariffPaiseMeta =
      const VerificationMeta('baseDoubleTariffPaise');
  @override
  late final GeneratedColumn<int> baseDoubleTariffPaise = GeneratedColumn<int>(
      'base_double_tariff_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _extraBedTariffPaiseMeta =
      const VerificationMeta('extraBedTariffPaise');
  @override
  late final GeneratedColumn<int> extraBedTariffPaise = GeneratedColumn<int>(
      'extra_bed_tariff_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(50000));
  static const VerificationMeta _maxAdultsMeta =
      const VerificationMeta('maxAdults');
  @override
  late final GeneratedColumn<int> maxAdults = GeneratedColumn<int>(
      'max_adults', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(2));
  static const VerificationMeta _maxChildrenMeta =
      const VerificationMeta('maxChildren');
  @override
  late final GeneratedColumn<int> maxChildren = GeneratedColumn<int>(
      'max_children', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        baseSingleTariffPaise,
        baseDoubleTariffPaise,
        extraBedTariffPaise,
        maxAdults,
        maxChildren
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_room_categories';
  @override
  VerificationContext validateIntegrity(Insertable<LocalRoomCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('base_single_tariff_paise')) {
      context.handle(
          _baseSingleTariffPaiseMeta,
          baseSingleTariffPaise.isAcceptableOrUnknown(
              data['base_single_tariff_paise']!, _baseSingleTariffPaiseMeta));
    } else if (isInserting) {
      context.missing(_baseSingleTariffPaiseMeta);
    }
    if (data.containsKey('base_double_tariff_paise')) {
      context.handle(
          _baseDoubleTariffPaiseMeta,
          baseDoubleTariffPaise.isAcceptableOrUnknown(
              data['base_double_tariff_paise']!, _baseDoubleTariffPaiseMeta));
    } else if (isInserting) {
      context.missing(_baseDoubleTariffPaiseMeta);
    }
    if (data.containsKey('extra_bed_tariff_paise')) {
      context.handle(
          _extraBedTariffPaiseMeta,
          extraBedTariffPaise.isAcceptableOrUnknown(
              data['extra_bed_tariff_paise']!, _extraBedTariffPaiseMeta));
    }
    if (data.containsKey('max_adults')) {
      context.handle(_maxAdultsMeta,
          maxAdults.isAcceptableOrUnknown(data['max_adults']!, _maxAdultsMeta));
    }
    if (data.containsKey('max_children')) {
      context.handle(
          _maxChildrenMeta,
          maxChildren.isAcceptableOrUnknown(
              data['max_children']!, _maxChildrenMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalRoomCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalRoomCategory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      baseSingleTariffPaise: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}base_single_tariff_paise'])!,
      baseDoubleTariffPaise: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}base_double_tariff_paise'])!,
      extraBedTariffPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}extra_bed_tariff_paise'])!,
      maxAdults: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_adults'])!,
      maxChildren: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_children'])!,
    );
  }

  @override
  $LocalRoomCategoriesTable createAlias(String alias) {
    return $LocalRoomCategoriesTable(attachedDatabase, alias);
  }
}

class LocalRoomCategory extends DataClass
    implements Insertable<LocalRoomCategory> {
  final String id;
  final String name;
  final int baseSingleTariffPaise;
  final int baseDoubleTariffPaise;
  final int extraBedTariffPaise;
  final int maxAdults;
  final int maxChildren;
  const LocalRoomCategory(
      {required this.id,
      required this.name,
      required this.baseSingleTariffPaise,
      required this.baseDoubleTariffPaise,
      required this.extraBedTariffPaise,
      required this.maxAdults,
      required this.maxChildren});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['base_single_tariff_paise'] = Variable<int>(baseSingleTariffPaise);
    map['base_double_tariff_paise'] = Variable<int>(baseDoubleTariffPaise);
    map['extra_bed_tariff_paise'] = Variable<int>(extraBedTariffPaise);
    map['max_adults'] = Variable<int>(maxAdults);
    map['max_children'] = Variable<int>(maxChildren);
    return map;
  }

  LocalRoomCategoriesCompanion toCompanion(bool nullToAbsent) {
    return LocalRoomCategoriesCompanion(
      id: Value(id),
      name: Value(name),
      baseSingleTariffPaise: Value(baseSingleTariffPaise),
      baseDoubleTariffPaise: Value(baseDoubleTariffPaise),
      extraBedTariffPaise: Value(extraBedTariffPaise),
      maxAdults: Value(maxAdults),
      maxChildren: Value(maxChildren),
    );
  }

  factory LocalRoomCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalRoomCategory(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      baseSingleTariffPaise:
          serializer.fromJson<int>(json['baseSingleTariffPaise']),
      baseDoubleTariffPaise:
          serializer.fromJson<int>(json['baseDoubleTariffPaise']),
      extraBedTariffPaise:
          serializer.fromJson<int>(json['extraBedTariffPaise']),
      maxAdults: serializer.fromJson<int>(json['maxAdults']),
      maxChildren: serializer.fromJson<int>(json['maxChildren']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'baseSingleTariffPaise': serializer.toJson<int>(baseSingleTariffPaise),
      'baseDoubleTariffPaise': serializer.toJson<int>(baseDoubleTariffPaise),
      'extraBedTariffPaise': serializer.toJson<int>(extraBedTariffPaise),
      'maxAdults': serializer.toJson<int>(maxAdults),
      'maxChildren': serializer.toJson<int>(maxChildren),
    };
  }

  LocalRoomCategory copyWith(
          {String? id,
          String? name,
          int? baseSingleTariffPaise,
          int? baseDoubleTariffPaise,
          int? extraBedTariffPaise,
          int? maxAdults,
          int? maxChildren}) =>
      LocalRoomCategory(
        id: id ?? this.id,
        name: name ?? this.name,
        baseSingleTariffPaise:
            baseSingleTariffPaise ?? this.baseSingleTariffPaise,
        baseDoubleTariffPaise:
            baseDoubleTariffPaise ?? this.baseDoubleTariffPaise,
        extraBedTariffPaise: extraBedTariffPaise ?? this.extraBedTariffPaise,
        maxAdults: maxAdults ?? this.maxAdults,
        maxChildren: maxChildren ?? this.maxChildren,
      );
  LocalRoomCategory copyWithCompanion(LocalRoomCategoriesCompanion data) {
    return LocalRoomCategory(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      baseSingleTariffPaise: data.baseSingleTariffPaise.present
          ? data.baseSingleTariffPaise.value
          : this.baseSingleTariffPaise,
      baseDoubleTariffPaise: data.baseDoubleTariffPaise.present
          ? data.baseDoubleTariffPaise.value
          : this.baseDoubleTariffPaise,
      extraBedTariffPaise: data.extraBedTariffPaise.present
          ? data.extraBedTariffPaise.value
          : this.extraBedTariffPaise,
      maxAdults: data.maxAdults.present ? data.maxAdults.value : this.maxAdults,
      maxChildren:
          data.maxChildren.present ? data.maxChildren.value : this.maxChildren,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalRoomCategory(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('baseSingleTariffPaise: $baseSingleTariffPaise, ')
          ..write('baseDoubleTariffPaise: $baseDoubleTariffPaise, ')
          ..write('extraBedTariffPaise: $extraBedTariffPaise, ')
          ..write('maxAdults: $maxAdults, ')
          ..write('maxChildren: $maxChildren')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, baseSingleTariffPaise,
      baseDoubleTariffPaise, extraBedTariffPaise, maxAdults, maxChildren);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalRoomCategory &&
          other.id == this.id &&
          other.name == this.name &&
          other.baseSingleTariffPaise == this.baseSingleTariffPaise &&
          other.baseDoubleTariffPaise == this.baseDoubleTariffPaise &&
          other.extraBedTariffPaise == this.extraBedTariffPaise &&
          other.maxAdults == this.maxAdults &&
          other.maxChildren == this.maxChildren);
}

class LocalRoomCategoriesCompanion extends UpdateCompanion<LocalRoomCategory> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> baseSingleTariffPaise;
  final Value<int> baseDoubleTariffPaise;
  final Value<int> extraBedTariffPaise;
  final Value<int> maxAdults;
  final Value<int> maxChildren;
  final Value<int> rowid;
  const LocalRoomCategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.baseSingleTariffPaise = const Value.absent(),
    this.baseDoubleTariffPaise = const Value.absent(),
    this.extraBedTariffPaise = const Value.absent(),
    this.maxAdults = const Value.absent(),
    this.maxChildren = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalRoomCategoriesCompanion.insert({
    required String id,
    required String name,
    required int baseSingleTariffPaise,
    required int baseDoubleTariffPaise,
    this.extraBedTariffPaise = const Value.absent(),
    this.maxAdults = const Value.absent(),
    this.maxChildren = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        baseSingleTariffPaise = Value(baseSingleTariffPaise),
        baseDoubleTariffPaise = Value(baseDoubleTariffPaise);
  static Insertable<LocalRoomCategory> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? baseSingleTariffPaise,
    Expression<int>? baseDoubleTariffPaise,
    Expression<int>? extraBedTariffPaise,
    Expression<int>? maxAdults,
    Expression<int>? maxChildren,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (baseSingleTariffPaise != null)
        'base_single_tariff_paise': baseSingleTariffPaise,
      if (baseDoubleTariffPaise != null)
        'base_double_tariff_paise': baseDoubleTariffPaise,
      if (extraBedTariffPaise != null)
        'extra_bed_tariff_paise': extraBedTariffPaise,
      if (maxAdults != null) 'max_adults': maxAdults,
      if (maxChildren != null) 'max_children': maxChildren,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalRoomCategoriesCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<int>? baseSingleTariffPaise,
      Value<int>? baseDoubleTariffPaise,
      Value<int>? extraBedTariffPaise,
      Value<int>? maxAdults,
      Value<int>? maxChildren,
      Value<int>? rowid}) {
    return LocalRoomCategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      baseSingleTariffPaise:
          baseSingleTariffPaise ?? this.baseSingleTariffPaise,
      baseDoubleTariffPaise:
          baseDoubleTariffPaise ?? this.baseDoubleTariffPaise,
      extraBedTariffPaise: extraBedTariffPaise ?? this.extraBedTariffPaise,
      maxAdults: maxAdults ?? this.maxAdults,
      maxChildren: maxChildren ?? this.maxChildren,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (baseSingleTariffPaise.present) {
      map['base_single_tariff_paise'] =
          Variable<int>(baseSingleTariffPaise.value);
    }
    if (baseDoubleTariffPaise.present) {
      map['base_double_tariff_paise'] =
          Variable<int>(baseDoubleTariffPaise.value);
    }
    if (extraBedTariffPaise.present) {
      map['extra_bed_tariff_paise'] = Variable<int>(extraBedTariffPaise.value);
    }
    if (maxAdults.present) {
      map['max_adults'] = Variable<int>(maxAdults.value);
    }
    if (maxChildren.present) {
      map['max_children'] = Variable<int>(maxChildren.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalRoomCategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('baseSingleTariffPaise: $baseSingleTariffPaise, ')
          ..write('baseDoubleTariffPaise: $baseDoubleTariffPaise, ')
          ..write('extraBedTariffPaise: $extraBedTariffPaise, ')
          ..write('maxAdults: $maxAdults, ')
          ..write('maxChildren: $maxChildren, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalRoomsTable extends LocalRooms
    with TableInfo<$LocalRoomsTable, LocalRoom> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalRoomsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roomNumberMeta =
      const VerificationMeta('roomNumber');
  @override
  late final GeneratedColumn<String> roomNumber = GeneratedColumn<String>(
      'room_number', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _floorNumberMeta =
      const VerificationMeta('floorNumber');
  @override
  late final GeneratedColumn<int> floorNumber = GeneratedColumn<int>(
      'floor_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _categoryNameMeta =
      const VerificationMeta('categoryName');
  @override
  late final GeneratedColumn<String> categoryName = GeneratedColumn<String>(
      'category_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _occupancyStatusMeta =
      const VerificationMeta('occupancyStatus');
  @override
  late final GeneratedColumn<String> occupancyStatus = GeneratedColumn<String>(
      'occupancy_status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('available'));
  static const VerificationMeta _housekeepingStatusMeta =
      const VerificationMeta('housekeepingStatus');
  @override
  late final GeneratedColumn<String> housekeepingStatus =
      GeneratedColumn<String>('housekeeping_status', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('clean'));
  static const VerificationMeta _maintenanceStatusMeta =
      const VerificationMeta('maintenanceStatus');
  @override
  late final GeneratedColumn<String> maintenanceStatus =
      GeneratedColumn<String>('maintenance_status', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('normal'));
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        roomNumber,
        floorNumber,
        categoryName,
        occupancyStatus,
        housekeepingStatus,
        maintenanceStatus,
        isActive,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_rooms';
  @override
  VerificationContext validateIntegrity(Insertable<LocalRoom> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('room_number')) {
      context.handle(
          _roomNumberMeta,
          roomNumber.isAcceptableOrUnknown(
              data['room_number']!, _roomNumberMeta));
    } else if (isInserting) {
      context.missing(_roomNumberMeta);
    }
    if (data.containsKey('floor_number')) {
      context.handle(
          _floorNumberMeta,
          floorNumber.isAcceptableOrUnknown(
              data['floor_number']!, _floorNumberMeta));
    } else if (isInserting) {
      context.missing(_floorNumberMeta);
    }
    if (data.containsKey('category_name')) {
      context.handle(
          _categoryNameMeta,
          categoryName.isAcceptableOrUnknown(
              data['category_name']!, _categoryNameMeta));
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    if (data.containsKey('occupancy_status')) {
      context.handle(
          _occupancyStatusMeta,
          occupancyStatus.isAcceptableOrUnknown(
              data['occupancy_status']!, _occupancyStatusMeta));
    }
    if (data.containsKey('housekeeping_status')) {
      context.handle(
          _housekeepingStatusMeta,
          housekeepingStatus.isAcceptableOrUnknown(
              data['housekeeping_status']!, _housekeepingStatusMeta));
    }
    if (data.containsKey('maintenance_status')) {
      context.handle(
          _maintenanceStatusMeta,
          maintenanceStatus.isAcceptableOrUnknown(
              data['maintenance_status']!, _maintenanceStatusMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalRoom map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalRoom(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      roomNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_number'])!,
      floorNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}floor_number'])!,
      categoryName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_name'])!,
      occupancyStatus: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}occupancy_status'])!,
      housekeepingStatus: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}housekeeping_status'])!,
      maintenanceStatus: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}maintenance_status'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $LocalRoomsTable createAlias(String alias) {
    return $LocalRoomsTable(attachedDatabase, alias);
  }
}

class LocalRoom extends DataClass implements Insertable<LocalRoom> {
  final String id;
  final String roomNumber;
  final int floorNumber;
  final String categoryName;
  final String occupancyStatus;
  final String housekeepingStatus;
  final String maintenanceStatus;
  final bool isActive;
  final String? notes;
  const LocalRoom(
      {required this.id,
      required this.roomNumber,
      required this.floorNumber,
      required this.categoryName,
      required this.occupancyStatus,
      required this.housekeepingStatus,
      required this.maintenanceStatus,
      required this.isActive,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['room_number'] = Variable<String>(roomNumber);
    map['floor_number'] = Variable<int>(floorNumber);
    map['category_name'] = Variable<String>(categoryName);
    map['occupancy_status'] = Variable<String>(occupancyStatus);
    map['housekeeping_status'] = Variable<String>(housekeepingStatus);
    map['maintenance_status'] = Variable<String>(maintenanceStatus);
    map['is_active'] = Variable<bool>(isActive);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  LocalRoomsCompanion toCompanion(bool nullToAbsent) {
    return LocalRoomsCompanion(
      id: Value(id),
      roomNumber: Value(roomNumber),
      floorNumber: Value(floorNumber),
      categoryName: Value(categoryName),
      occupancyStatus: Value(occupancyStatus),
      housekeepingStatus: Value(housekeepingStatus),
      maintenanceStatus: Value(maintenanceStatus),
      isActive: Value(isActive),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory LocalRoom.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalRoom(
      id: serializer.fromJson<String>(json['id']),
      roomNumber: serializer.fromJson<String>(json['roomNumber']),
      floorNumber: serializer.fromJson<int>(json['floorNumber']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
      occupancyStatus: serializer.fromJson<String>(json['occupancyStatus']),
      housekeepingStatus:
          serializer.fromJson<String>(json['housekeepingStatus']),
      maintenanceStatus: serializer.fromJson<String>(json['maintenanceStatus']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'roomNumber': serializer.toJson<String>(roomNumber),
      'floorNumber': serializer.toJson<int>(floorNumber),
      'categoryName': serializer.toJson<String>(categoryName),
      'occupancyStatus': serializer.toJson<String>(occupancyStatus),
      'housekeepingStatus': serializer.toJson<String>(housekeepingStatus),
      'maintenanceStatus': serializer.toJson<String>(maintenanceStatus),
      'isActive': serializer.toJson<bool>(isActive),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  LocalRoom copyWith(
          {String? id,
          String? roomNumber,
          int? floorNumber,
          String? categoryName,
          String? occupancyStatus,
          String? housekeepingStatus,
          String? maintenanceStatus,
          bool? isActive,
          Value<String?> notes = const Value.absent()}) =>
      LocalRoom(
        id: id ?? this.id,
        roomNumber: roomNumber ?? this.roomNumber,
        floorNumber: floorNumber ?? this.floorNumber,
        categoryName: categoryName ?? this.categoryName,
        occupancyStatus: occupancyStatus ?? this.occupancyStatus,
        housekeepingStatus: housekeepingStatus ?? this.housekeepingStatus,
        maintenanceStatus: maintenanceStatus ?? this.maintenanceStatus,
        isActive: isActive ?? this.isActive,
        notes: notes.present ? notes.value : this.notes,
      );
  LocalRoom copyWithCompanion(LocalRoomsCompanion data) {
    return LocalRoom(
      id: data.id.present ? data.id.value : this.id,
      roomNumber:
          data.roomNumber.present ? data.roomNumber.value : this.roomNumber,
      floorNumber:
          data.floorNumber.present ? data.floorNumber.value : this.floorNumber,
      categoryName: data.categoryName.present
          ? data.categoryName.value
          : this.categoryName,
      occupancyStatus: data.occupancyStatus.present
          ? data.occupancyStatus.value
          : this.occupancyStatus,
      housekeepingStatus: data.housekeepingStatus.present
          ? data.housekeepingStatus.value
          : this.housekeepingStatus,
      maintenanceStatus: data.maintenanceStatus.present
          ? data.maintenanceStatus.value
          : this.maintenanceStatus,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalRoom(')
          ..write('id: $id, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('floorNumber: $floorNumber, ')
          ..write('categoryName: $categoryName, ')
          ..write('occupancyStatus: $occupancyStatus, ')
          ..write('housekeepingStatus: $housekeepingStatus, ')
          ..write('maintenanceStatus: $maintenanceStatus, ')
          ..write('isActive: $isActive, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, roomNumber, floorNumber, categoryName,
      occupancyStatus, housekeepingStatus, maintenanceStatus, isActive, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalRoom &&
          other.id == this.id &&
          other.roomNumber == this.roomNumber &&
          other.floorNumber == this.floorNumber &&
          other.categoryName == this.categoryName &&
          other.occupancyStatus == this.occupancyStatus &&
          other.housekeepingStatus == this.housekeepingStatus &&
          other.maintenanceStatus == this.maintenanceStatus &&
          other.isActive == this.isActive &&
          other.notes == this.notes);
}

class LocalRoomsCompanion extends UpdateCompanion<LocalRoom> {
  final Value<String> id;
  final Value<String> roomNumber;
  final Value<int> floorNumber;
  final Value<String> categoryName;
  final Value<String> occupancyStatus;
  final Value<String> housekeepingStatus;
  final Value<String> maintenanceStatus;
  final Value<bool> isActive;
  final Value<String?> notes;
  final Value<int> rowid;
  const LocalRoomsCompanion({
    this.id = const Value.absent(),
    this.roomNumber = const Value.absent(),
    this.floorNumber = const Value.absent(),
    this.categoryName = const Value.absent(),
    this.occupancyStatus = const Value.absent(),
    this.housekeepingStatus = const Value.absent(),
    this.maintenanceStatus = const Value.absent(),
    this.isActive = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalRoomsCompanion.insert({
    required String id,
    required String roomNumber,
    required int floorNumber,
    required String categoryName,
    this.occupancyStatus = const Value.absent(),
    this.housekeepingStatus = const Value.absent(),
    this.maintenanceStatus = const Value.absent(),
    this.isActive = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        roomNumber = Value(roomNumber),
        floorNumber = Value(floorNumber),
        categoryName = Value(categoryName);
  static Insertable<LocalRoom> custom({
    Expression<String>? id,
    Expression<String>? roomNumber,
    Expression<int>? floorNumber,
    Expression<String>? categoryName,
    Expression<String>? occupancyStatus,
    Expression<String>? housekeepingStatus,
    Expression<String>? maintenanceStatus,
    Expression<bool>? isActive,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (roomNumber != null) 'room_number': roomNumber,
      if (floorNumber != null) 'floor_number': floorNumber,
      if (categoryName != null) 'category_name': categoryName,
      if (occupancyStatus != null) 'occupancy_status': occupancyStatus,
      if (housekeepingStatus != null) 'housekeeping_status': housekeepingStatus,
      if (maintenanceStatus != null) 'maintenance_status': maintenanceStatus,
      if (isActive != null) 'is_active': isActive,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalRoomsCompanion copyWith(
      {Value<String>? id,
      Value<String>? roomNumber,
      Value<int>? floorNumber,
      Value<String>? categoryName,
      Value<String>? occupancyStatus,
      Value<String>? housekeepingStatus,
      Value<String>? maintenanceStatus,
      Value<bool>? isActive,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return LocalRoomsCompanion(
      id: id ?? this.id,
      roomNumber: roomNumber ?? this.roomNumber,
      floorNumber: floorNumber ?? this.floorNumber,
      categoryName: categoryName ?? this.categoryName,
      occupancyStatus: occupancyStatus ?? this.occupancyStatus,
      housekeepingStatus: housekeepingStatus ?? this.housekeepingStatus,
      maintenanceStatus: maintenanceStatus ?? this.maintenanceStatus,
      isActive: isActive ?? this.isActive,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (roomNumber.present) {
      map['room_number'] = Variable<String>(roomNumber.value);
    }
    if (floorNumber.present) {
      map['floor_number'] = Variable<int>(floorNumber.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    if (occupancyStatus.present) {
      map['occupancy_status'] = Variable<String>(occupancyStatus.value);
    }
    if (housekeepingStatus.present) {
      map['housekeeping_status'] = Variable<String>(housekeepingStatus.value);
    }
    if (maintenanceStatus.present) {
      map['maintenance_status'] = Variable<String>(maintenanceStatus.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalRoomsCompanion(')
          ..write('id: $id, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('floorNumber: $floorNumber, ')
          ..write('categoryName: $categoryName, ')
          ..write('occupancyStatus: $occupancyStatus, ')
          ..write('housekeepingStatus: $housekeepingStatus, ')
          ..write('maintenanceStatus: $maintenanceStatus, ')
          ..write('isActive: $isActive, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalGuestsTable extends LocalGuests
    with TableInfo<$LocalGuestsTable, LocalGuest> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalGuestsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressStreetMeta =
      const VerificationMeta('addressStreet');
  @override
  late final GeneratedColumn<String> addressStreet = GeneratedColumn<String>(
      'address_street', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('India'));
  static const VerificationMeta _pincodeMeta =
      const VerificationMeta('pincode');
  @override
  late final GeneratedColumn<String> pincode = GeneratedColumn<String>(
      'pincode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _companyNameMeta =
      const VerificationMeta('companyName');
  @override
  late final GeneratedColumn<String> companyName = GeneratedColumn<String>(
      'company_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String> designation = GeneratedColumn<String>(
      'designation', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _companyGstinMeta =
      const VerificationMeta('companyGstin');
  @override
  late final GeneratedColumn<String> companyGstin = GeneratedColumn<String>(
      'company_gstin', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _idProofTypeMeta =
      const VerificationMeta('idProofType');
  @override
  late final GeneratedColumn<String> idProofType = GeneratedColumn<String>(
      'id_proof_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _idProofNumberMeta =
      const VerificationMeta('idProofNumber');
  @override
  late final GeneratedColumn<String> idProofNumber = GeneratedColumn<String>(
      'id_proof_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isForeignNationalMeta =
      const VerificationMeta('isForeignNational');
  @override
  late final GeneratedColumn<bool> isForeignNational = GeneratedColumn<bool>(
      'is_foreign_national', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_foreign_national" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _passportNumberMeta =
      const VerificationMeta('passportNumber');
  @override
  late final GeneratedColumn<String> passportNumber = GeneratedColumn<String>(
      'passport_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _visaNumberMeta =
      const VerificationMeta('visaNumber');
  @override
  late final GeneratedColumn<String> visaNumber = GeneratedColumn<String>(
      'visa_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nationalityMeta =
      const VerificationMeta('nationality');
  @override
  late final GeneratedColumn<String> nationality = GeneratedColumn<String>(
      'nationality', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Indian'));
  static const VerificationMeta _vipStatusMeta =
      const VerificationMeta('vipStatus');
  @override
  late final GeneratedColumn<bool> vipStatus = GeneratedColumn<bool>(
      'vip_status', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("vip_status" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fullName,
        phone,
        email,
        addressStreet,
        city,
        state,
        country,
        pincode,
        companyName,
        designation,
        companyGstin,
        idProofType,
        idProofNumber,
        isForeignNational,
        passportNumber,
        visaNumber,
        nationality,
        vipStatus,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_guests';
  @override
  VerificationContext validateIntegrity(Insertable<LocalGuest> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('address_street')) {
      context.handle(
          _addressStreetMeta,
          addressStreet.isAcceptableOrUnknown(
              data['address_street']!, _addressStreetMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('pincode')) {
      context.handle(_pincodeMeta,
          pincode.isAcceptableOrUnknown(data['pincode']!, _pincodeMeta));
    }
    if (data.containsKey('company_name')) {
      context.handle(
          _companyNameMeta,
          companyName.isAcceptableOrUnknown(
              data['company_name']!, _companyNameMeta));
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    }
    if (data.containsKey('company_gstin')) {
      context.handle(
          _companyGstinMeta,
          companyGstin.isAcceptableOrUnknown(
              data['company_gstin']!, _companyGstinMeta));
    }
    if (data.containsKey('id_proof_type')) {
      context.handle(
          _idProofTypeMeta,
          idProofType.isAcceptableOrUnknown(
              data['id_proof_type']!, _idProofTypeMeta));
    }
    if (data.containsKey('id_proof_number')) {
      context.handle(
          _idProofNumberMeta,
          idProofNumber.isAcceptableOrUnknown(
              data['id_proof_number']!, _idProofNumberMeta));
    }
    if (data.containsKey('is_foreign_national')) {
      context.handle(
          _isForeignNationalMeta,
          isForeignNational.isAcceptableOrUnknown(
              data['is_foreign_national']!, _isForeignNationalMeta));
    }
    if (data.containsKey('passport_number')) {
      context.handle(
          _passportNumberMeta,
          passportNumber.isAcceptableOrUnknown(
              data['passport_number']!, _passportNumberMeta));
    }
    if (data.containsKey('visa_number')) {
      context.handle(
          _visaNumberMeta,
          visaNumber.isAcceptableOrUnknown(
              data['visa_number']!, _visaNumberMeta));
    }
    if (data.containsKey('nationality')) {
      context.handle(
          _nationalityMeta,
          nationality.isAcceptableOrUnknown(
              data['nationality']!, _nationalityMeta));
    }
    if (data.containsKey('vip_status')) {
      context.handle(_vipStatusMeta,
          vipStatus.isAcceptableOrUnknown(data['vip_status']!, _vipStatusMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalGuest map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalGuest(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      addressStreet: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address_street']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country'])!,
      pincode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pincode']),
      companyName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_name']),
      designation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}designation']),
      companyGstin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_gstin']),
      idProofType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id_proof_type']),
      idProofNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id_proof_number']),
      isForeignNational: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_foreign_national'])!,
      passportNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}passport_number']),
      visaNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}visa_number']),
      nationality: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nationality'])!,
      vipStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}vip_status'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $LocalGuestsTable createAlias(String alias) {
    return $LocalGuestsTable(attachedDatabase, alias);
  }
}

class LocalGuest extends DataClass implements Insertable<LocalGuest> {
  final String id;
  final String fullName;
  final String phone;
  final String? email;
  final String? addressStreet;
  final String? city;
  final String? state;
  final String country;
  final String? pincode;
  final String? companyName;
  final String? designation;
  final String? companyGstin;
  final String? idProofType;
  final String? idProofNumber;
  final bool isForeignNational;
  final String? passportNumber;
  final String? visaNumber;
  final String nationality;
  final bool vipStatus;
  final String? notes;
  const LocalGuest(
      {required this.id,
      required this.fullName,
      required this.phone,
      this.email,
      this.addressStreet,
      this.city,
      this.state,
      required this.country,
      this.pincode,
      this.companyName,
      this.designation,
      this.companyGstin,
      this.idProofType,
      this.idProofNumber,
      required this.isForeignNational,
      this.passportNumber,
      this.visaNumber,
      required this.nationality,
      required this.vipStatus,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['full_name'] = Variable<String>(fullName);
    map['phone'] = Variable<String>(phone);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || addressStreet != null) {
      map['address_street'] = Variable<String>(addressStreet);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    map['country'] = Variable<String>(country);
    if (!nullToAbsent || pincode != null) {
      map['pincode'] = Variable<String>(pincode);
    }
    if (!nullToAbsent || companyName != null) {
      map['company_name'] = Variable<String>(companyName);
    }
    if (!nullToAbsent || designation != null) {
      map['designation'] = Variable<String>(designation);
    }
    if (!nullToAbsent || companyGstin != null) {
      map['company_gstin'] = Variable<String>(companyGstin);
    }
    if (!nullToAbsent || idProofType != null) {
      map['id_proof_type'] = Variable<String>(idProofType);
    }
    if (!nullToAbsent || idProofNumber != null) {
      map['id_proof_number'] = Variable<String>(idProofNumber);
    }
    map['is_foreign_national'] = Variable<bool>(isForeignNational);
    if (!nullToAbsent || passportNumber != null) {
      map['passport_number'] = Variable<String>(passportNumber);
    }
    if (!nullToAbsent || visaNumber != null) {
      map['visa_number'] = Variable<String>(visaNumber);
    }
    map['nationality'] = Variable<String>(nationality);
    map['vip_status'] = Variable<bool>(vipStatus);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  LocalGuestsCompanion toCompanion(bool nullToAbsent) {
    return LocalGuestsCompanion(
      id: Value(id),
      fullName: Value(fullName),
      phone: Value(phone),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      addressStreet: addressStreet == null && nullToAbsent
          ? const Value.absent()
          : Value(addressStreet),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      country: Value(country),
      pincode: pincode == null && nullToAbsent
          ? const Value.absent()
          : Value(pincode),
      companyName: companyName == null && nullToAbsent
          ? const Value.absent()
          : Value(companyName),
      designation: designation == null && nullToAbsent
          ? const Value.absent()
          : Value(designation),
      companyGstin: companyGstin == null && nullToAbsent
          ? const Value.absent()
          : Value(companyGstin),
      idProofType: idProofType == null && nullToAbsent
          ? const Value.absent()
          : Value(idProofType),
      idProofNumber: idProofNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(idProofNumber),
      isForeignNational: Value(isForeignNational),
      passportNumber: passportNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(passportNumber),
      visaNumber: visaNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(visaNumber),
      nationality: Value(nationality),
      vipStatus: Value(vipStatus),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory LocalGuest.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalGuest(
      id: serializer.fromJson<String>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      phone: serializer.fromJson<String>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      addressStreet: serializer.fromJson<String?>(json['addressStreet']),
      city: serializer.fromJson<String?>(json['city']),
      state: serializer.fromJson<String?>(json['state']),
      country: serializer.fromJson<String>(json['country']),
      pincode: serializer.fromJson<String?>(json['pincode']),
      companyName: serializer.fromJson<String?>(json['companyName']),
      designation: serializer.fromJson<String?>(json['designation']),
      companyGstin: serializer.fromJson<String?>(json['companyGstin']),
      idProofType: serializer.fromJson<String?>(json['idProofType']),
      idProofNumber: serializer.fromJson<String?>(json['idProofNumber']),
      isForeignNational: serializer.fromJson<bool>(json['isForeignNational']),
      passportNumber: serializer.fromJson<String?>(json['passportNumber']),
      visaNumber: serializer.fromJson<String?>(json['visaNumber']),
      nationality: serializer.fromJson<String>(json['nationality']),
      vipStatus: serializer.fromJson<bool>(json['vipStatus']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fullName': serializer.toJson<String>(fullName),
      'phone': serializer.toJson<String>(phone),
      'email': serializer.toJson<String?>(email),
      'addressStreet': serializer.toJson<String?>(addressStreet),
      'city': serializer.toJson<String?>(city),
      'state': serializer.toJson<String?>(state),
      'country': serializer.toJson<String>(country),
      'pincode': serializer.toJson<String?>(pincode),
      'companyName': serializer.toJson<String?>(companyName),
      'designation': serializer.toJson<String?>(designation),
      'companyGstin': serializer.toJson<String?>(companyGstin),
      'idProofType': serializer.toJson<String?>(idProofType),
      'idProofNumber': serializer.toJson<String?>(idProofNumber),
      'isForeignNational': serializer.toJson<bool>(isForeignNational),
      'passportNumber': serializer.toJson<String?>(passportNumber),
      'visaNumber': serializer.toJson<String?>(visaNumber),
      'nationality': serializer.toJson<String>(nationality),
      'vipStatus': serializer.toJson<bool>(vipStatus),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  LocalGuest copyWith(
          {String? id,
          String? fullName,
          String? phone,
          Value<String?> email = const Value.absent(),
          Value<String?> addressStreet = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> state = const Value.absent(),
          String? country,
          Value<String?> pincode = const Value.absent(),
          Value<String?> companyName = const Value.absent(),
          Value<String?> designation = const Value.absent(),
          Value<String?> companyGstin = const Value.absent(),
          Value<String?> idProofType = const Value.absent(),
          Value<String?> idProofNumber = const Value.absent(),
          bool? isForeignNational,
          Value<String?> passportNumber = const Value.absent(),
          Value<String?> visaNumber = const Value.absent(),
          String? nationality,
          bool? vipStatus,
          Value<String?> notes = const Value.absent()}) =>
      LocalGuest(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        phone: phone ?? this.phone,
        email: email.present ? email.value : this.email,
        addressStreet:
            addressStreet.present ? addressStreet.value : this.addressStreet,
        city: city.present ? city.value : this.city,
        state: state.present ? state.value : this.state,
        country: country ?? this.country,
        pincode: pincode.present ? pincode.value : this.pincode,
        companyName: companyName.present ? companyName.value : this.companyName,
        designation: designation.present ? designation.value : this.designation,
        companyGstin:
            companyGstin.present ? companyGstin.value : this.companyGstin,
        idProofType: idProofType.present ? idProofType.value : this.idProofType,
        idProofNumber:
            idProofNumber.present ? idProofNumber.value : this.idProofNumber,
        isForeignNational: isForeignNational ?? this.isForeignNational,
        passportNumber:
            passportNumber.present ? passportNumber.value : this.passportNumber,
        visaNumber: visaNumber.present ? visaNumber.value : this.visaNumber,
        nationality: nationality ?? this.nationality,
        vipStatus: vipStatus ?? this.vipStatus,
        notes: notes.present ? notes.value : this.notes,
      );
  LocalGuest copyWithCompanion(LocalGuestsCompanion data) {
    return LocalGuest(
      id: data.id.present ? data.id.value : this.id,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      addressStreet: data.addressStreet.present
          ? data.addressStreet.value
          : this.addressStreet,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      country: data.country.present ? data.country.value : this.country,
      pincode: data.pincode.present ? data.pincode.value : this.pincode,
      companyName:
          data.companyName.present ? data.companyName.value : this.companyName,
      designation:
          data.designation.present ? data.designation.value : this.designation,
      companyGstin: data.companyGstin.present
          ? data.companyGstin.value
          : this.companyGstin,
      idProofType:
          data.idProofType.present ? data.idProofType.value : this.idProofType,
      idProofNumber: data.idProofNumber.present
          ? data.idProofNumber.value
          : this.idProofNumber,
      isForeignNational: data.isForeignNational.present
          ? data.isForeignNational.value
          : this.isForeignNational,
      passportNumber: data.passportNumber.present
          ? data.passportNumber.value
          : this.passportNumber,
      visaNumber:
          data.visaNumber.present ? data.visaNumber.value : this.visaNumber,
      nationality:
          data.nationality.present ? data.nationality.value : this.nationality,
      vipStatus: data.vipStatus.present ? data.vipStatus.value : this.vipStatus,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalGuest(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('addressStreet: $addressStreet, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('pincode: $pincode, ')
          ..write('companyName: $companyName, ')
          ..write('designation: $designation, ')
          ..write('companyGstin: $companyGstin, ')
          ..write('idProofType: $idProofType, ')
          ..write('idProofNumber: $idProofNumber, ')
          ..write('isForeignNational: $isForeignNational, ')
          ..write('passportNumber: $passportNumber, ')
          ..write('visaNumber: $visaNumber, ')
          ..write('nationality: $nationality, ')
          ..write('vipStatus: $vipStatus, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      fullName,
      phone,
      email,
      addressStreet,
      city,
      state,
      country,
      pincode,
      companyName,
      designation,
      companyGstin,
      idProofType,
      idProofNumber,
      isForeignNational,
      passportNumber,
      visaNumber,
      nationality,
      vipStatus,
      notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalGuest &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.addressStreet == this.addressStreet &&
          other.city == this.city &&
          other.state == this.state &&
          other.country == this.country &&
          other.pincode == this.pincode &&
          other.companyName == this.companyName &&
          other.designation == this.designation &&
          other.companyGstin == this.companyGstin &&
          other.idProofType == this.idProofType &&
          other.idProofNumber == this.idProofNumber &&
          other.isForeignNational == this.isForeignNational &&
          other.passportNumber == this.passportNumber &&
          other.visaNumber == this.visaNumber &&
          other.nationality == this.nationality &&
          other.vipStatus == this.vipStatus &&
          other.notes == this.notes);
}

class LocalGuestsCompanion extends UpdateCompanion<LocalGuest> {
  final Value<String> id;
  final Value<String> fullName;
  final Value<String> phone;
  final Value<String?> email;
  final Value<String?> addressStreet;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String> country;
  final Value<String?> pincode;
  final Value<String?> companyName;
  final Value<String?> designation;
  final Value<String?> companyGstin;
  final Value<String?> idProofType;
  final Value<String?> idProofNumber;
  final Value<bool> isForeignNational;
  final Value<String?> passportNumber;
  final Value<String?> visaNumber;
  final Value<String> nationality;
  final Value<bool> vipStatus;
  final Value<String?> notes;
  final Value<int> rowid;
  const LocalGuestsCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.addressStreet = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.pincode = const Value.absent(),
    this.companyName = const Value.absent(),
    this.designation = const Value.absent(),
    this.companyGstin = const Value.absent(),
    this.idProofType = const Value.absent(),
    this.idProofNumber = const Value.absent(),
    this.isForeignNational = const Value.absent(),
    this.passportNumber = const Value.absent(),
    this.visaNumber = const Value.absent(),
    this.nationality = const Value.absent(),
    this.vipStatus = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalGuestsCompanion.insert({
    required String id,
    required String fullName,
    required String phone,
    this.email = const Value.absent(),
    this.addressStreet = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.pincode = const Value.absent(),
    this.companyName = const Value.absent(),
    this.designation = const Value.absent(),
    this.companyGstin = const Value.absent(),
    this.idProofType = const Value.absent(),
    this.idProofNumber = const Value.absent(),
    this.isForeignNational = const Value.absent(),
    this.passportNumber = const Value.absent(),
    this.visaNumber = const Value.absent(),
    this.nationality = const Value.absent(),
    this.vipStatus = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        fullName = Value(fullName),
        phone = Value(phone);
  static Insertable<LocalGuest> custom({
    Expression<String>? id,
    Expression<String>? fullName,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? addressStreet,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? country,
    Expression<String>? pincode,
    Expression<String>? companyName,
    Expression<String>? designation,
    Expression<String>? companyGstin,
    Expression<String>? idProofType,
    Expression<String>? idProofNumber,
    Expression<bool>? isForeignNational,
    Expression<String>? passportNumber,
    Expression<String>? visaNumber,
    Expression<String>? nationality,
    Expression<bool>? vipStatus,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (addressStreet != null) 'address_street': addressStreet,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (pincode != null) 'pincode': pincode,
      if (companyName != null) 'company_name': companyName,
      if (designation != null) 'designation': designation,
      if (companyGstin != null) 'company_gstin': companyGstin,
      if (idProofType != null) 'id_proof_type': idProofType,
      if (idProofNumber != null) 'id_proof_number': idProofNumber,
      if (isForeignNational != null) 'is_foreign_national': isForeignNational,
      if (passportNumber != null) 'passport_number': passportNumber,
      if (visaNumber != null) 'visa_number': visaNumber,
      if (nationality != null) 'nationality': nationality,
      if (vipStatus != null) 'vip_status': vipStatus,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalGuestsCompanion copyWith(
      {Value<String>? id,
      Value<String>? fullName,
      Value<String>? phone,
      Value<String?>? email,
      Value<String?>? addressStreet,
      Value<String?>? city,
      Value<String?>? state,
      Value<String>? country,
      Value<String?>? pincode,
      Value<String?>? companyName,
      Value<String?>? designation,
      Value<String?>? companyGstin,
      Value<String?>? idProofType,
      Value<String?>? idProofNumber,
      Value<bool>? isForeignNational,
      Value<String?>? passportNumber,
      Value<String?>? visaNumber,
      Value<String>? nationality,
      Value<bool>? vipStatus,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return LocalGuestsCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      addressStreet: addressStreet ?? this.addressStreet,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      companyName: companyName ?? this.companyName,
      designation: designation ?? this.designation,
      companyGstin: companyGstin ?? this.companyGstin,
      idProofType: idProofType ?? this.idProofType,
      idProofNumber: idProofNumber ?? this.idProofNumber,
      isForeignNational: isForeignNational ?? this.isForeignNational,
      passportNumber: passportNumber ?? this.passportNumber,
      visaNumber: visaNumber ?? this.visaNumber,
      nationality: nationality ?? this.nationality,
      vipStatus: vipStatus ?? this.vipStatus,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (addressStreet.present) {
      map['address_street'] = Variable<String>(addressStreet.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (pincode.present) {
      map['pincode'] = Variable<String>(pincode.value);
    }
    if (companyName.present) {
      map['company_name'] = Variable<String>(companyName.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (companyGstin.present) {
      map['company_gstin'] = Variable<String>(companyGstin.value);
    }
    if (idProofType.present) {
      map['id_proof_type'] = Variable<String>(idProofType.value);
    }
    if (idProofNumber.present) {
      map['id_proof_number'] = Variable<String>(idProofNumber.value);
    }
    if (isForeignNational.present) {
      map['is_foreign_national'] = Variable<bool>(isForeignNational.value);
    }
    if (passportNumber.present) {
      map['passport_number'] = Variable<String>(passportNumber.value);
    }
    if (visaNumber.present) {
      map['visa_number'] = Variable<String>(visaNumber.value);
    }
    if (nationality.present) {
      map['nationality'] = Variable<String>(nationality.value);
    }
    if (vipStatus.present) {
      map['vip_status'] = Variable<bool>(vipStatus.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalGuestsCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('addressStreet: $addressStreet, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('pincode: $pincode, ')
          ..write('companyName: $companyName, ')
          ..write('designation: $designation, ')
          ..write('companyGstin: $companyGstin, ')
          ..write('idProofType: $idProofType, ')
          ..write('idProofNumber: $idProofNumber, ')
          ..write('isForeignNational: $isForeignNational, ')
          ..write('passportNumber: $passportNumber, ')
          ..write('visaNumber: $visaNumber, ')
          ..write('nationality: $nationality, ')
          ..write('vipStatus: $vipStatus, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalReservationsTable extends LocalReservations
    with TableInfo<$LocalReservationsTable, LocalReservation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalReservationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reservationCodeMeta =
      const VerificationMeta('reservationCode');
  @override
  late final GeneratedColumn<String> reservationCode = GeneratedColumn<String>(
      'reservation_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _guestIdMeta =
      const VerificationMeta('guestId');
  @override
  late final GeneratedColumn<String> guestId = GeneratedColumn<String>(
      'guest_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _guestNameMeta =
      const VerificationMeta('guestName');
  @override
  late final GeneratedColumn<String> guestName = GeneratedColumn<String>(
      'guest_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _guestPhoneMeta =
      const VerificationMeta('guestPhone');
  @override
  late final GeneratedColumn<String> guestPhone = GeneratedColumn<String>(
      'guest_phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bookingSourceMeta =
      const VerificationMeta('bookingSource');
  @override
  late final GeneratedColumn<String> bookingSource = GeneratedColumn<String>(
      'booking_source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _externalBookingReferenceMeta =
      const VerificationMeta('externalBookingReference');
  @override
  late final GeneratedColumn<String> externalBookingReference =
      GeneratedColumn<String>('external_booking_reference', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryNameMeta =
      const VerificationMeta('categoryName');
  @override
  late final GeneratedColumn<String> categoryName = GeneratedColumn<String>(
      'category_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _assignedRoomIdMeta =
      const VerificationMeta('assignedRoomId');
  @override
  late final GeneratedColumn<String> assignedRoomId = GeneratedColumn<String>(
      'assigned_room_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _assignedRoomNumberMeta =
      const VerificationMeta('assignedRoomNumber');
  @override
  late final GeneratedColumn<String> assignedRoomNumber =
      GeneratedColumn<String>('assigned_room_number', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _checkInDateMeta =
      const VerificationMeta('checkInDate');
  @override
  late final GeneratedColumn<DateTime> checkInDate = GeneratedColumn<DateTime>(
      'check_in_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _checkOutDateMeta =
      const VerificationMeta('checkOutDate');
  @override
  late final GeneratedColumn<DateTime> checkOutDate = GeneratedColumn<DateTime>(
      'check_out_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _occupancyTypeMeta =
      const VerificationMeta('occupancyType');
  @override
  late final GeneratedColumn<String> occupancyType = GeneratedColumn<String>(
      'occupancy_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('double'));
  static const VerificationMeta _adultsCountMeta =
      const VerificationMeta('adultsCount');
  @override
  late final GeneratedColumn<int> adultsCount = GeneratedColumn<int>(
      'adults_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _childrenCountMeta =
      const VerificationMeta('childrenCount');
  @override
  late final GeneratedColumn<int> childrenCount = GeneratedColumn<int>(
      'children_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _agreedNightlyTariffPaiseMeta =
      const VerificationMeta('agreedNightlyTariffPaise');
  @override
  late final GeneratedColumn<int> agreedNightlyTariffPaise =
      GeneratedColumn<int>('agreed_nightly_tariff_paise', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _advanceAmountPaidPaiseMeta =
      const VerificationMeta('advanceAmountPaidPaise');
  @override
  late final GeneratedColumn<int> advanceAmountPaidPaise = GeneratedColumn<int>(
      'advance_amount_paid_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('confirmed'));
  static const VerificationMeta _specialRequestsMeta =
      const VerificationMeta('specialRequests');
  @override
  late final GeneratedColumn<String> specialRequests = GeneratedColumn<String>(
      'special_requests', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        reservationCode,
        guestId,
        guestName,
        guestPhone,
        bookingSource,
        externalBookingReference,
        categoryName,
        assignedRoomId,
        assignedRoomNumber,
        checkInDate,
        checkOutDate,
        occupancyType,
        adultsCount,
        childrenCount,
        agreedNightlyTariffPaise,
        advanceAmountPaidPaise,
        status,
        specialRequests
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_reservations';
  @override
  VerificationContext validateIntegrity(Insertable<LocalReservation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('reservation_code')) {
      context.handle(
          _reservationCodeMeta,
          reservationCode.isAcceptableOrUnknown(
              data['reservation_code']!, _reservationCodeMeta));
    } else if (isInserting) {
      context.missing(_reservationCodeMeta);
    }
    if (data.containsKey('guest_id')) {
      context.handle(_guestIdMeta,
          guestId.isAcceptableOrUnknown(data['guest_id']!, _guestIdMeta));
    } else if (isInserting) {
      context.missing(_guestIdMeta);
    }
    if (data.containsKey('guest_name')) {
      context.handle(_guestNameMeta,
          guestName.isAcceptableOrUnknown(data['guest_name']!, _guestNameMeta));
    } else if (isInserting) {
      context.missing(_guestNameMeta);
    }
    if (data.containsKey('guest_phone')) {
      context.handle(
          _guestPhoneMeta,
          guestPhone.isAcceptableOrUnknown(
              data['guest_phone']!, _guestPhoneMeta));
    } else if (isInserting) {
      context.missing(_guestPhoneMeta);
    }
    if (data.containsKey('booking_source')) {
      context.handle(
          _bookingSourceMeta,
          bookingSource.isAcceptableOrUnknown(
              data['booking_source']!, _bookingSourceMeta));
    } else if (isInserting) {
      context.missing(_bookingSourceMeta);
    }
    if (data.containsKey('external_booking_reference')) {
      context.handle(
          _externalBookingReferenceMeta,
          externalBookingReference.isAcceptableOrUnknown(
              data['external_booking_reference']!,
              _externalBookingReferenceMeta));
    }
    if (data.containsKey('category_name')) {
      context.handle(
          _categoryNameMeta,
          categoryName.isAcceptableOrUnknown(
              data['category_name']!, _categoryNameMeta));
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    if (data.containsKey('assigned_room_id')) {
      context.handle(
          _assignedRoomIdMeta,
          assignedRoomId.isAcceptableOrUnknown(
              data['assigned_room_id']!, _assignedRoomIdMeta));
    }
    if (data.containsKey('assigned_room_number')) {
      context.handle(
          _assignedRoomNumberMeta,
          assignedRoomNumber.isAcceptableOrUnknown(
              data['assigned_room_number']!, _assignedRoomNumberMeta));
    }
    if (data.containsKey('check_in_date')) {
      context.handle(
          _checkInDateMeta,
          checkInDate.isAcceptableOrUnknown(
              data['check_in_date']!, _checkInDateMeta));
    } else if (isInserting) {
      context.missing(_checkInDateMeta);
    }
    if (data.containsKey('check_out_date')) {
      context.handle(
          _checkOutDateMeta,
          checkOutDate.isAcceptableOrUnknown(
              data['check_out_date']!, _checkOutDateMeta));
    } else if (isInserting) {
      context.missing(_checkOutDateMeta);
    }
    if (data.containsKey('occupancy_type')) {
      context.handle(
          _occupancyTypeMeta,
          occupancyType.isAcceptableOrUnknown(
              data['occupancy_type']!, _occupancyTypeMeta));
    }
    if (data.containsKey('adults_count')) {
      context.handle(
          _adultsCountMeta,
          adultsCount.isAcceptableOrUnknown(
              data['adults_count']!, _adultsCountMeta));
    }
    if (data.containsKey('children_count')) {
      context.handle(
          _childrenCountMeta,
          childrenCount.isAcceptableOrUnknown(
              data['children_count']!, _childrenCountMeta));
    }
    if (data.containsKey('agreed_nightly_tariff_paise')) {
      context.handle(
          _agreedNightlyTariffPaiseMeta,
          agreedNightlyTariffPaise.isAcceptableOrUnknown(
              data['agreed_nightly_tariff_paise']!,
              _agreedNightlyTariffPaiseMeta));
    } else if (isInserting) {
      context.missing(_agreedNightlyTariffPaiseMeta);
    }
    if (data.containsKey('advance_amount_paid_paise')) {
      context.handle(
          _advanceAmountPaidPaiseMeta,
          advanceAmountPaidPaise.isAcceptableOrUnknown(
              data['advance_amount_paid_paise']!, _advanceAmountPaidPaiseMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('special_requests')) {
      context.handle(
          _specialRequestsMeta,
          specialRequests.isAcceptableOrUnknown(
              data['special_requests']!, _specialRequestsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalReservation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalReservation(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      reservationCode: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}reservation_code'])!,
      guestId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guest_id'])!,
      guestName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guest_name'])!,
      guestPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guest_phone'])!,
      bookingSource: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}booking_source'])!,
      externalBookingReference: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}external_booking_reference']),
      categoryName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_name'])!,
      assignedRoomId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}assigned_room_id']),
      assignedRoomNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}assigned_room_number']),
      checkInDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}check_in_date'])!,
      checkOutDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}check_out_date'])!,
      occupancyType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}occupancy_type'])!,
      adultsCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}adults_count'])!,
      childrenCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}children_count'])!,
      agreedNightlyTariffPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}agreed_nightly_tariff_paise'])!,
      advanceAmountPaidPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}advance_amount_paid_paise'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      specialRequests: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}special_requests']),
    );
  }

  @override
  $LocalReservationsTable createAlias(String alias) {
    return $LocalReservationsTable(attachedDatabase, alias);
  }
}

class LocalReservation extends DataClass
    implements Insertable<LocalReservation> {
  final String id;
  final String reservationCode;
  final String guestId;
  final String guestName;
  final String guestPhone;
  final String bookingSource;
  final String? externalBookingReference;
  final String categoryName;
  final String? assignedRoomId;
  final String? assignedRoomNumber;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final String occupancyType;
  final int adultsCount;
  final int childrenCount;
  final int agreedNightlyTariffPaise;
  final int advanceAmountPaidPaise;
  final String status;
  final String? specialRequests;
  const LocalReservation(
      {required this.id,
      required this.reservationCode,
      required this.guestId,
      required this.guestName,
      required this.guestPhone,
      required this.bookingSource,
      this.externalBookingReference,
      required this.categoryName,
      this.assignedRoomId,
      this.assignedRoomNumber,
      required this.checkInDate,
      required this.checkOutDate,
      required this.occupancyType,
      required this.adultsCount,
      required this.childrenCount,
      required this.agreedNightlyTariffPaise,
      required this.advanceAmountPaidPaise,
      required this.status,
      this.specialRequests});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['reservation_code'] = Variable<String>(reservationCode);
    map['guest_id'] = Variable<String>(guestId);
    map['guest_name'] = Variable<String>(guestName);
    map['guest_phone'] = Variable<String>(guestPhone);
    map['booking_source'] = Variable<String>(bookingSource);
    if (!nullToAbsent || externalBookingReference != null) {
      map['external_booking_reference'] =
          Variable<String>(externalBookingReference);
    }
    map['category_name'] = Variable<String>(categoryName);
    if (!nullToAbsent || assignedRoomId != null) {
      map['assigned_room_id'] = Variable<String>(assignedRoomId);
    }
    if (!nullToAbsent || assignedRoomNumber != null) {
      map['assigned_room_number'] = Variable<String>(assignedRoomNumber);
    }
    map['check_in_date'] = Variable<DateTime>(checkInDate);
    map['check_out_date'] = Variable<DateTime>(checkOutDate);
    map['occupancy_type'] = Variable<String>(occupancyType);
    map['adults_count'] = Variable<int>(adultsCount);
    map['children_count'] = Variable<int>(childrenCount);
    map['agreed_nightly_tariff_paise'] =
        Variable<int>(agreedNightlyTariffPaise);
    map['advance_amount_paid_paise'] = Variable<int>(advanceAmountPaidPaise);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || specialRequests != null) {
      map['special_requests'] = Variable<String>(specialRequests);
    }
    return map;
  }

  LocalReservationsCompanion toCompanion(bool nullToAbsent) {
    return LocalReservationsCompanion(
      id: Value(id),
      reservationCode: Value(reservationCode),
      guestId: Value(guestId),
      guestName: Value(guestName),
      guestPhone: Value(guestPhone),
      bookingSource: Value(bookingSource),
      externalBookingReference: externalBookingReference == null && nullToAbsent
          ? const Value.absent()
          : Value(externalBookingReference),
      categoryName: Value(categoryName),
      assignedRoomId: assignedRoomId == null && nullToAbsent
          ? const Value.absent()
          : Value(assignedRoomId),
      assignedRoomNumber: assignedRoomNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(assignedRoomNumber),
      checkInDate: Value(checkInDate),
      checkOutDate: Value(checkOutDate),
      occupancyType: Value(occupancyType),
      adultsCount: Value(adultsCount),
      childrenCount: Value(childrenCount),
      agreedNightlyTariffPaise: Value(agreedNightlyTariffPaise),
      advanceAmountPaidPaise: Value(advanceAmountPaidPaise),
      status: Value(status),
      specialRequests: specialRequests == null && nullToAbsent
          ? const Value.absent()
          : Value(specialRequests),
    );
  }

  factory LocalReservation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalReservation(
      id: serializer.fromJson<String>(json['id']),
      reservationCode: serializer.fromJson<String>(json['reservationCode']),
      guestId: serializer.fromJson<String>(json['guestId']),
      guestName: serializer.fromJson<String>(json['guestName']),
      guestPhone: serializer.fromJson<String>(json['guestPhone']),
      bookingSource: serializer.fromJson<String>(json['bookingSource']),
      externalBookingReference:
          serializer.fromJson<String?>(json['externalBookingReference']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
      assignedRoomId: serializer.fromJson<String?>(json['assignedRoomId']),
      assignedRoomNumber:
          serializer.fromJson<String?>(json['assignedRoomNumber']),
      checkInDate: serializer.fromJson<DateTime>(json['checkInDate']),
      checkOutDate: serializer.fromJson<DateTime>(json['checkOutDate']),
      occupancyType: serializer.fromJson<String>(json['occupancyType']),
      adultsCount: serializer.fromJson<int>(json['adultsCount']),
      childrenCount: serializer.fromJson<int>(json['childrenCount']),
      agreedNightlyTariffPaise:
          serializer.fromJson<int>(json['agreedNightlyTariffPaise']),
      advanceAmountPaidPaise:
          serializer.fromJson<int>(json['advanceAmountPaidPaise']),
      status: serializer.fromJson<String>(json['status']),
      specialRequests: serializer.fromJson<String?>(json['specialRequests']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'reservationCode': serializer.toJson<String>(reservationCode),
      'guestId': serializer.toJson<String>(guestId),
      'guestName': serializer.toJson<String>(guestName),
      'guestPhone': serializer.toJson<String>(guestPhone),
      'bookingSource': serializer.toJson<String>(bookingSource),
      'externalBookingReference':
          serializer.toJson<String?>(externalBookingReference),
      'categoryName': serializer.toJson<String>(categoryName),
      'assignedRoomId': serializer.toJson<String?>(assignedRoomId),
      'assignedRoomNumber': serializer.toJson<String?>(assignedRoomNumber),
      'checkInDate': serializer.toJson<DateTime>(checkInDate),
      'checkOutDate': serializer.toJson<DateTime>(checkOutDate),
      'occupancyType': serializer.toJson<String>(occupancyType),
      'adultsCount': serializer.toJson<int>(adultsCount),
      'childrenCount': serializer.toJson<int>(childrenCount),
      'agreedNightlyTariffPaise':
          serializer.toJson<int>(agreedNightlyTariffPaise),
      'advanceAmountPaidPaise': serializer.toJson<int>(advanceAmountPaidPaise),
      'status': serializer.toJson<String>(status),
      'specialRequests': serializer.toJson<String?>(specialRequests),
    };
  }

  LocalReservation copyWith(
          {String? id,
          String? reservationCode,
          String? guestId,
          String? guestName,
          String? guestPhone,
          String? bookingSource,
          Value<String?> externalBookingReference = const Value.absent(),
          String? categoryName,
          Value<String?> assignedRoomId = const Value.absent(),
          Value<String?> assignedRoomNumber = const Value.absent(),
          DateTime? checkInDate,
          DateTime? checkOutDate,
          String? occupancyType,
          int? adultsCount,
          int? childrenCount,
          int? agreedNightlyTariffPaise,
          int? advanceAmountPaidPaise,
          String? status,
          Value<String?> specialRequests = const Value.absent()}) =>
      LocalReservation(
        id: id ?? this.id,
        reservationCode: reservationCode ?? this.reservationCode,
        guestId: guestId ?? this.guestId,
        guestName: guestName ?? this.guestName,
        guestPhone: guestPhone ?? this.guestPhone,
        bookingSource: bookingSource ?? this.bookingSource,
        externalBookingReference: externalBookingReference.present
            ? externalBookingReference.value
            : this.externalBookingReference,
        categoryName: categoryName ?? this.categoryName,
        assignedRoomId:
            assignedRoomId.present ? assignedRoomId.value : this.assignedRoomId,
        assignedRoomNumber: assignedRoomNumber.present
            ? assignedRoomNumber.value
            : this.assignedRoomNumber,
        checkInDate: checkInDate ?? this.checkInDate,
        checkOutDate: checkOutDate ?? this.checkOutDate,
        occupancyType: occupancyType ?? this.occupancyType,
        adultsCount: adultsCount ?? this.adultsCount,
        childrenCount: childrenCount ?? this.childrenCount,
        agreedNightlyTariffPaise:
            agreedNightlyTariffPaise ?? this.agreedNightlyTariffPaise,
        advanceAmountPaidPaise:
            advanceAmountPaidPaise ?? this.advanceAmountPaidPaise,
        status: status ?? this.status,
        specialRequests: specialRequests.present
            ? specialRequests.value
            : this.specialRequests,
      );
  LocalReservation copyWithCompanion(LocalReservationsCompanion data) {
    return LocalReservation(
      id: data.id.present ? data.id.value : this.id,
      reservationCode: data.reservationCode.present
          ? data.reservationCode.value
          : this.reservationCode,
      guestId: data.guestId.present ? data.guestId.value : this.guestId,
      guestName: data.guestName.present ? data.guestName.value : this.guestName,
      guestPhone:
          data.guestPhone.present ? data.guestPhone.value : this.guestPhone,
      bookingSource: data.bookingSource.present
          ? data.bookingSource.value
          : this.bookingSource,
      externalBookingReference: data.externalBookingReference.present
          ? data.externalBookingReference.value
          : this.externalBookingReference,
      categoryName: data.categoryName.present
          ? data.categoryName.value
          : this.categoryName,
      assignedRoomId: data.assignedRoomId.present
          ? data.assignedRoomId.value
          : this.assignedRoomId,
      assignedRoomNumber: data.assignedRoomNumber.present
          ? data.assignedRoomNumber.value
          : this.assignedRoomNumber,
      checkInDate:
          data.checkInDate.present ? data.checkInDate.value : this.checkInDate,
      checkOutDate: data.checkOutDate.present
          ? data.checkOutDate.value
          : this.checkOutDate,
      occupancyType: data.occupancyType.present
          ? data.occupancyType.value
          : this.occupancyType,
      adultsCount:
          data.adultsCount.present ? data.adultsCount.value : this.adultsCount,
      childrenCount: data.childrenCount.present
          ? data.childrenCount.value
          : this.childrenCount,
      agreedNightlyTariffPaise: data.agreedNightlyTariffPaise.present
          ? data.agreedNightlyTariffPaise.value
          : this.agreedNightlyTariffPaise,
      advanceAmountPaidPaise: data.advanceAmountPaidPaise.present
          ? data.advanceAmountPaidPaise.value
          : this.advanceAmountPaidPaise,
      status: data.status.present ? data.status.value : this.status,
      specialRequests: data.specialRequests.present
          ? data.specialRequests.value
          : this.specialRequests,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalReservation(')
          ..write('id: $id, ')
          ..write('reservationCode: $reservationCode, ')
          ..write('guestId: $guestId, ')
          ..write('guestName: $guestName, ')
          ..write('guestPhone: $guestPhone, ')
          ..write('bookingSource: $bookingSource, ')
          ..write('externalBookingReference: $externalBookingReference, ')
          ..write('categoryName: $categoryName, ')
          ..write('assignedRoomId: $assignedRoomId, ')
          ..write('assignedRoomNumber: $assignedRoomNumber, ')
          ..write('checkInDate: $checkInDate, ')
          ..write('checkOutDate: $checkOutDate, ')
          ..write('occupancyType: $occupancyType, ')
          ..write('adultsCount: $adultsCount, ')
          ..write('childrenCount: $childrenCount, ')
          ..write('agreedNightlyTariffPaise: $agreedNightlyTariffPaise, ')
          ..write('advanceAmountPaidPaise: $advanceAmountPaidPaise, ')
          ..write('status: $status, ')
          ..write('specialRequests: $specialRequests')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      reservationCode,
      guestId,
      guestName,
      guestPhone,
      bookingSource,
      externalBookingReference,
      categoryName,
      assignedRoomId,
      assignedRoomNumber,
      checkInDate,
      checkOutDate,
      occupancyType,
      adultsCount,
      childrenCount,
      agreedNightlyTariffPaise,
      advanceAmountPaidPaise,
      status,
      specialRequests);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalReservation &&
          other.id == this.id &&
          other.reservationCode == this.reservationCode &&
          other.guestId == this.guestId &&
          other.guestName == this.guestName &&
          other.guestPhone == this.guestPhone &&
          other.bookingSource == this.bookingSource &&
          other.externalBookingReference == this.externalBookingReference &&
          other.categoryName == this.categoryName &&
          other.assignedRoomId == this.assignedRoomId &&
          other.assignedRoomNumber == this.assignedRoomNumber &&
          other.checkInDate == this.checkInDate &&
          other.checkOutDate == this.checkOutDate &&
          other.occupancyType == this.occupancyType &&
          other.adultsCount == this.adultsCount &&
          other.childrenCount == this.childrenCount &&
          other.agreedNightlyTariffPaise == this.agreedNightlyTariffPaise &&
          other.advanceAmountPaidPaise == this.advanceAmountPaidPaise &&
          other.status == this.status &&
          other.specialRequests == this.specialRequests);
}

class LocalReservationsCompanion extends UpdateCompanion<LocalReservation> {
  final Value<String> id;
  final Value<String> reservationCode;
  final Value<String> guestId;
  final Value<String> guestName;
  final Value<String> guestPhone;
  final Value<String> bookingSource;
  final Value<String?> externalBookingReference;
  final Value<String> categoryName;
  final Value<String?> assignedRoomId;
  final Value<String?> assignedRoomNumber;
  final Value<DateTime> checkInDate;
  final Value<DateTime> checkOutDate;
  final Value<String> occupancyType;
  final Value<int> adultsCount;
  final Value<int> childrenCount;
  final Value<int> agreedNightlyTariffPaise;
  final Value<int> advanceAmountPaidPaise;
  final Value<String> status;
  final Value<String?> specialRequests;
  final Value<int> rowid;
  const LocalReservationsCompanion({
    this.id = const Value.absent(),
    this.reservationCode = const Value.absent(),
    this.guestId = const Value.absent(),
    this.guestName = const Value.absent(),
    this.guestPhone = const Value.absent(),
    this.bookingSource = const Value.absent(),
    this.externalBookingReference = const Value.absent(),
    this.categoryName = const Value.absent(),
    this.assignedRoomId = const Value.absent(),
    this.assignedRoomNumber = const Value.absent(),
    this.checkInDate = const Value.absent(),
    this.checkOutDate = const Value.absent(),
    this.occupancyType = const Value.absent(),
    this.adultsCount = const Value.absent(),
    this.childrenCount = const Value.absent(),
    this.agreedNightlyTariffPaise = const Value.absent(),
    this.advanceAmountPaidPaise = const Value.absent(),
    this.status = const Value.absent(),
    this.specialRequests = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalReservationsCompanion.insert({
    required String id,
    required String reservationCode,
    required String guestId,
    required String guestName,
    required String guestPhone,
    required String bookingSource,
    this.externalBookingReference = const Value.absent(),
    required String categoryName,
    this.assignedRoomId = const Value.absent(),
    this.assignedRoomNumber = const Value.absent(),
    required DateTime checkInDate,
    required DateTime checkOutDate,
    this.occupancyType = const Value.absent(),
    this.adultsCount = const Value.absent(),
    this.childrenCount = const Value.absent(),
    required int agreedNightlyTariffPaise,
    this.advanceAmountPaidPaise = const Value.absent(),
    this.status = const Value.absent(),
    this.specialRequests = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        reservationCode = Value(reservationCode),
        guestId = Value(guestId),
        guestName = Value(guestName),
        guestPhone = Value(guestPhone),
        bookingSource = Value(bookingSource),
        categoryName = Value(categoryName),
        checkInDate = Value(checkInDate),
        checkOutDate = Value(checkOutDate),
        agreedNightlyTariffPaise = Value(agreedNightlyTariffPaise);
  static Insertable<LocalReservation> custom({
    Expression<String>? id,
    Expression<String>? reservationCode,
    Expression<String>? guestId,
    Expression<String>? guestName,
    Expression<String>? guestPhone,
    Expression<String>? bookingSource,
    Expression<String>? externalBookingReference,
    Expression<String>? categoryName,
    Expression<String>? assignedRoomId,
    Expression<String>? assignedRoomNumber,
    Expression<DateTime>? checkInDate,
    Expression<DateTime>? checkOutDate,
    Expression<String>? occupancyType,
    Expression<int>? adultsCount,
    Expression<int>? childrenCount,
    Expression<int>? agreedNightlyTariffPaise,
    Expression<int>? advanceAmountPaidPaise,
    Expression<String>? status,
    Expression<String>? specialRequests,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (reservationCode != null) 'reservation_code': reservationCode,
      if (guestId != null) 'guest_id': guestId,
      if (guestName != null) 'guest_name': guestName,
      if (guestPhone != null) 'guest_phone': guestPhone,
      if (bookingSource != null) 'booking_source': bookingSource,
      if (externalBookingReference != null)
        'external_booking_reference': externalBookingReference,
      if (categoryName != null) 'category_name': categoryName,
      if (assignedRoomId != null) 'assigned_room_id': assignedRoomId,
      if (assignedRoomNumber != null)
        'assigned_room_number': assignedRoomNumber,
      if (checkInDate != null) 'check_in_date': checkInDate,
      if (checkOutDate != null) 'check_out_date': checkOutDate,
      if (occupancyType != null) 'occupancy_type': occupancyType,
      if (adultsCount != null) 'adults_count': adultsCount,
      if (childrenCount != null) 'children_count': childrenCount,
      if (agreedNightlyTariffPaise != null)
        'agreed_nightly_tariff_paise': agreedNightlyTariffPaise,
      if (advanceAmountPaidPaise != null)
        'advance_amount_paid_paise': advanceAmountPaidPaise,
      if (status != null) 'status': status,
      if (specialRequests != null) 'special_requests': specialRequests,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalReservationsCompanion copyWith(
      {Value<String>? id,
      Value<String>? reservationCode,
      Value<String>? guestId,
      Value<String>? guestName,
      Value<String>? guestPhone,
      Value<String>? bookingSource,
      Value<String?>? externalBookingReference,
      Value<String>? categoryName,
      Value<String?>? assignedRoomId,
      Value<String?>? assignedRoomNumber,
      Value<DateTime>? checkInDate,
      Value<DateTime>? checkOutDate,
      Value<String>? occupancyType,
      Value<int>? adultsCount,
      Value<int>? childrenCount,
      Value<int>? agreedNightlyTariffPaise,
      Value<int>? advanceAmountPaidPaise,
      Value<String>? status,
      Value<String?>? specialRequests,
      Value<int>? rowid}) {
    return LocalReservationsCompanion(
      id: id ?? this.id,
      reservationCode: reservationCode ?? this.reservationCode,
      guestId: guestId ?? this.guestId,
      guestName: guestName ?? this.guestName,
      guestPhone: guestPhone ?? this.guestPhone,
      bookingSource: bookingSource ?? this.bookingSource,
      externalBookingReference:
          externalBookingReference ?? this.externalBookingReference,
      categoryName: categoryName ?? this.categoryName,
      assignedRoomId: assignedRoomId ?? this.assignedRoomId,
      assignedRoomNumber: assignedRoomNumber ?? this.assignedRoomNumber,
      checkInDate: checkInDate ?? this.checkInDate,
      checkOutDate: checkOutDate ?? this.checkOutDate,
      occupancyType: occupancyType ?? this.occupancyType,
      adultsCount: adultsCount ?? this.adultsCount,
      childrenCount: childrenCount ?? this.childrenCount,
      agreedNightlyTariffPaise:
          agreedNightlyTariffPaise ?? this.agreedNightlyTariffPaise,
      advanceAmountPaidPaise:
          advanceAmountPaidPaise ?? this.advanceAmountPaidPaise,
      status: status ?? this.status,
      specialRequests: specialRequests ?? this.specialRequests,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (reservationCode.present) {
      map['reservation_code'] = Variable<String>(reservationCode.value);
    }
    if (guestId.present) {
      map['guest_id'] = Variable<String>(guestId.value);
    }
    if (guestName.present) {
      map['guest_name'] = Variable<String>(guestName.value);
    }
    if (guestPhone.present) {
      map['guest_phone'] = Variable<String>(guestPhone.value);
    }
    if (bookingSource.present) {
      map['booking_source'] = Variable<String>(bookingSource.value);
    }
    if (externalBookingReference.present) {
      map['external_booking_reference'] =
          Variable<String>(externalBookingReference.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    if (assignedRoomId.present) {
      map['assigned_room_id'] = Variable<String>(assignedRoomId.value);
    }
    if (assignedRoomNumber.present) {
      map['assigned_room_number'] = Variable<String>(assignedRoomNumber.value);
    }
    if (checkInDate.present) {
      map['check_in_date'] = Variable<DateTime>(checkInDate.value);
    }
    if (checkOutDate.present) {
      map['check_out_date'] = Variable<DateTime>(checkOutDate.value);
    }
    if (occupancyType.present) {
      map['occupancy_type'] = Variable<String>(occupancyType.value);
    }
    if (adultsCount.present) {
      map['adults_count'] = Variable<int>(adultsCount.value);
    }
    if (childrenCount.present) {
      map['children_count'] = Variable<int>(childrenCount.value);
    }
    if (agreedNightlyTariffPaise.present) {
      map['agreed_nightly_tariff_paise'] =
          Variable<int>(agreedNightlyTariffPaise.value);
    }
    if (advanceAmountPaidPaise.present) {
      map['advance_amount_paid_paise'] =
          Variable<int>(advanceAmountPaidPaise.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (specialRequests.present) {
      map['special_requests'] = Variable<String>(specialRequests.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalReservationsCompanion(')
          ..write('id: $id, ')
          ..write('reservationCode: $reservationCode, ')
          ..write('guestId: $guestId, ')
          ..write('guestName: $guestName, ')
          ..write('guestPhone: $guestPhone, ')
          ..write('bookingSource: $bookingSource, ')
          ..write('externalBookingReference: $externalBookingReference, ')
          ..write('categoryName: $categoryName, ')
          ..write('assignedRoomId: $assignedRoomId, ')
          ..write('assignedRoomNumber: $assignedRoomNumber, ')
          ..write('checkInDate: $checkInDate, ')
          ..write('checkOutDate: $checkOutDate, ')
          ..write('occupancyType: $occupancyType, ')
          ..write('adultsCount: $adultsCount, ')
          ..write('childrenCount: $childrenCount, ')
          ..write('agreedNightlyTariffPaise: $agreedNightlyTariffPaise, ')
          ..write('advanceAmountPaidPaise: $advanceAmountPaidPaise, ')
          ..write('status: $status, ')
          ..write('specialRequests: $specialRequests, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalStaysTable extends LocalStays
    with TableInfo<$LocalStaysTable, LocalStay> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalStaysTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stayCodeMeta =
      const VerificationMeta('stayCode');
  @override
  late final GeneratedColumn<String> stayCode = GeneratedColumn<String>(
      'stay_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _reservationIdMeta =
      const VerificationMeta('reservationId');
  @override
  late final GeneratedColumn<String> reservationId = GeneratedColumn<String>(
      'reservation_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _guestIdMeta =
      const VerificationMeta('guestId');
  @override
  late final GeneratedColumn<String> guestId = GeneratedColumn<String>(
      'guest_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _guestNameMeta =
      const VerificationMeta('guestName');
  @override
  late final GeneratedColumn<String> guestName = GeneratedColumn<String>(
      'guest_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _guestPhoneMeta =
      const VerificationMeta('guestPhone');
  @override
  late final GeneratedColumn<String> guestPhone = GeneratedColumn<String>(
      'guest_phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roomNumberMeta =
      const VerificationMeta('roomNumber');
  @override
  late final GeneratedColumn<String> roomNumber = GeneratedColumn<String>(
      'room_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryNameMeta =
      const VerificationMeta('categoryName');
  @override
  late final GeneratedColumn<String> categoryName = GeneratedColumn<String>(
      'category_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _actualCheckInTimeMeta =
      const VerificationMeta('actualCheckInTime');
  @override
  late final GeneratedColumn<DateTime> actualCheckInTime =
      GeneratedColumn<DateTime>('actual_check_in_time', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _actualCheckOutTimeMeta =
      const VerificationMeta('actualCheckOutTime');
  @override
  late final GeneratedColumn<DateTime> actualCheckOutTime =
      GeneratedColumn<DateTime>('actual_check_out_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _expectedCheckOutDateMeta =
      const VerificationMeta('expectedCheckOutDate');
  @override
  late final GeneratedColumn<DateTime> expectedCheckOutDate =
      GeneratedColumn<DateTime>('expected_check_out_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _occupancyTypeMeta =
      const VerificationMeta('occupancyType');
  @override
  late final GeneratedColumn<String> occupancyType = GeneratedColumn<String>(
      'occupancy_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('double'));
  static const VerificationMeta _adultsCountMeta =
      const VerificationMeta('adultsCount');
  @override
  late final GeneratedColumn<int> adultsCount = GeneratedColumn<int>(
      'adults_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _childrenCountMeta =
      const VerificationMeta('childrenCount');
  @override
  late final GeneratedColumn<int> childrenCount = GeneratedColumn<int>(
      'children_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _appliedNightlyTariffPaiseMeta =
      const VerificationMeta('appliedNightlyTariffPaise');
  @override
  late final GeneratedColumn<int> appliedNightlyTariffPaise =
      GeneratedColumn<int>('applied_nightly_tariff_paise', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _purposeOfVisitMeta =
      const VerificationMeta('purposeOfVisit');
  @override
  late final GeneratedColumn<String> purposeOfVisit = GeneratedColumn<String>(
      'purpose_of_visit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mealPlanMeta =
      const VerificationMeta('mealPlan');
  @override
  late final GeneratedColumn<String> mealPlan = GeneratedColumn<String>(
      'meal_plan', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('EP'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('active'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        stayCode,
        reservationId,
        guestId,
        guestName,
        guestPhone,
        roomId,
        roomNumber,
        categoryName,
        actualCheckInTime,
        actualCheckOutTime,
        expectedCheckOutDate,
        occupancyType,
        adultsCount,
        childrenCount,
        appliedNightlyTariffPaise,
        purposeOfVisit,
        mealPlan,
        status
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_stays';
  @override
  VerificationContext validateIntegrity(Insertable<LocalStay> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('stay_code')) {
      context.handle(_stayCodeMeta,
          stayCode.isAcceptableOrUnknown(data['stay_code']!, _stayCodeMeta));
    } else if (isInserting) {
      context.missing(_stayCodeMeta);
    }
    if (data.containsKey('reservation_id')) {
      context.handle(
          _reservationIdMeta,
          reservationId.isAcceptableOrUnknown(
              data['reservation_id']!, _reservationIdMeta));
    }
    if (data.containsKey('guest_id')) {
      context.handle(_guestIdMeta,
          guestId.isAcceptableOrUnknown(data['guest_id']!, _guestIdMeta));
    } else if (isInserting) {
      context.missing(_guestIdMeta);
    }
    if (data.containsKey('guest_name')) {
      context.handle(_guestNameMeta,
          guestName.isAcceptableOrUnknown(data['guest_name']!, _guestNameMeta));
    } else if (isInserting) {
      context.missing(_guestNameMeta);
    }
    if (data.containsKey('guest_phone')) {
      context.handle(
          _guestPhoneMeta,
          guestPhone.isAcceptableOrUnknown(
              data['guest_phone']!, _guestPhoneMeta));
    } else if (isInserting) {
      context.missing(_guestPhoneMeta);
    }
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('room_number')) {
      context.handle(
          _roomNumberMeta,
          roomNumber.isAcceptableOrUnknown(
              data['room_number']!, _roomNumberMeta));
    } else if (isInserting) {
      context.missing(_roomNumberMeta);
    }
    if (data.containsKey('category_name')) {
      context.handle(
          _categoryNameMeta,
          categoryName.isAcceptableOrUnknown(
              data['category_name']!, _categoryNameMeta));
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    if (data.containsKey('actual_check_in_time')) {
      context.handle(
          _actualCheckInTimeMeta,
          actualCheckInTime.isAcceptableOrUnknown(
              data['actual_check_in_time']!, _actualCheckInTimeMeta));
    } else if (isInserting) {
      context.missing(_actualCheckInTimeMeta);
    }
    if (data.containsKey('actual_check_out_time')) {
      context.handle(
          _actualCheckOutTimeMeta,
          actualCheckOutTime.isAcceptableOrUnknown(
              data['actual_check_out_time']!, _actualCheckOutTimeMeta));
    }
    if (data.containsKey('expected_check_out_date')) {
      context.handle(
          _expectedCheckOutDateMeta,
          expectedCheckOutDate.isAcceptableOrUnknown(
              data['expected_check_out_date']!, _expectedCheckOutDateMeta));
    } else if (isInserting) {
      context.missing(_expectedCheckOutDateMeta);
    }
    if (data.containsKey('occupancy_type')) {
      context.handle(
          _occupancyTypeMeta,
          occupancyType.isAcceptableOrUnknown(
              data['occupancy_type']!, _occupancyTypeMeta));
    }
    if (data.containsKey('adults_count')) {
      context.handle(
          _adultsCountMeta,
          adultsCount.isAcceptableOrUnknown(
              data['adults_count']!, _adultsCountMeta));
    }
    if (data.containsKey('children_count')) {
      context.handle(
          _childrenCountMeta,
          childrenCount.isAcceptableOrUnknown(
              data['children_count']!, _childrenCountMeta));
    }
    if (data.containsKey('applied_nightly_tariff_paise')) {
      context.handle(
          _appliedNightlyTariffPaiseMeta,
          appliedNightlyTariffPaise.isAcceptableOrUnknown(
              data['applied_nightly_tariff_paise']!,
              _appliedNightlyTariffPaiseMeta));
    } else if (isInserting) {
      context.missing(_appliedNightlyTariffPaiseMeta);
    }
    if (data.containsKey('purpose_of_visit')) {
      context.handle(
          _purposeOfVisitMeta,
          purposeOfVisit.isAcceptableOrUnknown(
              data['purpose_of_visit']!, _purposeOfVisitMeta));
    }
    if (data.containsKey('meal_plan')) {
      context.handle(_mealPlanMeta,
          mealPlan.isAcceptableOrUnknown(data['meal_plan']!, _mealPlanMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalStay map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalStay(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      stayCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stay_code'])!,
      reservationId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reservation_id']),
      guestId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guest_id'])!,
      guestName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guest_name'])!,
      guestPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guest_phone'])!,
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      roomNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_number'])!,
      categoryName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_name'])!,
      actualCheckInTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}actual_check_in_time'])!,
      actualCheckOutTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}actual_check_out_time']),
      expectedCheckOutDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}expected_check_out_date'])!,
      occupancyType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}occupancy_type'])!,
      adultsCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}adults_count'])!,
      childrenCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}children_count'])!,
      appliedNightlyTariffPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}applied_nightly_tariff_paise'])!,
      purposeOfVisit: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}purpose_of_visit']),
      mealPlan: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}meal_plan'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $LocalStaysTable createAlias(String alias) {
    return $LocalStaysTable(attachedDatabase, alias);
  }
}

class LocalStay extends DataClass implements Insertable<LocalStay> {
  final String id;
  final String stayCode;
  final String? reservationId;
  final String guestId;
  final String guestName;
  final String guestPhone;
  final String roomId;
  final String roomNumber;
  final String categoryName;
  final DateTime actualCheckInTime;
  final DateTime? actualCheckOutTime;
  final DateTime expectedCheckOutDate;
  final String occupancyType;
  final int adultsCount;
  final int childrenCount;
  final int appliedNightlyTariffPaise;
  final String? purposeOfVisit;
  final String mealPlan;
  final String status;
  const LocalStay(
      {required this.id,
      required this.stayCode,
      this.reservationId,
      required this.guestId,
      required this.guestName,
      required this.guestPhone,
      required this.roomId,
      required this.roomNumber,
      required this.categoryName,
      required this.actualCheckInTime,
      this.actualCheckOutTime,
      required this.expectedCheckOutDate,
      required this.occupancyType,
      required this.adultsCount,
      required this.childrenCount,
      required this.appliedNightlyTariffPaise,
      this.purposeOfVisit,
      required this.mealPlan,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['stay_code'] = Variable<String>(stayCode);
    if (!nullToAbsent || reservationId != null) {
      map['reservation_id'] = Variable<String>(reservationId);
    }
    map['guest_id'] = Variable<String>(guestId);
    map['guest_name'] = Variable<String>(guestName);
    map['guest_phone'] = Variable<String>(guestPhone);
    map['room_id'] = Variable<String>(roomId);
    map['room_number'] = Variable<String>(roomNumber);
    map['category_name'] = Variable<String>(categoryName);
    map['actual_check_in_time'] = Variable<DateTime>(actualCheckInTime);
    if (!nullToAbsent || actualCheckOutTime != null) {
      map['actual_check_out_time'] = Variable<DateTime>(actualCheckOutTime);
    }
    map['expected_check_out_date'] = Variable<DateTime>(expectedCheckOutDate);
    map['occupancy_type'] = Variable<String>(occupancyType);
    map['adults_count'] = Variable<int>(adultsCount);
    map['children_count'] = Variable<int>(childrenCount);
    map['applied_nightly_tariff_paise'] =
        Variable<int>(appliedNightlyTariffPaise);
    if (!nullToAbsent || purposeOfVisit != null) {
      map['purpose_of_visit'] = Variable<String>(purposeOfVisit);
    }
    map['meal_plan'] = Variable<String>(mealPlan);
    map['status'] = Variable<String>(status);
    return map;
  }

  LocalStaysCompanion toCompanion(bool nullToAbsent) {
    return LocalStaysCompanion(
      id: Value(id),
      stayCode: Value(stayCode),
      reservationId: reservationId == null && nullToAbsent
          ? const Value.absent()
          : Value(reservationId),
      guestId: Value(guestId),
      guestName: Value(guestName),
      guestPhone: Value(guestPhone),
      roomId: Value(roomId),
      roomNumber: Value(roomNumber),
      categoryName: Value(categoryName),
      actualCheckInTime: Value(actualCheckInTime),
      actualCheckOutTime: actualCheckOutTime == null && nullToAbsent
          ? const Value.absent()
          : Value(actualCheckOutTime),
      expectedCheckOutDate: Value(expectedCheckOutDate),
      occupancyType: Value(occupancyType),
      adultsCount: Value(adultsCount),
      childrenCount: Value(childrenCount),
      appliedNightlyTariffPaise: Value(appliedNightlyTariffPaise),
      purposeOfVisit: purposeOfVisit == null && nullToAbsent
          ? const Value.absent()
          : Value(purposeOfVisit),
      mealPlan: Value(mealPlan),
      status: Value(status),
    );
  }

  factory LocalStay.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalStay(
      id: serializer.fromJson<String>(json['id']),
      stayCode: serializer.fromJson<String>(json['stayCode']),
      reservationId: serializer.fromJson<String?>(json['reservationId']),
      guestId: serializer.fromJson<String>(json['guestId']),
      guestName: serializer.fromJson<String>(json['guestName']),
      guestPhone: serializer.fromJson<String>(json['guestPhone']),
      roomId: serializer.fromJson<String>(json['roomId']),
      roomNumber: serializer.fromJson<String>(json['roomNumber']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
      actualCheckInTime:
          serializer.fromJson<DateTime>(json['actualCheckInTime']),
      actualCheckOutTime:
          serializer.fromJson<DateTime?>(json['actualCheckOutTime']),
      expectedCheckOutDate:
          serializer.fromJson<DateTime>(json['expectedCheckOutDate']),
      occupancyType: serializer.fromJson<String>(json['occupancyType']),
      adultsCount: serializer.fromJson<int>(json['adultsCount']),
      childrenCount: serializer.fromJson<int>(json['childrenCount']),
      appliedNightlyTariffPaise:
          serializer.fromJson<int>(json['appliedNightlyTariffPaise']),
      purposeOfVisit: serializer.fromJson<String?>(json['purposeOfVisit']),
      mealPlan: serializer.fromJson<String>(json['mealPlan']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'stayCode': serializer.toJson<String>(stayCode),
      'reservationId': serializer.toJson<String?>(reservationId),
      'guestId': serializer.toJson<String>(guestId),
      'guestName': serializer.toJson<String>(guestName),
      'guestPhone': serializer.toJson<String>(guestPhone),
      'roomId': serializer.toJson<String>(roomId),
      'roomNumber': serializer.toJson<String>(roomNumber),
      'categoryName': serializer.toJson<String>(categoryName),
      'actualCheckInTime': serializer.toJson<DateTime>(actualCheckInTime),
      'actualCheckOutTime': serializer.toJson<DateTime?>(actualCheckOutTime),
      'expectedCheckOutDate': serializer.toJson<DateTime>(expectedCheckOutDate),
      'occupancyType': serializer.toJson<String>(occupancyType),
      'adultsCount': serializer.toJson<int>(adultsCount),
      'childrenCount': serializer.toJson<int>(childrenCount),
      'appliedNightlyTariffPaise':
          serializer.toJson<int>(appliedNightlyTariffPaise),
      'purposeOfVisit': serializer.toJson<String?>(purposeOfVisit),
      'mealPlan': serializer.toJson<String>(mealPlan),
      'status': serializer.toJson<String>(status),
    };
  }

  LocalStay copyWith(
          {String? id,
          String? stayCode,
          Value<String?> reservationId = const Value.absent(),
          String? guestId,
          String? guestName,
          String? guestPhone,
          String? roomId,
          String? roomNumber,
          String? categoryName,
          DateTime? actualCheckInTime,
          Value<DateTime?> actualCheckOutTime = const Value.absent(),
          DateTime? expectedCheckOutDate,
          String? occupancyType,
          int? adultsCount,
          int? childrenCount,
          int? appliedNightlyTariffPaise,
          Value<String?> purposeOfVisit = const Value.absent(),
          String? mealPlan,
          String? status}) =>
      LocalStay(
        id: id ?? this.id,
        stayCode: stayCode ?? this.stayCode,
        reservationId:
            reservationId.present ? reservationId.value : this.reservationId,
        guestId: guestId ?? this.guestId,
        guestName: guestName ?? this.guestName,
        guestPhone: guestPhone ?? this.guestPhone,
        roomId: roomId ?? this.roomId,
        roomNumber: roomNumber ?? this.roomNumber,
        categoryName: categoryName ?? this.categoryName,
        actualCheckInTime: actualCheckInTime ?? this.actualCheckInTime,
        actualCheckOutTime: actualCheckOutTime.present
            ? actualCheckOutTime.value
            : this.actualCheckOutTime,
        expectedCheckOutDate: expectedCheckOutDate ?? this.expectedCheckOutDate,
        occupancyType: occupancyType ?? this.occupancyType,
        adultsCount: adultsCount ?? this.adultsCount,
        childrenCount: childrenCount ?? this.childrenCount,
        appliedNightlyTariffPaise:
            appliedNightlyTariffPaise ?? this.appliedNightlyTariffPaise,
        purposeOfVisit:
            purposeOfVisit.present ? purposeOfVisit.value : this.purposeOfVisit,
        mealPlan: mealPlan ?? this.mealPlan,
        status: status ?? this.status,
      );
  LocalStay copyWithCompanion(LocalStaysCompanion data) {
    return LocalStay(
      id: data.id.present ? data.id.value : this.id,
      stayCode: data.stayCode.present ? data.stayCode.value : this.stayCode,
      reservationId: data.reservationId.present
          ? data.reservationId.value
          : this.reservationId,
      guestId: data.guestId.present ? data.guestId.value : this.guestId,
      guestName: data.guestName.present ? data.guestName.value : this.guestName,
      guestPhone:
          data.guestPhone.present ? data.guestPhone.value : this.guestPhone,
      roomId: data.roomId.present ? data.roomId.value : this.roomId,
      roomNumber:
          data.roomNumber.present ? data.roomNumber.value : this.roomNumber,
      categoryName: data.categoryName.present
          ? data.categoryName.value
          : this.categoryName,
      actualCheckInTime: data.actualCheckInTime.present
          ? data.actualCheckInTime.value
          : this.actualCheckInTime,
      actualCheckOutTime: data.actualCheckOutTime.present
          ? data.actualCheckOutTime.value
          : this.actualCheckOutTime,
      expectedCheckOutDate: data.expectedCheckOutDate.present
          ? data.expectedCheckOutDate.value
          : this.expectedCheckOutDate,
      occupancyType: data.occupancyType.present
          ? data.occupancyType.value
          : this.occupancyType,
      adultsCount:
          data.adultsCount.present ? data.adultsCount.value : this.adultsCount,
      childrenCount: data.childrenCount.present
          ? data.childrenCount.value
          : this.childrenCount,
      appliedNightlyTariffPaise: data.appliedNightlyTariffPaise.present
          ? data.appliedNightlyTariffPaise.value
          : this.appliedNightlyTariffPaise,
      purposeOfVisit: data.purposeOfVisit.present
          ? data.purposeOfVisit.value
          : this.purposeOfVisit,
      mealPlan: data.mealPlan.present ? data.mealPlan.value : this.mealPlan,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalStay(')
          ..write('id: $id, ')
          ..write('stayCode: $stayCode, ')
          ..write('reservationId: $reservationId, ')
          ..write('guestId: $guestId, ')
          ..write('guestName: $guestName, ')
          ..write('guestPhone: $guestPhone, ')
          ..write('roomId: $roomId, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('categoryName: $categoryName, ')
          ..write('actualCheckInTime: $actualCheckInTime, ')
          ..write('actualCheckOutTime: $actualCheckOutTime, ')
          ..write('expectedCheckOutDate: $expectedCheckOutDate, ')
          ..write('occupancyType: $occupancyType, ')
          ..write('adultsCount: $adultsCount, ')
          ..write('childrenCount: $childrenCount, ')
          ..write('appliedNightlyTariffPaise: $appliedNightlyTariffPaise, ')
          ..write('purposeOfVisit: $purposeOfVisit, ')
          ..write('mealPlan: $mealPlan, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      stayCode,
      reservationId,
      guestId,
      guestName,
      guestPhone,
      roomId,
      roomNumber,
      categoryName,
      actualCheckInTime,
      actualCheckOutTime,
      expectedCheckOutDate,
      occupancyType,
      adultsCount,
      childrenCount,
      appliedNightlyTariffPaise,
      purposeOfVisit,
      mealPlan,
      status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalStay &&
          other.id == this.id &&
          other.stayCode == this.stayCode &&
          other.reservationId == this.reservationId &&
          other.guestId == this.guestId &&
          other.guestName == this.guestName &&
          other.guestPhone == this.guestPhone &&
          other.roomId == this.roomId &&
          other.roomNumber == this.roomNumber &&
          other.categoryName == this.categoryName &&
          other.actualCheckInTime == this.actualCheckInTime &&
          other.actualCheckOutTime == this.actualCheckOutTime &&
          other.expectedCheckOutDate == this.expectedCheckOutDate &&
          other.occupancyType == this.occupancyType &&
          other.adultsCount == this.adultsCount &&
          other.childrenCount == this.childrenCount &&
          other.appliedNightlyTariffPaise == this.appliedNightlyTariffPaise &&
          other.purposeOfVisit == this.purposeOfVisit &&
          other.mealPlan == this.mealPlan &&
          other.status == this.status);
}

class LocalStaysCompanion extends UpdateCompanion<LocalStay> {
  final Value<String> id;
  final Value<String> stayCode;
  final Value<String?> reservationId;
  final Value<String> guestId;
  final Value<String> guestName;
  final Value<String> guestPhone;
  final Value<String> roomId;
  final Value<String> roomNumber;
  final Value<String> categoryName;
  final Value<DateTime> actualCheckInTime;
  final Value<DateTime?> actualCheckOutTime;
  final Value<DateTime> expectedCheckOutDate;
  final Value<String> occupancyType;
  final Value<int> adultsCount;
  final Value<int> childrenCount;
  final Value<int> appliedNightlyTariffPaise;
  final Value<String?> purposeOfVisit;
  final Value<String> mealPlan;
  final Value<String> status;
  final Value<int> rowid;
  const LocalStaysCompanion({
    this.id = const Value.absent(),
    this.stayCode = const Value.absent(),
    this.reservationId = const Value.absent(),
    this.guestId = const Value.absent(),
    this.guestName = const Value.absent(),
    this.guestPhone = const Value.absent(),
    this.roomId = const Value.absent(),
    this.roomNumber = const Value.absent(),
    this.categoryName = const Value.absent(),
    this.actualCheckInTime = const Value.absent(),
    this.actualCheckOutTime = const Value.absent(),
    this.expectedCheckOutDate = const Value.absent(),
    this.occupancyType = const Value.absent(),
    this.adultsCount = const Value.absent(),
    this.childrenCount = const Value.absent(),
    this.appliedNightlyTariffPaise = const Value.absent(),
    this.purposeOfVisit = const Value.absent(),
    this.mealPlan = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalStaysCompanion.insert({
    required String id,
    required String stayCode,
    this.reservationId = const Value.absent(),
    required String guestId,
    required String guestName,
    required String guestPhone,
    required String roomId,
    required String roomNumber,
    required String categoryName,
    required DateTime actualCheckInTime,
    this.actualCheckOutTime = const Value.absent(),
    required DateTime expectedCheckOutDate,
    this.occupancyType = const Value.absent(),
    this.adultsCount = const Value.absent(),
    this.childrenCount = const Value.absent(),
    required int appliedNightlyTariffPaise,
    this.purposeOfVisit = const Value.absent(),
    this.mealPlan = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        stayCode = Value(stayCode),
        guestId = Value(guestId),
        guestName = Value(guestName),
        guestPhone = Value(guestPhone),
        roomId = Value(roomId),
        roomNumber = Value(roomNumber),
        categoryName = Value(categoryName),
        actualCheckInTime = Value(actualCheckInTime),
        expectedCheckOutDate = Value(expectedCheckOutDate),
        appliedNightlyTariffPaise = Value(appliedNightlyTariffPaise);
  static Insertable<LocalStay> custom({
    Expression<String>? id,
    Expression<String>? stayCode,
    Expression<String>? reservationId,
    Expression<String>? guestId,
    Expression<String>? guestName,
    Expression<String>? guestPhone,
    Expression<String>? roomId,
    Expression<String>? roomNumber,
    Expression<String>? categoryName,
    Expression<DateTime>? actualCheckInTime,
    Expression<DateTime>? actualCheckOutTime,
    Expression<DateTime>? expectedCheckOutDate,
    Expression<String>? occupancyType,
    Expression<int>? adultsCount,
    Expression<int>? childrenCount,
    Expression<int>? appliedNightlyTariffPaise,
    Expression<String>? purposeOfVisit,
    Expression<String>? mealPlan,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stayCode != null) 'stay_code': stayCode,
      if (reservationId != null) 'reservation_id': reservationId,
      if (guestId != null) 'guest_id': guestId,
      if (guestName != null) 'guest_name': guestName,
      if (guestPhone != null) 'guest_phone': guestPhone,
      if (roomId != null) 'room_id': roomId,
      if (roomNumber != null) 'room_number': roomNumber,
      if (categoryName != null) 'category_name': categoryName,
      if (actualCheckInTime != null) 'actual_check_in_time': actualCheckInTime,
      if (actualCheckOutTime != null)
        'actual_check_out_time': actualCheckOutTime,
      if (expectedCheckOutDate != null)
        'expected_check_out_date': expectedCheckOutDate,
      if (occupancyType != null) 'occupancy_type': occupancyType,
      if (adultsCount != null) 'adults_count': adultsCount,
      if (childrenCount != null) 'children_count': childrenCount,
      if (appliedNightlyTariffPaise != null)
        'applied_nightly_tariff_paise': appliedNightlyTariffPaise,
      if (purposeOfVisit != null) 'purpose_of_visit': purposeOfVisit,
      if (mealPlan != null) 'meal_plan': mealPlan,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalStaysCompanion copyWith(
      {Value<String>? id,
      Value<String>? stayCode,
      Value<String?>? reservationId,
      Value<String>? guestId,
      Value<String>? guestName,
      Value<String>? guestPhone,
      Value<String>? roomId,
      Value<String>? roomNumber,
      Value<String>? categoryName,
      Value<DateTime>? actualCheckInTime,
      Value<DateTime?>? actualCheckOutTime,
      Value<DateTime>? expectedCheckOutDate,
      Value<String>? occupancyType,
      Value<int>? adultsCount,
      Value<int>? childrenCount,
      Value<int>? appliedNightlyTariffPaise,
      Value<String?>? purposeOfVisit,
      Value<String>? mealPlan,
      Value<String>? status,
      Value<int>? rowid}) {
    return LocalStaysCompanion(
      id: id ?? this.id,
      stayCode: stayCode ?? this.stayCode,
      reservationId: reservationId ?? this.reservationId,
      guestId: guestId ?? this.guestId,
      guestName: guestName ?? this.guestName,
      guestPhone: guestPhone ?? this.guestPhone,
      roomId: roomId ?? this.roomId,
      roomNumber: roomNumber ?? this.roomNumber,
      categoryName: categoryName ?? this.categoryName,
      actualCheckInTime: actualCheckInTime ?? this.actualCheckInTime,
      actualCheckOutTime: actualCheckOutTime ?? this.actualCheckOutTime,
      expectedCheckOutDate: expectedCheckOutDate ?? this.expectedCheckOutDate,
      occupancyType: occupancyType ?? this.occupancyType,
      adultsCount: adultsCount ?? this.adultsCount,
      childrenCount: childrenCount ?? this.childrenCount,
      appliedNightlyTariffPaise:
          appliedNightlyTariffPaise ?? this.appliedNightlyTariffPaise,
      purposeOfVisit: purposeOfVisit ?? this.purposeOfVisit,
      mealPlan: mealPlan ?? this.mealPlan,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (stayCode.present) {
      map['stay_code'] = Variable<String>(stayCode.value);
    }
    if (reservationId.present) {
      map['reservation_id'] = Variable<String>(reservationId.value);
    }
    if (guestId.present) {
      map['guest_id'] = Variable<String>(guestId.value);
    }
    if (guestName.present) {
      map['guest_name'] = Variable<String>(guestName.value);
    }
    if (guestPhone.present) {
      map['guest_phone'] = Variable<String>(guestPhone.value);
    }
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (roomNumber.present) {
      map['room_number'] = Variable<String>(roomNumber.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    if (actualCheckInTime.present) {
      map['actual_check_in_time'] = Variable<DateTime>(actualCheckInTime.value);
    }
    if (actualCheckOutTime.present) {
      map['actual_check_out_time'] =
          Variable<DateTime>(actualCheckOutTime.value);
    }
    if (expectedCheckOutDate.present) {
      map['expected_check_out_date'] =
          Variable<DateTime>(expectedCheckOutDate.value);
    }
    if (occupancyType.present) {
      map['occupancy_type'] = Variable<String>(occupancyType.value);
    }
    if (adultsCount.present) {
      map['adults_count'] = Variable<int>(adultsCount.value);
    }
    if (childrenCount.present) {
      map['children_count'] = Variable<int>(childrenCount.value);
    }
    if (appliedNightlyTariffPaise.present) {
      map['applied_nightly_tariff_paise'] =
          Variable<int>(appliedNightlyTariffPaise.value);
    }
    if (purposeOfVisit.present) {
      map['purpose_of_visit'] = Variable<String>(purposeOfVisit.value);
    }
    if (mealPlan.present) {
      map['meal_plan'] = Variable<String>(mealPlan.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalStaysCompanion(')
          ..write('id: $id, ')
          ..write('stayCode: $stayCode, ')
          ..write('reservationId: $reservationId, ')
          ..write('guestId: $guestId, ')
          ..write('guestName: $guestName, ')
          ..write('guestPhone: $guestPhone, ')
          ..write('roomId: $roomId, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('categoryName: $categoryName, ')
          ..write('actualCheckInTime: $actualCheckInTime, ')
          ..write('actualCheckOutTime: $actualCheckOutTime, ')
          ..write('expectedCheckOutDate: $expectedCheckOutDate, ')
          ..write('occupancyType: $occupancyType, ')
          ..write('adultsCount: $adultsCount, ')
          ..write('childrenCount: $childrenCount, ')
          ..write('appliedNightlyTariffPaise: $appliedNightlyTariffPaise, ')
          ..write('purposeOfVisit: $purposeOfVisit, ')
          ..write('mealPlan: $mealPlan, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalInvoicesTable extends LocalInvoices
    with TableInfo<$LocalInvoicesTable, LocalInvoice> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalInvoicesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _invoiceNumberMeta =
      const VerificationMeta('invoiceNumber');
  @override
  late final GeneratedColumn<String> invoiceNumber = GeneratedColumn<String>(
      'invoice_number', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _stayIdMeta = const VerificationMeta('stayId');
  @override
  late final GeneratedColumn<String> stayId = GeneratedColumn<String>(
      'stay_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _guestIdMeta =
      const VerificationMeta('guestId');
  @override
  late final GeneratedColumn<String> guestId = GeneratedColumn<String>(
      'guest_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _guestNameMeta =
      const VerificationMeta('guestName');
  @override
  late final GeneratedColumn<String> guestName = GeneratedColumn<String>(
      'guest_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roomNumberMeta =
      const VerificationMeta('roomNumber');
  @override
  late final GeneratedColumn<String> roomNumber = GeneratedColumn<String>(
      'room_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _invoiceDateMeta =
      const VerificationMeta('invoiceDate');
  @override
  late final GeneratedColumn<DateTime> invoiceDate = GeneratedColumn<DateTime>(
      'invoice_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _billableNightsMeta =
      const VerificationMeta('billableNights');
  @override
  late final GeneratedColumn<int> billableNights = GeneratedColumn<int>(
      'billable_nights', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _roomChargesPaiseMeta =
      const VerificationMeta('roomChargesPaise');
  @override
  late final GeneratedColumn<int> roomChargesPaise = GeneratedColumn<int>(
      'room_charges_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _extraChargesPaiseMeta =
      const VerificationMeta('extraChargesPaise');
  @override
  late final GeneratedColumn<int> extraChargesPaise = GeneratedColumn<int>(
      'extra_charges_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _subtotalPaiseMeta =
      const VerificationMeta('subtotalPaise');
  @override
  late final GeneratedColumn<int> subtotalPaise = GeneratedColumn<int>(
      'subtotal_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>('discount_percentage', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const Constant(0.0));
  static const VerificationMeta _discountAmountPaiseMeta =
      const VerificationMeta('discountAmountPaise');
  @override
  late final GeneratedColumn<int> discountAmountPaise = GeneratedColumn<int>(
      'discount_amount_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _taxableAmountPaiseMeta =
      const VerificationMeta('taxableAmountPaise');
  @override
  late final GeneratedColumn<int> taxableAmountPaise = GeneratedColumn<int>(
      'taxable_amount_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _cgstRateMeta =
      const VerificationMeta('cgstRate');
  @override
  late final GeneratedColumn<double> cgstRate = GeneratedColumn<double>(
      'cgst_rate', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(2.50));
  static const VerificationMeta _cgstAmountPaiseMeta =
      const VerificationMeta('cgstAmountPaise');
  @override
  late final GeneratedColumn<int> cgstAmountPaise = GeneratedColumn<int>(
      'cgst_amount_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _sgstRateMeta =
      const VerificationMeta('sgstRate');
  @override
  late final GeneratedColumn<double> sgstRate = GeneratedColumn<double>(
      'sgst_rate', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(2.50));
  static const VerificationMeta _sgstAmountPaiseMeta =
      const VerificationMeta('sgstAmountPaise');
  @override
  late final GeneratedColumn<int> sgstAmountPaise = GeneratedColumn<int>(
      'sgst_amount_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _igstRateMeta =
      const VerificationMeta('igstRate');
  @override
  late final GeneratedColumn<double> igstRate = GeneratedColumn<double>(
      'igst_rate', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _igstAmountPaiseMeta =
      const VerificationMeta('igstAmountPaise');
  @override
  late final GeneratedColumn<int> igstAmountPaise = GeneratedColumn<int>(
      'igst_amount_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalTaxPaiseMeta =
      const VerificationMeta('totalTaxPaise');
  @override
  late final GeneratedColumn<int> totalTaxPaise = GeneratedColumn<int>(
      'total_tax_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalAmountPaiseMeta =
      const VerificationMeta('totalAmountPaise');
  @override
  late final GeneratedColumn<int> totalAmountPaise = GeneratedColumn<int>(
      'total_amount_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalPaidPaiseMeta =
      const VerificationMeta('totalPaidPaise');
  @override
  late final GeneratedColumn<int> totalPaidPaise = GeneratedColumn<int>(
      'total_paid_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _outstandingBalancePaiseMeta =
      const VerificationMeta('outstandingBalancePaise');
  @override
  late final GeneratedColumn<int> outstandingBalancePaise =
      GeneratedColumn<int>('outstanding_balance_paise', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: false,
          defaultValue: const Constant(0));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('draft'));
  static const VerificationMeta _amountInWordsMeta =
      const VerificationMeta('amountInWords');
  @override
  late final GeneratedColumn<String> amountInWords = GeneratedColumn<String>(
      'amount_in_words', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isLockedMeta =
      const VerificationMeta('isLocked');
  @override
  late final GeneratedColumn<bool> isLocked = GeneratedColumn<bool>(
      'is_locked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_locked" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        invoiceNumber,
        stayId,
        guestId,
        guestName,
        roomNumber,
        invoiceDate,
        billableNights,
        roomChargesPaise,
        extraChargesPaise,
        subtotalPaise,
        discountPercentage,
        discountAmountPaise,
        taxableAmountPaise,
        cgstRate,
        cgstAmountPaise,
        sgstRate,
        sgstAmountPaise,
        igstRate,
        igstAmountPaise,
        totalTaxPaise,
        totalAmountPaise,
        totalPaidPaise,
        outstandingBalancePaise,
        status,
        amountInWords,
        notes,
        isLocked
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_invoices';
  @override
  VerificationContext validateIntegrity(Insertable<LocalInvoice> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('invoice_number')) {
      context.handle(
          _invoiceNumberMeta,
          invoiceNumber.isAcceptableOrUnknown(
              data['invoice_number']!, _invoiceNumberMeta));
    } else if (isInserting) {
      context.missing(_invoiceNumberMeta);
    }
    if (data.containsKey('stay_id')) {
      context.handle(_stayIdMeta,
          stayId.isAcceptableOrUnknown(data['stay_id']!, _stayIdMeta));
    }
    if (data.containsKey('guest_id')) {
      context.handle(_guestIdMeta,
          guestId.isAcceptableOrUnknown(data['guest_id']!, _guestIdMeta));
    } else if (isInserting) {
      context.missing(_guestIdMeta);
    }
    if (data.containsKey('guest_name')) {
      context.handle(_guestNameMeta,
          guestName.isAcceptableOrUnknown(data['guest_name']!, _guestNameMeta));
    } else if (isInserting) {
      context.missing(_guestNameMeta);
    }
    if (data.containsKey('room_number')) {
      context.handle(
          _roomNumberMeta,
          roomNumber.isAcceptableOrUnknown(
              data['room_number']!, _roomNumberMeta));
    } else if (isInserting) {
      context.missing(_roomNumberMeta);
    }
    if (data.containsKey('invoice_date')) {
      context.handle(
          _invoiceDateMeta,
          invoiceDate.isAcceptableOrUnknown(
              data['invoice_date']!, _invoiceDateMeta));
    } else if (isInserting) {
      context.missing(_invoiceDateMeta);
    }
    if (data.containsKey('billable_nights')) {
      context.handle(
          _billableNightsMeta,
          billableNights.isAcceptableOrUnknown(
              data['billable_nights']!, _billableNightsMeta));
    } else if (isInserting) {
      context.missing(_billableNightsMeta);
    }
    if (data.containsKey('room_charges_paise')) {
      context.handle(
          _roomChargesPaiseMeta,
          roomChargesPaise.isAcceptableOrUnknown(
              data['room_charges_paise']!, _roomChargesPaiseMeta));
    } else if (isInserting) {
      context.missing(_roomChargesPaiseMeta);
    }
    if (data.containsKey('extra_charges_paise')) {
      context.handle(
          _extraChargesPaiseMeta,
          extraChargesPaise.isAcceptableOrUnknown(
              data['extra_charges_paise']!, _extraChargesPaiseMeta));
    }
    if (data.containsKey('subtotal_paise')) {
      context.handle(
          _subtotalPaiseMeta,
          subtotalPaise.isAcceptableOrUnknown(
              data['subtotal_paise']!, _subtotalPaiseMeta));
    } else if (isInserting) {
      context.missing(_subtotalPaiseMeta);
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
          _discountPercentageMeta,
          discountPercentage.isAcceptableOrUnknown(
              data['discount_percentage']!, _discountPercentageMeta));
    }
    if (data.containsKey('discount_amount_paise')) {
      context.handle(
          _discountAmountPaiseMeta,
          discountAmountPaise.isAcceptableOrUnknown(
              data['discount_amount_paise']!, _discountAmountPaiseMeta));
    }
    if (data.containsKey('taxable_amount_paise')) {
      context.handle(
          _taxableAmountPaiseMeta,
          taxableAmountPaise.isAcceptableOrUnknown(
              data['taxable_amount_paise']!, _taxableAmountPaiseMeta));
    } else if (isInserting) {
      context.missing(_taxableAmountPaiseMeta);
    }
    if (data.containsKey('cgst_rate')) {
      context.handle(_cgstRateMeta,
          cgstRate.isAcceptableOrUnknown(data['cgst_rate']!, _cgstRateMeta));
    }
    if (data.containsKey('cgst_amount_paise')) {
      context.handle(
          _cgstAmountPaiseMeta,
          cgstAmountPaise.isAcceptableOrUnknown(
              data['cgst_amount_paise']!, _cgstAmountPaiseMeta));
    }
    if (data.containsKey('sgst_rate')) {
      context.handle(_sgstRateMeta,
          sgstRate.isAcceptableOrUnknown(data['sgst_rate']!, _sgstRateMeta));
    }
    if (data.containsKey('sgst_amount_paise')) {
      context.handle(
          _sgstAmountPaiseMeta,
          sgstAmountPaise.isAcceptableOrUnknown(
              data['sgst_amount_paise']!, _sgstAmountPaiseMeta));
    }
    if (data.containsKey('igst_rate')) {
      context.handle(_igstRateMeta,
          igstRate.isAcceptableOrUnknown(data['igst_rate']!, _igstRateMeta));
    }
    if (data.containsKey('igst_amount_paise')) {
      context.handle(
          _igstAmountPaiseMeta,
          igstAmountPaise.isAcceptableOrUnknown(
              data['igst_amount_paise']!, _igstAmountPaiseMeta));
    }
    if (data.containsKey('total_tax_paise')) {
      context.handle(
          _totalTaxPaiseMeta,
          totalTaxPaise.isAcceptableOrUnknown(
              data['total_tax_paise']!, _totalTaxPaiseMeta));
    }
    if (data.containsKey('total_amount_paise')) {
      context.handle(
          _totalAmountPaiseMeta,
          totalAmountPaise.isAcceptableOrUnknown(
              data['total_amount_paise']!, _totalAmountPaiseMeta));
    } else if (isInserting) {
      context.missing(_totalAmountPaiseMeta);
    }
    if (data.containsKey('total_paid_paise')) {
      context.handle(
          _totalPaidPaiseMeta,
          totalPaidPaise.isAcceptableOrUnknown(
              data['total_paid_paise']!, _totalPaidPaiseMeta));
    }
    if (data.containsKey('outstanding_balance_paise')) {
      context.handle(
          _outstandingBalancePaiseMeta,
          outstandingBalancePaise.isAcceptableOrUnknown(
              data['outstanding_balance_paise']!,
              _outstandingBalancePaiseMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('amount_in_words')) {
      context.handle(
          _amountInWordsMeta,
          amountInWords.isAcceptableOrUnknown(
              data['amount_in_words']!, _amountInWordsMeta));
    } else if (isInserting) {
      context.missing(_amountInWordsMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('is_locked')) {
      context.handle(_isLockedMeta,
          isLocked.isAcceptableOrUnknown(data['is_locked']!, _isLockedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalInvoice map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalInvoice(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      invoiceNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}invoice_number'])!,
      stayId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stay_id']),
      guestId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guest_id'])!,
      guestName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guest_name'])!,
      roomNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_number'])!,
      invoiceDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}invoice_date'])!,
      billableNights: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}billable_nights'])!,
      roomChargesPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}room_charges_paise'])!,
      extraChargesPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}extra_charges_paise'])!,
      subtotalPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subtotal_paise'])!,
      discountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}discount_percentage'])!,
      discountAmountPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}discount_amount_paise'])!,
      taxableAmountPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}taxable_amount_paise'])!,
      cgstRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cgst_rate'])!,
      cgstAmountPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cgst_amount_paise'])!,
      sgstRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sgst_rate'])!,
      sgstAmountPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sgst_amount_paise'])!,
      igstRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}igst_rate'])!,
      igstAmountPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}igst_amount_paise'])!,
      totalTaxPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_tax_paise'])!,
      totalAmountPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_amount_paise'])!,
      totalPaidPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_paid_paise'])!,
      outstandingBalancePaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}outstanding_balance_paise'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      amountInWords: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}amount_in_words'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      isLocked: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_locked'])!,
    );
  }

  @override
  $LocalInvoicesTable createAlias(String alias) {
    return $LocalInvoicesTable(attachedDatabase, alias);
  }
}

class LocalInvoice extends DataClass implements Insertable<LocalInvoice> {
  final String id;
  final String invoiceNumber;
  final String? stayId;
  final String guestId;
  final String guestName;
  final String roomNumber;
  final DateTime invoiceDate;
  final int billableNights;
  final int roomChargesPaise;
  final int extraChargesPaise;
  final int subtotalPaise;
  final double discountPercentage;
  final int discountAmountPaise;
  final int taxableAmountPaise;
  final double cgstRate;
  final int cgstAmountPaise;
  final double sgstRate;
  final int sgstAmountPaise;
  final double igstRate;
  final int igstAmountPaise;
  final int totalTaxPaise;
  final int totalAmountPaise;
  final int totalPaidPaise;
  final int outstandingBalancePaise;
  final String status;
  final String amountInWords;
  final String? notes;
  final bool isLocked;
  const LocalInvoice(
      {required this.id,
      required this.invoiceNumber,
      this.stayId,
      required this.guestId,
      required this.guestName,
      required this.roomNumber,
      required this.invoiceDate,
      required this.billableNights,
      required this.roomChargesPaise,
      required this.extraChargesPaise,
      required this.subtotalPaise,
      required this.discountPercentage,
      required this.discountAmountPaise,
      required this.taxableAmountPaise,
      required this.cgstRate,
      required this.cgstAmountPaise,
      required this.sgstRate,
      required this.sgstAmountPaise,
      required this.igstRate,
      required this.igstAmountPaise,
      required this.totalTaxPaise,
      required this.totalAmountPaise,
      required this.totalPaidPaise,
      required this.outstandingBalancePaise,
      required this.status,
      required this.amountInWords,
      this.notes,
      required this.isLocked});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['invoice_number'] = Variable<String>(invoiceNumber);
    if (!nullToAbsent || stayId != null) {
      map['stay_id'] = Variable<String>(stayId);
    }
    map['guest_id'] = Variable<String>(guestId);
    map['guest_name'] = Variable<String>(guestName);
    map['room_number'] = Variable<String>(roomNumber);
    map['invoice_date'] = Variable<DateTime>(invoiceDate);
    map['billable_nights'] = Variable<int>(billableNights);
    map['room_charges_paise'] = Variable<int>(roomChargesPaise);
    map['extra_charges_paise'] = Variable<int>(extraChargesPaise);
    map['subtotal_paise'] = Variable<int>(subtotalPaise);
    map['discount_percentage'] = Variable<double>(discountPercentage);
    map['discount_amount_paise'] = Variable<int>(discountAmountPaise);
    map['taxable_amount_paise'] = Variable<int>(taxableAmountPaise);
    map['cgst_rate'] = Variable<double>(cgstRate);
    map['cgst_amount_paise'] = Variable<int>(cgstAmountPaise);
    map['sgst_rate'] = Variable<double>(sgstRate);
    map['sgst_amount_paise'] = Variable<int>(sgstAmountPaise);
    map['igst_rate'] = Variable<double>(igstRate);
    map['igst_amount_paise'] = Variable<int>(igstAmountPaise);
    map['total_tax_paise'] = Variable<int>(totalTaxPaise);
    map['total_amount_paise'] = Variable<int>(totalAmountPaise);
    map['total_paid_paise'] = Variable<int>(totalPaidPaise);
    map['outstanding_balance_paise'] = Variable<int>(outstandingBalancePaise);
    map['status'] = Variable<String>(status);
    map['amount_in_words'] = Variable<String>(amountInWords);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['is_locked'] = Variable<bool>(isLocked);
    return map;
  }

  LocalInvoicesCompanion toCompanion(bool nullToAbsent) {
    return LocalInvoicesCompanion(
      id: Value(id),
      invoiceNumber: Value(invoiceNumber),
      stayId:
          stayId == null && nullToAbsent ? const Value.absent() : Value(stayId),
      guestId: Value(guestId),
      guestName: Value(guestName),
      roomNumber: Value(roomNumber),
      invoiceDate: Value(invoiceDate),
      billableNights: Value(billableNights),
      roomChargesPaise: Value(roomChargesPaise),
      extraChargesPaise: Value(extraChargesPaise),
      subtotalPaise: Value(subtotalPaise),
      discountPercentage: Value(discountPercentage),
      discountAmountPaise: Value(discountAmountPaise),
      taxableAmountPaise: Value(taxableAmountPaise),
      cgstRate: Value(cgstRate),
      cgstAmountPaise: Value(cgstAmountPaise),
      sgstRate: Value(sgstRate),
      sgstAmountPaise: Value(sgstAmountPaise),
      igstRate: Value(igstRate),
      igstAmountPaise: Value(igstAmountPaise),
      totalTaxPaise: Value(totalTaxPaise),
      totalAmountPaise: Value(totalAmountPaise),
      totalPaidPaise: Value(totalPaidPaise),
      outstandingBalancePaise: Value(outstandingBalancePaise),
      status: Value(status),
      amountInWords: Value(amountInWords),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      isLocked: Value(isLocked),
    );
  }

  factory LocalInvoice.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalInvoice(
      id: serializer.fromJson<String>(json['id']),
      invoiceNumber: serializer.fromJson<String>(json['invoiceNumber']),
      stayId: serializer.fromJson<String?>(json['stayId']),
      guestId: serializer.fromJson<String>(json['guestId']),
      guestName: serializer.fromJson<String>(json['guestName']),
      roomNumber: serializer.fromJson<String>(json['roomNumber']),
      invoiceDate: serializer.fromJson<DateTime>(json['invoiceDate']),
      billableNights: serializer.fromJson<int>(json['billableNights']),
      roomChargesPaise: serializer.fromJson<int>(json['roomChargesPaise']),
      extraChargesPaise: serializer.fromJson<int>(json['extraChargesPaise']),
      subtotalPaise: serializer.fromJson<int>(json['subtotalPaise']),
      discountPercentage:
          serializer.fromJson<double>(json['discountPercentage']),
      discountAmountPaise:
          serializer.fromJson<int>(json['discountAmountPaise']),
      taxableAmountPaise: serializer.fromJson<int>(json['taxableAmountPaise']),
      cgstRate: serializer.fromJson<double>(json['cgstRate']),
      cgstAmountPaise: serializer.fromJson<int>(json['cgstAmountPaise']),
      sgstRate: serializer.fromJson<double>(json['sgstRate']),
      sgstAmountPaise: serializer.fromJson<int>(json['sgstAmountPaise']),
      igstRate: serializer.fromJson<double>(json['igstRate']),
      igstAmountPaise: serializer.fromJson<int>(json['igstAmountPaise']),
      totalTaxPaise: serializer.fromJson<int>(json['totalTaxPaise']),
      totalAmountPaise: serializer.fromJson<int>(json['totalAmountPaise']),
      totalPaidPaise: serializer.fromJson<int>(json['totalPaidPaise']),
      outstandingBalancePaise:
          serializer.fromJson<int>(json['outstandingBalancePaise']),
      status: serializer.fromJson<String>(json['status']),
      amountInWords: serializer.fromJson<String>(json['amountInWords']),
      notes: serializer.fromJson<String?>(json['notes']),
      isLocked: serializer.fromJson<bool>(json['isLocked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'invoiceNumber': serializer.toJson<String>(invoiceNumber),
      'stayId': serializer.toJson<String?>(stayId),
      'guestId': serializer.toJson<String>(guestId),
      'guestName': serializer.toJson<String>(guestName),
      'roomNumber': serializer.toJson<String>(roomNumber),
      'invoiceDate': serializer.toJson<DateTime>(invoiceDate),
      'billableNights': serializer.toJson<int>(billableNights),
      'roomChargesPaise': serializer.toJson<int>(roomChargesPaise),
      'extraChargesPaise': serializer.toJson<int>(extraChargesPaise),
      'subtotalPaise': serializer.toJson<int>(subtotalPaise),
      'discountPercentage': serializer.toJson<double>(discountPercentage),
      'discountAmountPaise': serializer.toJson<int>(discountAmountPaise),
      'taxableAmountPaise': serializer.toJson<int>(taxableAmountPaise),
      'cgstRate': serializer.toJson<double>(cgstRate),
      'cgstAmountPaise': serializer.toJson<int>(cgstAmountPaise),
      'sgstRate': serializer.toJson<double>(sgstRate),
      'sgstAmountPaise': serializer.toJson<int>(sgstAmountPaise),
      'igstRate': serializer.toJson<double>(igstRate),
      'igstAmountPaise': serializer.toJson<int>(igstAmountPaise),
      'totalTaxPaise': serializer.toJson<int>(totalTaxPaise),
      'totalAmountPaise': serializer.toJson<int>(totalAmountPaise),
      'totalPaidPaise': serializer.toJson<int>(totalPaidPaise),
      'outstandingBalancePaise':
          serializer.toJson<int>(outstandingBalancePaise),
      'status': serializer.toJson<String>(status),
      'amountInWords': serializer.toJson<String>(amountInWords),
      'notes': serializer.toJson<String?>(notes),
      'isLocked': serializer.toJson<bool>(isLocked),
    };
  }

  LocalInvoice copyWith(
          {String? id,
          String? invoiceNumber,
          Value<String?> stayId = const Value.absent(),
          String? guestId,
          String? guestName,
          String? roomNumber,
          DateTime? invoiceDate,
          int? billableNights,
          int? roomChargesPaise,
          int? extraChargesPaise,
          int? subtotalPaise,
          double? discountPercentage,
          int? discountAmountPaise,
          int? taxableAmountPaise,
          double? cgstRate,
          int? cgstAmountPaise,
          double? sgstRate,
          int? sgstAmountPaise,
          double? igstRate,
          int? igstAmountPaise,
          int? totalTaxPaise,
          int? totalAmountPaise,
          int? totalPaidPaise,
          int? outstandingBalancePaise,
          String? status,
          String? amountInWords,
          Value<String?> notes = const Value.absent(),
          bool? isLocked}) =>
      LocalInvoice(
        id: id ?? this.id,
        invoiceNumber: invoiceNumber ?? this.invoiceNumber,
        stayId: stayId.present ? stayId.value : this.stayId,
        guestId: guestId ?? this.guestId,
        guestName: guestName ?? this.guestName,
        roomNumber: roomNumber ?? this.roomNumber,
        invoiceDate: invoiceDate ?? this.invoiceDate,
        billableNights: billableNights ?? this.billableNights,
        roomChargesPaise: roomChargesPaise ?? this.roomChargesPaise,
        extraChargesPaise: extraChargesPaise ?? this.extraChargesPaise,
        subtotalPaise: subtotalPaise ?? this.subtotalPaise,
        discountPercentage: discountPercentage ?? this.discountPercentage,
        discountAmountPaise: discountAmountPaise ?? this.discountAmountPaise,
        taxableAmountPaise: taxableAmountPaise ?? this.taxableAmountPaise,
        cgstRate: cgstRate ?? this.cgstRate,
        cgstAmountPaise: cgstAmountPaise ?? this.cgstAmountPaise,
        sgstRate: sgstRate ?? this.sgstRate,
        sgstAmountPaise: sgstAmountPaise ?? this.sgstAmountPaise,
        igstRate: igstRate ?? this.igstRate,
        igstAmountPaise: igstAmountPaise ?? this.igstAmountPaise,
        totalTaxPaise: totalTaxPaise ?? this.totalTaxPaise,
        totalAmountPaise: totalAmountPaise ?? this.totalAmountPaise,
        totalPaidPaise: totalPaidPaise ?? this.totalPaidPaise,
        outstandingBalancePaise:
            outstandingBalancePaise ?? this.outstandingBalancePaise,
        status: status ?? this.status,
        amountInWords: amountInWords ?? this.amountInWords,
        notes: notes.present ? notes.value : this.notes,
        isLocked: isLocked ?? this.isLocked,
      );
  LocalInvoice copyWithCompanion(LocalInvoicesCompanion data) {
    return LocalInvoice(
      id: data.id.present ? data.id.value : this.id,
      invoiceNumber: data.invoiceNumber.present
          ? data.invoiceNumber.value
          : this.invoiceNumber,
      stayId: data.stayId.present ? data.stayId.value : this.stayId,
      guestId: data.guestId.present ? data.guestId.value : this.guestId,
      guestName: data.guestName.present ? data.guestName.value : this.guestName,
      roomNumber:
          data.roomNumber.present ? data.roomNumber.value : this.roomNumber,
      invoiceDate:
          data.invoiceDate.present ? data.invoiceDate.value : this.invoiceDate,
      billableNights: data.billableNights.present
          ? data.billableNights.value
          : this.billableNights,
      roomChargesPaise: data.roomChargesPaise.present
          ? data.roomChargesPaise.value
          : this.roomChargesPaise,
      extraChargesPaise: data.extraChargesPaise.present
          ? data.extraChargesPaise.value
          : this.extraChargesPaise,
      subtotalPaise: data.subtotalPaise.present
          ? data.subtotalPaise.value
          : this.subtotalPaise,
      discountPercentage: data.discountPercentage.present
          ? data.discountPercentage.value
          : this.discountPercentage,
      discountAmountPaise: data.discountAmountPaise.present
          ? data.discountAmountPaise.value
          : this.discountAmountPaise,
      taxableAmountPaise: data.taxableAmountPaise.present
          ? data.taxableAmountPaise.value
          : this.taxableAmountPaise,
      cgstRate: data.cgstRate.present ? data.cgstRate.value : this.cgstRate,
      cgstAmountPaise: data.cgstAmountPaise.present
          ? data.cgstAmountPaise.value
          : this.cgstAmountPaise,
      sgstRate: data.sgstRate.present ? data.sgstRate.value : this.sgstRate,
      sgstAmountPaise: data.sgstAmountPaise.present
          ? data.sgstAmountPaise.value
          : this.sgstAmountPaise,
      igstRate: data.igstRate.present ? data.igstRate.value : this.igstRate,
      igstAmountPaise: data.igstAmountPaise.present
          ? data.igstAmountPaise.value
          : this.igstAmountPaise,
      totalTaxPaise: data.totalTaxPaise.present
          ? data.totalTaxPaise.value
          : this.totalTaxPaise,
      totalAmountPaise: data.totalAmountPaise.present
          ? data.totalAmountPaise.value
          : this.totalAmountPaise,
      totalPaidPaise: data.totalPaidPaise.present
          ? data.totalPaidPaise.value
          : this.totalPaidPaise,
      outstandingBalancePaise: data.outstandingBalancePaise.present
          ? data.outstandingBalancePaise.value
          : this.outstandingBalancePaise,
      status: data.status.present ? data.status.value : this.status,
      amountInWords: data.amountInWords.present
          ? data.amountInWords.value
          : this.amountInWords,
      notes: data.notes.present ? data.notes.value : this.notes,
      isLocked: data.isLocked.present ? data.isLocked.value : this.isLocked,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalInvoice(')
          ..write('id: $id, ')
          ..write('invoiceNumber: $invoiceNumber, ')
          ..write('stayId: $stayId, ')
          ..write('guestId: $guestId, ')
          ..write('guestName: $guestName, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('invoiceDate: $invoiceDate, ')
          ..write('billableNights: $billableNights, ')
          ..write('roomChargesPaise: $roomChargesPaise, ')
          ..write('extraChargesPaise: $extraChargesPaise, ')
          ..write('subtotalPaise: $subtotalPaise, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('discountAmountPaise: $discountAmountPaise, ')
          ..write('taxableAmountPaise: $taxableAmountPaise, ')
          ..write('cgstRate: $cgstRate, ')
          ..write('cgstAmountPaise: $cgstAmountPaise, ')
          ..write('sgstRate: $sgstRate, ')
          ..write('sgstAmountPaise: $sgstAmountPaise, ')
          ..write('igstRate: $igstRate, ')
          ..write('igstAmountPaise: $igstAmountPaise, ')
          ..write('totalTaxPaise: $totalTaxPaise, ')
          ..write('totalAmountPaise: $totalAmountPaise, ')
          ..write('totalPaidPaise: $totalPaidPaise, ')
          ..write('outstandingBalancePaise: $outstandingBalancePaise, ')
          ..write('status: $status, ')
          ..write('amountInWords: $amountInWords, ')
          ..write('notes: $notes, ')
          ..write('isLocked: $isLocked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        invoiceNumber,
        stayId,
        guestId,
        guestName,
        roomNumber,
        invoiceDate,
        billableNights,
        roomChargesPaise,
        extraChargesPaise,
        subtotalPaise,
        discountPercentage,
        discountAmountPaise,
        taxableAmountPaise,
        cgstRate,
        cgstAmountPaise,
        sgstRate,
        sgstAmountPaise,
        igstRate,
        igstAmountPaise,
        totalTaxPaise,
        totalAmountPaise,
        totalPaidPaise,
        outstandingBalancePaise,
        status,
        amountInWords,
        notes,
        isLocked
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalInvoice &&
          other.id == this.id &&
          other.invoiceNumber == this.invoiceNumber &&
          other.stayId == this.stayId &&
          other.guestId == this.guestId &&
          other.guestName == this.guestName &&
          other.roomNumber == this.roomNumber &&
          other.invoiceDate == this.invoiceDate &&
          other.billableNights == this.billableNights &&
          other.roomChargesPaise == this.roomChargesPaise &&
          other.extraChargesPaise == this.extraChargesPaise &&
          other.subtotalPaise == this.subtotalPaise &&
          other.discountPercentage == this.discountPercentage &&
          other.discountAmountPaise == this.discountAmountPaise &&
          other.taxableAmountPaise == this.taxableAmountPaise &&
          other.cgstRate == this.cgstRate &&
          other.cgstAmountPaise == this.cgstAmountPaise &&
          other.sgstRate == this.sgstRate &&
          other.sgstAmountPaise == this.sgstAmountPaise &&
          other.igstRate == this.igstRate &&
          other.igstAmountPaise == this.igstAmountPaise &&
          other.totalTaxPaise == this.totalTaxPaise &&
          other.totalAmountPaise == this.totalAmountPaise &&
          other.totalPaidPaise == this.totalPaidPaise &&
          other.outstandingBalancePaise == this.outstandingBalancePaise &&
          other.status == this.status &&
          other.amountInWords == this.amountInWords &&
          other.notes == this.notes &&
          other.isLocked == this.isLocked);
}

class LocalInvoicesCompanion extends UpdateCompanion<LocalInvoice> {
  final Value<String> id;
  final Value<String> invoiceNumber;
  final Value<String?> stayId;
  final Value<String> guestId;
  final Value<String> guestName;
  final Value<String> roomNumber;
  final Value<DateTime> invoiceDate;
  final Value<int> billableNights;
  final Value<int> roomChargesPaise;
  final Value<int> extraChargesPaise;
  final Value<int> subtotalPaise;
  final Value<double> discountPercentage;
  final Value<int> discountAmountPaise;
  final Value<int> taxableAmountPaise;
  final Value<double> cgstRate;
  final Value<int> cgstAmountPaise;
  final Value<double> sgstRate;
  final Value<int> sgstAmountPaise;
  final Value<double> igstRate;
  final Value<int> igstAmountPaise;
  final Value<int> totalTaxPaise;
  final Value<int> totalAmountPaise;
  final Value<int> totalPaidPaise;
  final Value<int> outstandingBalancePaise;
  final Value<String> status;
  final Value<String> amountInWords;
  final Value<String?> notes;
  final Value<bool> isLocked;
  final Value<int> rowid;
  const LocalInvoicesCompanion({
    this.id = const Value.absent(),
    this.invoiceNumber = const Value.absent(),
    this.stayId = const Value.absent(),
    this.guestId = const Value.absent(),
    this.guestName = const Value.absent(),
    this.roomNumber = const Value.absent(),
    this.invoiceDate = const Value.absent(),
    this.billableNights = const Value.absent(),
    this.roomChargesPaise = const Value.absent(),
    this.extraChargesPaise = const Value.absent(),
    this.subtotalPaise = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.discountAmountPaise = const Value.absent(),
    this.taxableAmountPaise = const Value.absent(),
    this.cgstRate = const Value.absent(),
    this.cgstAmountPaise = const Value.absent(),
    this.sgstRate = const Value.absent(),
    this.sgstAmountPaise = const Value.absent(),
    this.igstRate = const Value.absent(),
    this.igstAmountPaise = const Value.absent(),
    this.totalTaxPaise = const Value.absent(),
    this.totalAmountPaise = const Value.absent(),
    this.totalPaidPaise = const Value.absent(),
    this.outstandingBalancePaise = const Value.absent(),
    this.status = const Value.absent(),
    this.amountInWords = const Value.absent(),
    this.notes = const Value.absent(),
    this.isLocked = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalInvoicesCompanion.insert({
    required String id,
    required String invoiceNumber,
    this.stayId = const Value.absent(),
    required String guestId,
    required String guestName,
    required String roomNumber,
    required DateTime invoiceDate,
    required int billableNights,
    required int roomChargesPaise,
    this.extraChargesPaise = const Value.absent(),
    required int subtotalPaise,
    this.discountPercentage = const Value.absent(),
    this.discountAmountPaise = const Value.absent(),
    required int taxableAmountPaise,
    this.cgstRate = const Value.absent(),
    this.cgstAmountPaise = const Value.absent(),
    this.sgstRate = const Value.absent(),
    this.sgstAmountPaise = const Value.absent(),
    this.igstRate = const Value.absent(),
    this.igstAmountPaise = const Value.absent(),
    this.totalTaxPaise = const Value.absent(),
    required int totalAmountPaise,
    this.totalPaidPaise = const Value.absent(),
    this.outstandingBalancePaise = const Value.absent(),
    this.status = const Value.absent(),
    required String amountInWords,
    this.notes = const Value.absent(),
    this.isLocked = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        invoiceNumber = Value(invoiceNumber),
        guestId = Value(guestId),
        guestName = Value(guestName),
        roomNumber = Value(roomNumber),
        invoiceDate = Value(invoiceDate),
        billableNights = Value(billableNights),
        roomChargesPaise = Value(roomChargesPaise),
        subtotalPaise = Value(subtotalPaise),
        taxableAmountPaise = Value(taxableAmountPaise),
        totalAmountPaise = Value(totalAmountPaise),
        amountInWords = Value(amountInWords);
  static Insertable<LocalInvoice> custom({
    Expression<String>? id,
    Expression<String>? invoiceNumber,
    Expression<String>? stayId,
    Expression<String>? guestId,
    Expression<String>? guestName,
    Expression<String>? roomNumber,
    Expression<DateTime>? invoiceDate,
    Expression<int>? billableNights,
    Expression<int>? roomChargesPaise,
    Expression<int>? extraChargesPaise,
    Expression<int>? subtotalPaise,
    Expression<double>? discountPercentage,
    Expression<int>? discountAmountPaise,
    Expression<int>? taxableAmountPaise,
    Expression<double>? cgstRate,
    Expression<int>? cgstAmountPaise,
    Expression<double>? sgstRate,
    Expression<int>? sgstAmountPaise,
    Expression<double>? igstRate,
    Expression<int>? igstAmountPaise,
    Expression<int>? totalTaxPaise,
    Expression<int>? totalAmountPaise,
    Expression<int>? totalPaidPaise,
    Expression<int>? outstandingBalancePaise,
    Expression<String>? status,
    Expression<String>? amountInWords,
    Expression<String>? notes,
    Expression<bool>? isLocked,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (invoiceNumber != null) 'invoice_number': invoiceNumber,
      if (stayId != null) 'stay_id': stayId,
      if (guestId != null) 'guest_id': guestId,
      if (guestName != null) 'guest_name': guestName,
      if (roomNumber != null) 'room_number': roomNumber,
      if (invoiceDate != null) 'invoice_date': invoiceDate,
      if (billableNights != null) 'billable_nights': billableNights,
      if (roomChargesPaise != null) 'room_charges_paise': roomChargesPaise,
      if (extraChargesPaise != null) 'extra_charges_paise': extraChargesPaise,
      if (subtotalPaise != null) 'subtotal_paise': subtotalPaise,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (discountAmountPaise != null)
        'discount_amount_paise': discountAmountPaise,
      if (taxableAmountPaise != null)
        'taxable_amount_paise': taxableAmountPaise,
      if (cgstRate != null) 'cgst_rate': cgstRate,
      if (cgstAmountPaise != null) 'cgst_amount_paise': cgstAmountPaise,
      if (sgstRate != null) 'sgst_rate': sgstRate,
      if (sgstAmountPaise != null) 'sgst_amount_paise': sgstAmountPaise,
      if (igstRate != null) 'igst_rate': igstRate,
      if (igstAmountPaise != null) 'igst_amount_paise': igstAmountPaise,
      if (totalTaxPaise != null) 'total_tax_paise': totalTaxPaise,
      if (totalAmountPaise != null) 'total_amount_paise': totalAmountPaise,
      if (totalPaidPaise != null) 'total_paid_paise': totalPaidPaise,
      if (outstandingBalancePaise != null)
        'outstanding_balance_paise': outstandingBalancePaise,
      if (status != null) 'status': status,
      if (amountInWords != null) 'amount_in_words': amountInWords,
      if (notes != null) 'notes': notes,
      if (isLocked != null) 'is_locked': isLocked,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalInvoicesCompanion copyWith(
      {Value<String>? id,
      Value<String>? invoiceNumber,
      Value<String?>? stayId,
      Value<String>? guestId,
      Value<String>? guestName,
      Value<String>? roomNumber,
      Value<DateTime>? invoiceDate,
      Value<int>? billableNights,
      Value<int>? roomChargesPaise,
      Value<int>? extraChargesPaise,
      Value<int>? subtotalPaise,
      Value<double>? discountPercentage,
      Value<int>? discountAmountPaise,
      Value<int>? taxableAmountPaise,
      Value<double>? cgstRate,
      Value<int>? cgstAmountPaise,
      Value<double>? sgstRate,
      Value<int>? sgstAmountPaise,
      Value<double>? igstRate,
      Value<int>? igstAmountPaise,
      Value<int>? totalTaxPaise,
      Value<int>? totalAmountPaise,
      Value<int>? totalPaidPaise,
      Value<int>? outstandingBalancePaise,
      Value<String>? status,
      Value<String>? amountInWords,
      Value<String?>? notes,
      Value<bool>? isLocked,
      Value<int>? rowid}) {
    return LocalInvoicesCompanion(
      id: id ?? this.id,
      invoiceNumber: invoiceNumber ?? this.invoiceNumber,
      stayId: stayId ?? this.stayId,
      guestId: guestId ?? this.guestId,
      guestName: guestName ?? this.guestName,
      roomNumber: roomNumber ?? this.roomNumber,
      invoiceDate: invoiceDate ?? this.invoiceDate,
      billableNights: billableNights ?? this.billableNights,
      roomChargesPaise: roomChargesPaise ?? this.roomChargesPaise,
      extraChargesPaise: extraChargesPaise ?? this.extraChargesPaise,
      subtotalPaise: subtotalPaise ?? this.subtotalPaise,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountAmountPaise: discountAmountPaise ?? this.discountAmountPaise,
      taxableAmountPaise: taxableAmountPaise ?? this.taxableAmountPaise,
      cgstRate: cgstRate ?? this.cgstRate,
      cgstAmountPaise: cgstAmountPaise ?? this.cgstAmountPaise,
      sgstRate: sgstRate ?? this.sgstRate,
      sgstAmountPaise: sgstAmountPaise ?? this.sgstAmountPaise,
      igstRate: igstRate ?? this.igstRate,
      igstAmountPaise: igstAmountPaise ?? this.igstAmountPaise,
      totalTaxPaise: totalTaxPaise ?? this.totalTaxPaise,
      totalAmountPaise: totalAmountPaise ?? this.totalAmountPaise,
      totalPaidPaise: totalPaidPaise ?? this.totalPaidPaise,
      outstandingBalancePaise:
          outstandingBalancePaise ?? this.outstandingBalancePaise,
      status: status ?? this.status,
      amountInWords: amountInWords ?? this.amountInWords,
      notes: notes ?? this.notes,
      isLocked: isLocked ?? this.isLocked,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (invoiceNumber.present) {
      map['invoice_number'] = Variable<String>(invoiceNumber.value);
    }
    if (stayId.present) {
      map['stay_id'] = Variable<String>(stayId.value);
    }
    if (guestId.present) {
      map['guest_id'] = Variable<String>(guestId.value);
    }
    if (guestName.present) {
      map['guest_name'] = Variable<String>(guestName.value);
    }
    if (roomNumber.present) {
      map['room_number'] = Variable<String>(roomNumber.value);
    }
    if (invoiceDate.present) {
      map['invoice_date'] = Variable<DateTime>(invoiceDate.value);
    }
    if (billableNights.present) {
      map['billable_nights'] = Variable<int>(billableNights.value);
    }
    if (roomChargesPaise.present) {
      map['room_charges_paise'] = Variable<int>(roomChargesPaise.value);
    }
    if (extraChargesPaise.present) {
      map['extra_charges_paise'] = Variable<int>(extraChargesPaise.value);
    }
    if (subtotalPaise.present) {
      map['subtotal_paise'] = Variable<int>(subtotalPaise.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (discountAmountPaise.present) {
      map['discount_amount_paise'] = Variable<int>(discountAmountPaise.value);
    }
    if (taxableAmountPaise.present) {
      map['taxable_amount_paise'] = Variable<int>(taxableAmountPaise.value);
    }
    if (cgstRate.present) {
      map['cgst_rate'] = Variable<double>(cgstRate.value);
    }
    if (cgstAmountPaise.present) {
      map['cgst_amount_paise'] = Variable<int>(cgstAmountPaise.value);
    }
    if (sgstRate.present) {
      map['sgst_rate'] = Variable<double>(sgstRate.value);
    }
    if (sgstAmountPaise.present) {
      map['sgst_amount_paise'] = Variable<int>(sgstAmountPaise.value);
    }
    if (igstRate.present) {
      map['igst_rate'] = Variable<double>(igstRate.value);
    }
    if (igstAmountPaise.present) {
      map['igst_amount_paise'] = Variable<int>(igstAmountPaise.value);
    }
    if (totalTaxPaise.present) {
      map['total_tax_paise'] = Variable<int>(totalTaxPaise.value);
    }
    if (totalAmountPaise.present) {
      map['total_amount_paise'] = Variable<int>(totalAmountPaise.value);
    }
    if (totalPaidPaise.present) {
      map['total_paid_paise'] = Variable<int>(totalPaidPaise.value);
    }
    if (outstandingBalancePaise.present) {
      map['outstanding_balance_paise'] =
          Variable<int>(outstandingBalancePaise.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (amountInWords.present) {
      map['amount_in_words'] = Variable<String>(amountInWords.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (isLocked.present) {
      map['is_locked'] = Variable<bool>(isLocked.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalInvoicesCompanion(')
          ..write('id: $id, ')
          ..write('invoiceNumber: $invoiceNumber, ')
          ..write('stayId: $stayId, ')
          ..write('guestId: $guestId, ')
          ..write('guestName: $guestName, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('invoiceDate: $invoiceDate, ')
          ..write('billableNights: $billableNights, ')
          ..write('roomChargesPaise: $roomChargesPaise, ')
          ..write('extraChargesPaise: $extraChargesPaise, ')
          ..write('subtotalPaise: $subtotalPaise, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('discountAmountPaise: $discountAmountPaise, ')
          ..write('taxableAmountPaise: $taxableAmountPaise, ')
          ..write('cgstRate: $cgstRate, ')
          ..write('cgstAmountPaise: $cgstAmountPaise, ')
          ..write('sgstRate: $sgstRate, ')
          ..write('sgstAmountPaise: $sgstAmountPaise, ')
          ..write('igstRate: $igstRate, ')
          ..write('igstAmountPaise: $igstAmountPaise, ')
          ..write('totalTaxPaise: $totalTaxPaise, ')
          ..write('totalAmountPaise: $totalAmountPaise, ')
          ..write('totalPaidPaise: $totalPaidPaise, ')
          ..write('outstandingBalancePaise: $outstandingBalancePaise, ')
          ..write('status: $status, ')
          ..write('amountInWords: $amountInWords, ')
          ..write('notes: $notes, ')
          ..write('isLocked: $isLocked, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalPaymentsTable extends LocalPayments
    with TableInfo<$LocalPaymentsTable, LocalPayment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalPaymentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paymentReferenceMeta =
      const VerificationMeta('paymentReference');
  @override
  late final GeneratedColumn<String> paymentReference = GeneratedColumn<String>(
      'payment_reference', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _invoiceIdMeta =
      const VerificationMeta('invoiceId');
  @override
  late final GeneratedColumn<String> invoiceId = GeneratedColumn<String>(
      'invoice_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _reservationIdMeta =
      const VerificationMeta('reservationId');
  @override
  late final GeneratedColumn<String> reservationId = GeneratedColumn<String>(
      'reservation_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stayIdMeta = const VerificationMeta('stayId');
  @override
  late final GeneratedColumn<String> stayId = GeneratedColumn<String>(
      'stay_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _amountPaiseMeta =
      const VerificationMeta('amountPaise');
  @override
  late final GeneratedColumn<int> amountPaise = GeneratedColumn<int>(
      'amount_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethodMeta =
      const VerificationMeta('paymentMethod');
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
      'payment_method', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _transactionIdMeta =
      const VerificationMeta('transactionId');
  @override
  late final GeneratedColumn<String> transactionId = GeneratedColumn<String>(
      'transaction_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentTypeMeta =
      const VerificationMeta('paymentType');
  @override
  late final GeneratedColumn<String> paymentType = GeneratedColumn<String>(
      'payment_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paidAtMeta = const VerificationMeta('paidAt');
  @override
  late final GeneratedColumn<DateTime> paidAt = GeneratedColumn<DateTime>(
      'paid_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        paymentReference,
        invoiceId,
        reservationId,
        stayId,
        amountPaise,
        paymentMethod,
        transactionId,
        paymentType,
        paidAt,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_payments';
  @override
  VerificationContext validateIntegrity(Insertable<LocalPayment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('payment_reference')) {
      context.handle(
          _paymentReferenceMeta,
          paymentReference.isAcceptableOrUnknown(
              data['payment_reference']!, _paymentReferenceMeta));
    } else if (isInserting) {
      context.missing(_paymentReferenceMeta);
    }
    if (data.containsKey('invoice_id')) {
      context.handle(_invoiceIdMeta,
          invoiceId.isAcceptableOrUnknown(data['invoice_id']!, _invoiceIdMeta));
    }
    if (data.containsKey('reservation_id')) {
      context.handle(
          _reservationIdMeta,
          reservationId.isAcceptableOrUnknown(
              data['reservation_id']!, _reservationIdMeta));
    }
    if (data.containsKey('stay_id')) {
      context.handle(_stayIdMeta,
          stayId.isAcceptableOrUnknown(data['stay_id']!, _stayIdMeta));
    }
    if (data.containsKey('amount_paise')) {
      context.handle(
          _amountPaiseMeta,
          amountPaise.isAcceptableOrUnknown(
              data['amount_paise']!, _amountPaiseMeta));
    } else if (isInserting) {
      context.missing(_amountPaiseMeta);
    }
    if (data.containsKey('payment_method')) {
      context.handle(
          _paymentMethodMeta,
          paymentMethod.isAcceptableOrUnknown(
              data['payment_method']!, _paymentMethodMeta));
    } else if (isInserting) {
      context.missing(_paymentMethodMeta);
    }
    if (data.containsKey('transaction_id')) {
      context.handle(
          _transactionIdMeta,
          transactionId.isAcceptableOrUnknown(
              data['transaction_id']!, _transactionIdMeta));
    }
    if (data.containsKey('payment_type')) {
      context.handle(
          _paymentTypeMeta,
          paymentType.isAcceptableOrUnknown(
              data['payment_type']!, _paymentTypeMeta));
    } else if (isInserting) {
      context.missing(_paymentTypeMeta);
    }
    if (data.containsKey('paid_at')) {
      context.handle(_paidAtMeta,
          paidAt.isAcceptableOrUnknown(data['paid_at']!, _paidAtMeta));
    } else if (isInserting) {
      context.missing(_paidAtMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalPayment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalPayment(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      paymentReference: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}payment_reference'])!,
      invoiceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}invoice_id']),
      reservationId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reservation_id']),
      stayId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stay_id']),
      amountPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount_paise'])!,
      paymentMethod: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_method'])!,
      transactionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}transaction_id']),
      paymentType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_type'])!,
      paidAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}paid_at'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $LocalPaymentsTable createAlias(String alias) {
    return $LocalPaymentsTable(attachedDatabase, alias);
  }
}

class LocalPayment extends DataClass implements Insertable<LocalPayment> {
  final String id;
  final String paymentReference;
  final String? invoiceId;
  final String? reservationId;
  final String? stayId;
  final int amountPaise;
  final String paymentMethod;
  final String? transactionId;
  final String paymentType;
  final DateTime paidAt;
  final String? notes;
  const LocalPayment(
      {required this.id,
      required this.paymentReference,
      this.invoiceId,
      this.reservationId,
      this.stayId,
      required this.amountPaise,
      required this.paymentMethod,
      this.transactionId,
      required this.paymentType,
      required this.paidAt,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['payment_reference'] = Variable<String>(paymentReference);
    if (!nullToAbsent || invoiceId != null) {
      map['invoice_id'] = Variable<String>(invoiceId);
    }
    if (!nullToAbsent || reservationId != null) {
      map['reservation_id'] = Variable<String>(reservationId);
    }
    if (!nullToAbsent || stayId != null) {
      map['stay_id'] = Variable<String>(stayId);
    }
    map['amount_paise'] = Variable<int>(amountPaise);
    map['payment_method'] = Variable<String>(paymentMethod);
    if (!nullToAbsent || transactionId != null) {
      map['transaction_id'] = Variable<String>(transactionId);
    }
    map['payment_type'] = Variable<String>(paymentType);
    map['paid_at'] = Variable<DateTime>(paidAt);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  LocalPaymentsCompanion toCompanion(bool nullToAbsent) {
    return LocalPaymentsCompanion(
      id: Value(id),
      paymentReference: Value(paymentReference),
      invoiceId: invoiceId == null && nullToAbsent
          ? const Value.absent()
          : Value(invoiceId),
      reservationId: reservationId == null && nullToAbsent
          ? const Value.absent()
          : Value(reservationId),
      stayId:
          stayId == null && nullToAbsent ? const Value.absent() : Value(stayId),
      amountPaise: Value(amountPaise),
      paymentMethod: Value(paymentMethod),
      transactionId: transactionId == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionId),
      paymentType: Value(paymentType),
      paidAt: Value(paidAt),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory LocalPayment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalPayment(
      id: serializer.fromJson<String>(json['id']),
      paymentReference: serializer.fromJson<String>(json['paymentReference']),
      invoiceId: serializer.fromJson<String?>(json['invoiceId']),
      reservationId: serializer.fromJson<String?>(json['reservationId']),
      stayId: serializer.fromJson<String?>(json['stayId']),
      amountPaise: serializer.fromJson<int>(json['amountPaise']),
      paymentMethod: serializer.fromJson<String>(json['paymentMethod']),
      transactionId: serializer.fromJson<String?>(json['transactionId']),
      paymentType: serializer.fromJson<String>(json['paymentType']),
      paidAt: serializer.fromJson<DateTime>(json['paidAt']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'paymentReference': serializer.toJson<String>(paymentReference),
      'invoiceId': serializer.toJson<String?>(invoiceId),
      'reservationId': serializer.toJson<String?>(reservationId),
      'stayId': serializer.toJson<String?>(stayId),
      'amountPaise': serializer.toJson<int>(amountPaise),
      'paymentMethod': serializer.toJson<String>(paymentMethod),
      'transactionId': serializer.toJson<String?>(transactionId),
      'paymentType': serializer.toJson<String>(paymentType),
      'paidAt': serializer.toJson<DateTime>(paidAt),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  LocalPayment copyWith(
          {String? id,
          String? paymentReference,
          Value<String?> invoiceId = const Value.absent(),
          Value<String?> reservationId = const Value.absent(),
          Value<String?> stayId = const Value.absent(),
          int? amountPaise,
          String? paymentMethod,
          Value<String?> transactionId = const Value.absent(),
          String? paymentType,
          DateTime? paidAt,
          Value<String?> notes = const Value.absent()}) =>
      LocalPayment(
        id: id ?? this.id,
        paymentReference: paymentReference ?? this.paymentReference,
        invoiceId: invoiceId.present ? invoiceId.value : this.invoiceId,
        reservationId:
            reservationId.present ? reservationId.value : this.reservationId,
        stayId: stayId.present ? stayId.value : this.stayId,
        amountPaise: amountPaise ?? this.amountPaise,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        transactionId:
            transactionId.present ? transactionId.value : this.transactionId,
        paymentType: paymentType ?? this.paymentType,
        paidAt: paidAt ?? this.paidAt,
        notes: notes.present ? notes.value : this.notes,
      );
  LocalPayment copyWithCompanion(LocalPaymentsCompanion data) {
    return LocalPayment(
      id: data.id.present ? data.id.value : this.id,
      paymentReference: data.paymentReference.present
          ? data.paymentReference.value
          : this.paymentReference,
      invoiceId: data.invoiceId.present ? data.invoiceId.value : this.invoiceId,
      reservationId: data.reservationId.present
          ? data.reservationId.value
          : this.reservationId,
      stayId: data.stayId.present ? data.stayId.value : this.stayId,
      amountPaise:
          data.amountPaise.present ? data.amountPaise.value : this.amountPaise,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      transactionId: data.transactionId.present
          ? data.transactionId.value
          : this.transactionId,
      paymentType:
          data.paymentType.present ? data.paymentType.value : this.paymentType,
      paidAt: data.paidAt.present ? data.paidAt.value : this.paidAt,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalPayment(')
          ..write('id: $id, ')
          ..write('paymentReference: $paymentReference, ')
          ..write('invoiceId: $invoiceId, ')
          ..write('reservationId: $reservationId, ')
          ..write('stayId: $stayId, ')
          ..write('amountPaise: $amountPaise, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('transactionId: $transactionId, ')
          ..write('paymentType: $paymentType, ')
          ..write('paidAt: $paidAt, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      paymentReference,
      invoiceId,
      reservationId,
      stayId,
      amountPaise,
      paymentMethod,
      transactionId,
      paymentType,
      paidAt,
      notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalPayment &&
          other.id == this.id &&
          other.paymentReference == this.paymentReference &&
          other.invoiceId == this.invoiceId &&
          other.reservationId == this.reservationId &&
          other.stayId == this.stayId &&
          other.amountPaise == this.amountPaise &&
          other.paymentMethod == this.paymentMethod &&
          other.transactionId == this.transactionId &&
          other.paymentType == this.paymentType &&
          other.paidAt == this.paidAt &&
          other.notes == this.notes);
}

class LocalPaymentsCompanion extends UpdateCompanion<LocalPayment> {
  final Value<String> id;
  final Value<String> paymentReference;
  final Value<String?> invoiceId;
  final Value<String?> reservationId;
  final Value<String?> stayId;
  final Value<int> amountPaise;
  final Value<String> paymentMethod;
  final Value<String?> transactionId;
  final Value<String> paymentType;
  final Value<DateTime> paidAt;
  final Value<String?> notes;
  final Value<int> rowid;
  const LocalPaymentsCompanion({
    this.id = const Value.absent(),
    this.paymentReference = const Value.absent(),
    this.invoiceId = const Value.absent(),
    this.reservationId = const Value.absent(),
    this.stayId = const Value.absent(),
    this.amountPaise = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.transactionId = const Value.absent(),
    this.paymentType = const Value.absent(),
    this.paidAt = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalPaymentsCompanion.insert({
    required String id,
    required String paymentReference,
    this.invoiceId = const Value.absent(),
    this.reservationId = const Value.absent(),
    this.stayId = const Value.absent(),
    required int amountPaise,
    required String paymentMethod,
    this.transactionId = const Value.absent(),
    required String paymentType,
    required DateTime paidAt,
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        paymentReference = Value(paymentReference),
        amountPaise = Value(amountPaise),
        paymentMethod = Value(paymentMethod),
        paymentType = Value(paymentType),
        paidAt = Value(paidAt);
  static Insertable<LocalPayment> custom({
    Expression<String>? id,
    Expression<String>? paymentReference,
    Expression<String>? invoiceId,
    Expression<String>? reservationId,
    Expression<String>? stayId,
    Expression<int>? amountPaise,
    Expression<String>? paymentMethod,
    Expression<String>? transactionId,
    Expression<String>? paymentType,
    Expression<DateTime>? paidAt,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (paymentReference != null) 'payment_reference': paymentReference,
      if (invoiceId != null) 'invoice_id': invoiceId,
      if (reservationId != null) 'reservation_id': reservationId,
      if (stayId != null) 'stay_id': stayId,
      if (amountPaise != null) 'amount_paise': amountPaise,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (transactionId != null) 'transaction_id': transactionId,
      if (paymentType != null) 'payment_type': paymentType,
      if (paidAt != null) 'paid_at': paidAt,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalPaymentsCompanion copyWith(
      {Value<String>? id,
      Value<String>? paymentReference,
      Value<String?>? invoiceId,
      Value<String?>? reservationId,
      Value<String?>? stayId,
      Value<int>? amountPaise,
      Value<String>? paymentMethod,
      Value<String?>? transactionId,
      Value<String>? paymentType,
      Value<DateTime>? paidAt,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return LocalPaymentsCompanion(
      id: id ?? this.id,
      paymentReference: paymentReference ?? this.paymentReference,
      invoiceId: invoiceId ?? this.invoiceId,
      reservationId: reservationId ?? this.reservationId,
      stayId: stayId ?? this.stayId,
      amountPaise: amountPaise ?? this.amountPaise,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      transactionId: transactionId ?? this.transactionId,
      paymentType: paymentType ?? this.paymentType,
      paidAt: paidAt ?? this.paidAt,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (paymentReference.present) {
      map['payment_reference'] = Variable<String>(paymentReference.value);
    }
    if (invoiceId.present) {
      map['invoice_id'] = Variable<String>(invoiceId.value);
    }
    if (reservationId.present) {
      map['reservation_id'] = Variable<String>(reservationId.value);
    }
    if (stayId.present) {
      map['stay_id'] = Variable<String>(stayId.value);
    }
    if (amountPaise.present) {
      map['amount_paise'] = Variable<int>(amountPaise.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (transactionId.present) {
      map['transaction_id'] = Variable<String>(transactionId.value);
    }
    if (paymentType.present) {
      map['payment_type'] = Variable<String>(paymentType.value);
    }
    if (paidAt.present) {
      map['paid_at'] = Variable<DateTime>(paidAt.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalPaymentsCompanion(')
          ..write('id: $id, ')
          ..write('paymentReference: $paymentReference, ')
          ..write('invoiceId: $invoiceId, ')
          ..write('reservationId: $reservationId, ')
          ..write('stayId: $stayId, ')
          ..write('amountPaise: $amountPaise, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('transactionId: $transactionId, ')
          ..write('paymentType: $paymentType, ')
          ..write('paidAt: $paidAt, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalEmployeesTable extends LocalEmployees
    with TableInfo<$LocalEmployeesTable, LocalEmployee> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalEmployeesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _employeeCodeMeta =
      const VerificationMeta('employeeCode');
  @override
  late final GeneratedColumn<String> employeeCode = GeneratedColumn<String>(
      'employee_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  @override
  late final GeneratedColumn<String> mobile = GeneratedColumn<String>(
      'mobile', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String> designation = GeneratedColumn<String>(
      'designation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _departmentMeta =
      const VerificationMeta('department');
  @override
  late final GeneratedColumn<String> department = GeneratedColumn<String>(
      'department', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Front Desk'));
  static const VerificationMeta _joiningDateMeta =
      const VerificationMeta('joiningDate');
  @override
  late final GeneratedColumn<DateTime> joiningDate = GeneratedColumn<DateTime>(
      'joining_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _baseMonthlySalaryPaiseMeta =
      const VerificationMeta('baseMonthlySalaryPaise');
  @override
  late final GeneratedColumn<int> baseMonthlySalaryPaise = GeneratedColumn<int>(
      'base_monthly_salary_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _salaryDueDayMeta =
      const VerificationMeta('salaryDueDay');
  @override
  late final GeneratedColumn<int> salaryDueDay = GeneratedColumn<int>(
      'salary_due_day', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(5));
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        employeeCode,
        fullName,
        mobile,
        designation,
        department,
        joiningDate,
        baseMonthlySalaryPaise,
        salaryDueDay,
        isActive,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_employees';
  @override
  VerificationContext validateIntegrity(Insertable<LocalEmployee> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('employee_code')) {
      context.handle(
          _employeeCodeMeta,
          employeeCode.isAcceptableOrUnknown(
              data['employee_code']!, _employeeCodeMeta));
    } else if (isInserting) {
      context.missing(_employeeCodeMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile']!, _mobileMeta));
    } else if (isInserting) {
      context.missing(_mobileMeta);
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    } else if (isInserting) {
      context.missing(_designationMeta);
    }
    if (data.containsKey('department')) {
      context.handle(
          _departmentMeta,
          department.isAcceptableOrUnknown(
              data['department']!, _departmentMeta));
    }
    if (data.containsKey('joining_date')) {
      context.handle(
          _joiningDateMeta,
          joiningDate.isAcceptableOrUnknown(
              data['joining_date']!, _joiningDateMeta));
    } else if (isInserting) {
      context.missing(_joiningDateMeta);
    }
    if (data.containsKey('base_monthly_salary_paise')) {
      context.handle(
          _baseMonthlySalaryPaiseMeta,
          baseMonthlySalaryPaise.isAcceptableOrUnknown(
              data['base_monthly_salary_paise']!, _baseMonthlySalaryPaiseMeta));
    } else if (isInserting) {
      context.missing(_baseMonthlySalaryPaiseMeta);
    }
    if (data.containsKey('salary_due_day')) {
      context.handle(
          _salaryDueDayMeta,
          salaryDueDay.isAcceptableOrUnknown(
              data['salary_due_day']!, _salaryDueDayMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalEmployee map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalEmployee(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      employeeCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_code'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      mobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile'])!,
      designation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}designation'])!,
      department: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}department'])!,
      joiningDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}joining_date'])!,
      baseMonthlySalaryPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}base_monthly_salary_paise'])!,
      salaryDueDay: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}salary_due_day'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $LocalEmployeesTable createAlias(String alias) {
    return $LocalEmployeesTable(attachedDatabase, alias);
  }
}

class LocalEmployee extends DataClass implements Insertable<LocalEmployee> {
  final String id;
  final String employeeCode;
  final String fullName;
  final String mobile;
  final String designation;
  final String department;
  final DateTime joiningDate;
  final int baseMonthlySalaryPaise;
  final int salaryDueDay;
  final bool isActive;
  final String? notes;
  const LocalEmployee(
      {required this.id,
      required this.employeeCode,
      required this.fullName,
      required this.mobile,
      required this.designation,
      required this.department,
      required this.joiningDate,
      required this.baseMonthlySalaryPaise,
      required this.salaryDueDay,
      required this.isActive,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['employee_code'] = Variable<String>(employeeCode);
    map['full_name'] = Variable<String>(fullName);
    map['mobile'] = Variable<String>(mobile);
    map['designation'] = Variable<String>(designation);
    map['department'] = Variable<String>(department);
    map['joining_date'] = Variable<DateTime>(joiningDate);
    map['base_monthly_salary_paise'] = Variable<int>(baseMonthlySalaryPaise);
    map['salary_due_day'] = Variable<int>(salaryDueDay);
    map['is_active'] = Variable<bool>(isActive);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  LocalEmployeesCompanion toCompanion(bool nullToAbsent) {
    return LocalEmployeesCompanion(
      id: Value(id),
      employeeCode: Value(employeeCode),
      fullName: Value(fullName),
      mobile: Value(mobile),
      designation: Value(designation),
      department: Value(department),
      joiningDate: Value(joiningDate),
      baseMonthlySalaryPaise: Value(baseMonthlySalaryPaise),
      salaryDueDay: Value(salaryDueDay),
      isActive: Value(isActive),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory LocalEmployee.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalEmployee(
      id: serializer.fromJson<String>(json['id']),
      employeeCode: serializer.fromJson<String>(json['employeeCode']),
      fullName: serializer.fromJson<String>(json['fullName']),
      mobile: serializer.fromJson<String>(json['mobile']),
      designation: serializer.fromJson<String>(json['designation']),
      department: serializer.fromJson<String>(json['department']),
      joiningDate: serializer.fromJson<DateTime>(json['joiningDate']),
      baseMonthlySalaryPaise:
          serializer.fromJson<int>(json['baseMonthlySalaryPaise']),
      salaryDueDay: serializer.fromJson<int>(json['salaryDueDay']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'employeeCode': serializer.toJson<String>(employeeCode),
      'fullName': serializer.toJson<String>(fullName),
      'mobile': serializer.toJson<String>(mobile),
      'designation': serializer.toJson<String>(designation),
      'department': serializer.toJson<String>(department),
      'joiningDate': serializer.toJson<DateTime>(joiningDate),
      'baseMonthlySalaryPaise': serializer.toJson<int>(baseMonthlySalaryPaise),
      'salaryDueDay': serializer.toJson<int>(salaryDueDay),
      'isActive': serializer.toJson<bool>(isActive),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  LocalEmployee copyWith(
          {String? id,
          String? employeeCode,
          String? fullName,
          String? mobile,
          String? designation,
          String? department,
          DateTime? joiningDate,
          int? baseMonthlySalaryPaise,
          int? salaryDueDay,
          bool? isActive,
          Value<String?> notes = const Value.absent()}) =>
      LocalEmployee(
        id: id ?? this.id,
        employeeCode: employeeCode ?? this.employeeCode,
        fullName: fullName ?? this.fullName,
        mobile: mobile ?? this.mobile,
        designation: designation ?? this.designation,
        department: department ?? this.department,
        joiningDate: joiningDate ?? this.joiningDate,
        baseMonthlySalaryPaise:
            baseMonthlySalaryPaise ?? this.baseMonthlySalaryPaise,
        salaryDueDay: salaryDueDay ?? this.salaryDueDay,
        isActive: isActive ?? this.isActive,
        notes: notes.present ? notes.value : this.notes,
      );
  LocalEmployee copyWithCompanion(LocalEmployeesCompanion data) {
    return LocalEmployee(
      id: data.id.present ? data.id.value : this.id,
      employeeCode: data.employeeCode.present
          ? data.employeeCode.value
          : this.employeeCode,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      mobile: data.mobile.present ? data.mobile.value : this.mobile,
      designation:
          data.designation.present ? data.designation.value : this.designation,
      department:
          data.department.present ? data.department.value : this.department,
      joiningDate:
          data.joiningDate.present ? data.joiningDate.value : this.joiningDate,
      baseMonthlySalaryPaise: data.baseMonthlySalaryPaise.present
          ? data.baseMonthlySalaryPaise.value
          : this.baseMonthlySalaryPaise,
      salaryDueDay: data.salaryDueDay.present
          ? data.salaryDueDay.value
          : this.salaryDueDay,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalEmployee(')
          ..write('id: $id, ')
          ..write('employeeCode: $employeeCode, ')
          ..write('fullName: $fullName, ')
          ..write('mobile: $mobile, ')
          ..write('designation: $designation, ')
          ..write('department: $department, ')
          ..write('joiningDate: $joiningDate, ')
          ..write('baseMonthlySalaryPaise: $baseMonthlySalaryPaise, ')
          ..write('salaryDueDay: $salaryDueDay, ')
          ..write('isActive: $isActive, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      employeeCode,
      fullName,
      mobile,
      designation,
      department,
      joiningDate,
      baseMonthlySalaryPaise,
      salaryDueDay,
      isActive,
      notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalEmployee &&
          other.id == this.id &&
          other.employeeCode == this.employeeCode &&
          other.fullName == this.fullName &&
          other.mobile == this.mobile &&
          other.designation == this.designation &&
          other.department == this.department &&
          other.joiningDate == this.joiningDate &&
          other.baseMonthlySalaryPaise == this.baseMonthlySalaryPaise &&
          other.salaryDueDay == this.salaryDueDay &&
          other.isActive == this.isActive &&
          other.notes == this.notes);
}

class LocalEmployeesCompanion extends UpdateCompanion<LocalEmployee> {
  final Value<String> id;
  final Value<String> employeeCode;
  final Value<String> fullName;
  final Value<String> mobile;
  final Value<String> designation;
  final Value<String> department;
  final Value<DateTime> joiningDate;
  final Value<int> baseMonthlySalaryPaise;
  final Value<int> salaryDueDay;
  final Value<bool> isActive;
  final Value<String?> notes;
  final Value<int> rowid;
  const LocalEmployeesCompanion({
    this.id = const Value.absent(),
    this.employeeCode = const Value.absent(),
    this.fullName = const Value.absent(),
    this.mobile = const Value.absent(),
    this.designation = const Value.absent(),
    this.department = const Value.absent(),
    this.joiningDate = const Value.absent(),
    this.baseMonthlySalaryPaise = const Value.absent(),
    this.salaryDueDay = const Value.absent(),
    this.isActive = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalEmployeesCompanion.insert({
    required String id,
    required String employeeCode,
    required String fullName,
    required String mobile,
    required String designation,
    this.department = const Value.absent(),
    required DateTime joiningDate,
    required int baseMonthlySalaryPaise,
    this.salaryDueDay = const Value.absent(),
    this.isActive = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        employeeCode = Value(employeeCode),
        fullName = Value(fullName),
        mobile = Value(mobile),
        designation = Value(designation),
        joiningDate = Value(joiningDate),
        baseMonthlySalaryPaise = Value(baseMonthlySalaryPaise);
  static Insertable<LocalEmployee> custom({
    Expression<String>? id,
    Expression<String>? employeeCode,
    Expression<String>? fullName,
    Expression<String>? mobile,
    Expression<String>? designation,
    Expression<String>? department,
    Expression<DateTime>? joiningDate,
    Expression<int>? baseMonthlySalaryPaise,
    Expression<int>? salaryDueDay,
    Expression<bool>? isActive,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (employeeCode != null) 'employee_code': employeeCode,
      if (fullName != null) 'full_name': fullName,
      if (mobile != null) 'mobile': mobile,
      if (designation != null) 'designation': designation,
      if (department != null) 'department': department,
      if (joiningDate != null) 'joining_date': joiningDate,
      if (baseMonthlySalaryPaise != null)
        'base_monthly_salary_paise': baseMonthlySalaryPaise,
      if (salaryDueDay != null) 'salary_due_day': salaryDueDay,
      if (isActive != null) 'is_active': isActive,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalEmployeesCompanion copyWith(
      {Value<String>? id,
      Value<String>? employeeCode,
      Value<String>? fullName,
      Value<String>? mobile,
      Value<String>? designation,
      Value<String>? department,
      Value<DateTime>? joiningDate,
      Value<int>? baseMonthlySalaryPaise,
      Value<int>? salaryDueDay,
      Value<bool>? isActive,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return LocalEmployeesCompanion(
      id: id ?? this.id,
      employeeCode: employeeCode ?? this.employeeCode,
      fullName: fullName ?? this.fullName,
      mobile: mobile ?? this.mobile,
      designation: designation ?? this.designation,
      department: department ?? this.department,
      joiningDate: joiningDate ?? this.joiningDate,
      baseMonthlySalaryPaise:
          baseMonthlySalaryPaise ?? this.baseMonthlySalaryPaise,
      salaryDueDay: salaryDueDay ?? this.salaryDueDay,
      isActive: isActive ?? this.isActive,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (employeeCode.present) {
      map['employee_code'] = Variable<String>(employeeCode.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (department.present) {
      map['department'] = Variable<String>(department.value);
    }
    if (joiningDate.present) {
      map['joining_date'] = Variable<DateTime>(joiningDate.value);
    }
    if (baseMonthlySalaryPaise.present) {
      map['base_monthly_salary_paise'] =
          Variable<int>(baseMonthlySalaryPaise.value);
    }
    if (salaryDueDay.present) {
      map['salary_due_day'] = Variable<int>(salaryDueDay.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalEmployeesCompanion(')
          ..write('id: $id, ')
          ..write('employeeCode: $employeeCode, ')
          ..write('fullName: $fullName, ')
          ..write('mobile: $mobile, ')
          ..write('designation: $designation, ')
          ..write('department: $department, ')
          ..write('joiningDate: $joiningDate, ')
          ..write('baseMonthlySalaryPaise: $baseMonthlySalaryPaise, ')
          ..write('salaryDueDay: $salaryDueDay, ')
          ..write('isActive: $isActive, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalSalaryRecordsTable extends LocalSalaryRecords
    with TableInfo<$LocalSalaryRecordsTable, LocalSalaryRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalSalaryRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _employeeIdMeta =
      const VerificationMeta('employeeId');
  @override
  late final GeneratedColumn<String> employeeId = GeneratedColumn<String>(
      'employee_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _employeeNameMeta =
      const VerificationMeta('employeeName');
  @override
  late final GeneratedColumn<String> employeeName = GeneratedColumn<String>(
      'employee_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _salaryMonthMeta =
      const VerificationMeta('salaryMonth');
  @override
  late final GeneratedColumn<String> salaryMonth = GeneratedColumn<String>(
      'salary_month', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _baseSalaryPaiseMeta =
      const VerificationMeta('baseSalaryPaise');
  @override
  late final GeneratedColumn<int> baseSalaryPaise = GeneratedColumn<int>(
      'base_salary_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _additionalEarningsPaiseMeta =
      const VerificationMeta('additionalEarningsPaise');
  @override
  late final GeneratedColumn<int> additionalEarningsPaise =
      GeneratedColumn<int>('additional_earnings_paise', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: false,
          defaultValue: const Constant(0));
  static const VerificationMeta _deductionsPaiseMeta =
      const VerificationMeta('deductionsPaise');
  @override
  late final GeneratedColumn<int> deductionsPaise = GeneratedColumn<int>(
      'deductions_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _grossSalaryPaiseMeta =
      const VerificationMeta('grossSalaryPaise');
  @override
  late final GeneratedColumn<int> grossSalaryPaise = GeneratedColumn<int>(
      'gross_salary_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _advanceRecoveredPaiseMeta =
      const VerificationMeta('advanceRecoveredPaise');
  @override
  late final GeneratedColumn<int> advanceRecoveredPaise = GeneratedColumn<int>(
      'advance_recovered_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _netSalaryPayablePaiseMeta =
      const VerificationMeta('netSalaryPayablePaise');
  @override
  late final GeneratedColumn<int> netSalaryPayablePaise = GeneratedColumn<int>(
      'net_salary_payable_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _amountPaidPaiseMeta =
      const VerificationMeta('amountPaidPaise');
  @override
  late final GeneratedColumn<int> amountPaidPaise = GeneratedColumn<int>(
      'amount_paid_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _outstandingBalancePaiseMeta =
      const VerificationMeta('outstandingBalancePaise');
  @override
  late final GeneratedColumn<int> outstandingBalancePaise =
      GeneratedColumn<int>('outstanding_balance_paise', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: false,
          defaultValue: const Constant(0));
  static const VerificationMeta _dueDateMeta =
      const VerificationMeta('dueDate');
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
      'due_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('salary_due'));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        employeeId,
        employeeName,
        salaryMonth,
        baseSalaryPaise,
        additionalEarningsPaise,
        deductionsPaise,
        grossSalaryPaise,
        advanceRecoveredPaise,
        netSalaryPayablePaise,
        amountPaidPaise,
        outstandingBalancePaise,
        dueDate,
        status,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_salary_records';
  @override
  VerificationContext validateIntegrity(Insertable<LocalSalaryRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('employee_id')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employee_id']!, _employeeIdMeta));
    } else if (isInserting) {
      context.missing(_employeeIdMeta);
    }
    if (data.containsKey('employee_name')) {
      context.handle(
          _employeeNameMeta,
          employeeName.isAcceptableOrUnknown(
              data['employee_name']!, _employeeNameMeta));
    } else if (isInserting) {
      context.missing(_employeeNameMeta);
    }
    if (data.containsKey('salary_month')) {
      context.handle(
          _salaryMonthMeta,
          salaryMonth.isAcceptableOrUnknown(
              data['salary_month']!, _salaryMonthMeta));
    } else if (isInserting) {
      context.missing(_salaryMonthMeta);
    }
    if (data.containsKey('base_salary_paise')) {
      context.handle(
          _baseSalaryPaiseMeta,
          baseSalaryPaise.isAcceptableOrUnknown(
              data['base_salary_paise']!, _baseSalaryPaiseMeta));
    } else if (isInserting) {
      context.missing(_baseSalaryPaiseMeta);
    }
    if (data.containsKey('additional_earnings_paise')) {
      context.handle(
          _additionalEarningsPaiseMeta,
          additionalEarningsPaise.isAcceptableOrUnknown(
              data['additional_earnings_paise']!,
              _additionalEarningsPaiseMeta));
    }
    if (data.containsKey('deductions_paise')) {
      context.handle(
          _deductionsPaiseMeta,
          deductionsPaise.isAcceptableOrUnknown(
              data['deductions_paise']!, _deductionsPaiseMeta));
    }
    if (data.containsKey('gross_salary_paise')) {
      context.handle(
          _grossSalaryPaiseMeta,
          grossSalaryPaise.isAcceptableOrUnknown(
              data['gross_salary_paise']!, _grossSalaryPaiseMeta));
    } else if (isInserting) {
      context.missing(_grossSalaryPaiseMeta);
    }
    if (data.containsKey('advance_recovered_paise')) {
      context.handle(
          _advanceRecoveredPaiseMeta,
          advanceRecoveredPaise.isAcceptableOrUnknown(
              data['advance_recovered_paise']!, _advanceRecoveredPaiseMeta));
    }
    if (data.containsKey('net_salary_payable_paise')) {
      context.handle(
          _netSalaryPayablePaiseMeta,
          netSalaryPayablePaise.isAcceptableOrUnknown(
              data['net_salary_payable_paise']!, _netSalaryPayablePaiseMeta));
    } else if (isInserting) {
      context.missing(_netSalaryPayablePaiseMeta);
    }
    if (data.containsKey('amount_paid_paise')) {
      context.handle(
          _amountPaidPaiseMeta,
          amountPaidPaise.isAcceptableOrUnknown(
              data['amount_paid_paise']!, _amountPaidPaiseMeta));
    }
    if (data.containsKey('outstanding_balance_paise')) {
      context.handle(
          _outstandingBalancePaiseMeta,
          outstandingBalancePaise.isAcceptableOrUnknown(
              data['outstanding_balance_paise']!,
              _outstandingBalancePaiseMeta));
    }
    if (data.containsKey('due_date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta));
    } else if (isInserting) {
      context.missing(_dueDateMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalSalaryRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalSalaryRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      employeeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_id'])!,
      employeeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_name'])!,
      salaryMonth: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}salary_month'])!,
      baseSalaryPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}base_salary_paise'])!,
      additionalEarningsPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}additional_earnings_paise'])!,
      deductionsPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}deductions_paise'])!,
      grossSalaryPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}gross_salary_paise'])!,
      advanceRecoveredPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}advance_recovered_paise'])!,
      netSalaryPayablePaise: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}net_salary_payable_paise'])!,
      amountPaidPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount_paid_paise'])!,
      outstandingBalancePaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}outstanding_balance_paise'])!,
      dueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}due_date'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $LocalSalaryRecordsTable createAlias(String alias) {
    return $LocalSalaryRecordsTable(attachedDatabase, alias);
  }
}

class LocalSalaryRecord extends DataClass
    implements Insertable<LocalSalaryRecord> {
  final String id;
  final String employeeId;
  final String employeeName;
  final String salaryMonth;
  final int baseSalaryPaise;
  final int additionalEarningsPaise;
  final int deductionsPaise;
  final int grossSalaryPaise;
  final int advanceRecoveredPaise;
  final int netSalaryPayablePaise;
  final int amountPaidPaise;
  final int outstandingBalancePaise;
  final DateTime dueDate;
  final String status;
  final String? notes;
  const LocalSalaryRecord(
      {required this.id,
      required this.employeeId,
      required this.employeeName,
      required this.salaryMonth,
      required this.baseSalaryPaise,
      required this.additionalEarningsPaise,
      required this.deductionsPaise,
      required this.grossSalaryPaise,
      required this.advanceRecoveredPaise,
      required this.netSalaryPayablePaise,
      required this.amountPaidPaise,
      required this.outstandingBalancePaise,
      required this.dueDate,
      required this.status,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['employee_id'] = Variable<String>(employeeId);
    map['employee_name'] = Variable<String>(employeeName);
    map['salary_month'] = Variable<String>(salaryMonth);
    map['base_salary_paise'] = Variable<int>(baseSalaryPaise);
    map['additional_earnings_paise'] = Variable<int>(additionalEarningsPaise);
    map['deductions_paise'] = Variable<int>(deductionsPaise);
    map['gross_salary_paise'] = Variable<int>(grossSalaryPaise);
    map['advance_recovered_paise'] = Variable<int>(advanceRecoveredPaise);
    map['net_salary_payable_paise'] = Variable<int>(netSalaryPayablePaise);
    map['amount_paid_paise'] = Variable<int>(amountPaidPaise);
    map['outstanding_balance_paise'] = Variable<int>(outstandingBalancePaise);
    map['due_date'] = Variable<DateTime>(dueDate);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  LocalSalaryRecordsCompanion toCompanion(bool nullToAbsent) {
    return LocalSalaryRecordsCompanion(
      id: Value(id),
      employeeId: Value(employeeId),
      employeeName: Value(employeeName),
      salaryMonth: Value(salaryMonth),
      baseSalaryPaise: Value(baseSalaryPaise),
      additionalEarningsPaise: Value(additionalEarningsPaise),
      deductionsPaise: Value(deductionsPaise),
      grossSalaryPaise: Value(grossSalaryPaise),
      advanceRecoveredPaise: Value(advanceRecoveredPaise),
      netSalaryPayablePaise: Value(netSalaryPayablePaise),
      amountPaidPaise: Value(amountPaidPaise),
      outstandingBalancePaise: Value(outstandingBalancePaise),
      dueDate: Value(dueDate),
      status: Value(status),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory LocalSalaryRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalSalaryRecord(
      id: serializer.fromJson<String>(json['id']),
      employeeId: serializer.fromJson<String>(json['employeeId']),
      employeeName: serializer.fromJson<String>(json['employeeName']),
      salaryMonth: serializer.fromJson<String>(json['salaryMonth']),
      baseSalaryPaise: serializer.fromJson<int>(json['baseSalaryPaise']),
      additionalEarningsPaise:
          serializer.fromJson<int>(json['additionalEarningsPaise']),
      deductionsPaise: serializer.fromJson<int>(json['deductionsPaise']),
      grossSalaryPaise: serializer.fromJson<int>(json['grossSalaryPaise']),
      advanceRecoveredPaise:
          serializer.fromJson<int>(json['advanceRecoveredPaise']),
      netSalaryPayablePaise:
          serializer.fromJson<int>(json['netSalaryPayablePaise']),
      amountPaidPaise: serializer.fromJson<int>(json['amountPaidPaise']),
      outstandingBalancePaise:
          serializer.fromJson<int>(json['outstandingBalancePaise']),
      dueDate: serializer.fromJson<DateTime>(json['dueDate']),
      status: serializer.fromJson<String>(json['status']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'employeeId': serializer.toJson<String>(employeeId),
      'employeeName': serializer.toJson<String>(employeeName),
      'salaryMonth': serializer.toJson<String>(salaryMonth),
      'baseSalaryPaise': serializer.toJson<int>(baseSalaryPaise),
      'additionalEarningsPaise':
          serializer.toJson<int>(additionalEarningsPaise),
      'deductionsPaise': serializer.toJson<int>(deductionsPaise),
      'grossSalaryPaise': serializer.toJson<int>(grossSalaryPaise),
      'advanceRecoveredPaise': serializer.toJson<int>(advanceRecoveredPaise),
      'netSalaryPayablePaise': serializer.toJson<int>(netSalaryPayablePaise),
      'amountPaidPaise': serializer.toJson<int>(amountPaidPaise),
      'outstandingBalancePaise':
          serializer.toJson<int>(outstandingBalancePaise),
      'dueDate': serializer.toJson<DateTime>(dueDate),
      'status': serializer.toJson<String>(status),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  LocalSalaryRecord copyWith(
          {String? id,
          String? employeeId,
          String? employeeName,
          String? salaryMonth,
          int? baseSalaryPaise,
          int? additionalEarningsPaise,
          int? deductionsPaise,
          int? grossSalaryPaise,
          int? advanceRecoveredPaise,
          int? netSalaryPayablePaise,
          int? amountPaidPaise,
          int? outstandingBalancePaise,
          DateTime? dueDate,
          String? status,
          Value<String?> notes = const Value.absent()}) =>
      LocalSalaryRecord(
        id: id ?? this.id,
        employeeId: employeeId ?? this.employeeId,
        employeeName: employeeName ?? this.employeeName,
        salaryMonth: salaryMonth ?? this.salaryMonth,
        baseSalaryPaise: baseSalaryPaise ?? this.baseSalaryPaise,
        additionalEarningsPaise:
            additionalEarningsPaise ?? this.additionalEarningsPaise,
        deductionsPaise: deductionsPaise ?? this.deductionsPaise,
        grossSalaryPaise: grossSalaryPaise ?? this.grossSalaryPaise,
        advanceRecoveredPaise:
            advanceRecoveredPaise ?? this.advanceRecoveredPaise,
        netSalaryPayablePaise:
            netSalaryPayablePaise ?? this.netSalaryPayablePaise,
        amountPaidPaise: amountPaidPaise ?? this.amountPaidPaise,
        outstandingBalancePaise:
            outstandingBalancePaise ?? this.outstandingBalancePaise,
        dueDate: dueDate ?? this.dueDate,
        status: status ?? this.status,
        notes: notes.present ? notes.value : this.notes,
      );
  LocalSalaryRecord copyWithCompanion(LocalSalaryRecordsCompanion data) {
    return LocalSalaryRecord(
      id: data.id.present ? data.id.value : this.id,
      employeeId:
          data.employeeId.present ? data.employeeId.value : this.employeeId,
      employeeName: data.employeeName.present
          ? data.employeeName.value
          : this.employeeName,
      salaryMonth:
          data.salaryMonth.present ? data.salaryMonth.value : this.salaryMonth,
      baseSalaryPaise: data.baseSalaryPaise.present
          ? data.baseSalaryPaise.value
          : this.baseSalaryPaise,
      additionalEarningsPaise: data.additionalEarningsPaise.present
          ? data.additionalEarningsPaise.value
          : this.additionalEarningsPaise,
      deductionsPaise: data.deductionsPaise.present
          ? data.deductionsPaise.value
          : this.deductionsPaise,
      grossSalaryPaise: data.grossSalaryPaise.present
          ? data.grossSalaryPaise.value
          : this.grossSalaryPaise,
      advanceRecoveredPaise: data.advanceRecoveredPaise.present
          ? data.advanceRecoveredPaise.value
          : this.advanceRecoveredPaise,
      netSalaryPayablePaise: data.netSalaryPayablePaise.present
          ? data.netSalaryPayablePaise.value
          : this.netSalaryPayablePaise,
      amountPaidPaise: data.amountPaidPaise.present
          ? data.amountPaidPaise.value
          : this.amountPaidPaise,
      outstandingBalancePaise: data.outstandingBalancePaise.present
          ? data.outstandingBalancePaise.value
          : this.outstandingBalancePaise,
      dueDate: data.dueDate.present ? data.dueDate.value : this.dueDate,
      status: data.status.present ? data.status.value : this.status,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalSalaryRecord(')
          ..write('id: $id, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('salaryMonth: $salaryMonth, ')
          ..write('baseSalaryPaise: $baseSalaryPaise, ')
          ..write('additionalEarningsPaise: $additionalEarningsPaise, ')
          ..write('deductionsPaise: $deductionsPaise, ')
          ..write('grossSalaryPaise: $grossSalaryPaise, ')
          ..write('advanceRecoveredPaise: $advanceRecoveredPaise, ')
          ..write('netSalaryPayablePaise: $netSalaryPayablePaise, ')
          ..write('amountPaidPaise: $amountPaidPaise, ')
          ..write('outstandingBalancePaise: $outstandingBalancePaise, ')
          ..write('dueDate: $dueDate, ')
          ..write('status: $status, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      employeeId,
      employeeName,
      salaryMonth,
      baseSalaryPaise,
      additionalEarningsPaise,
      deductionsPaise,
      grossSalaryPaise,
      advanceRecoveredPaise,
      netSalaryPayablePaise,
      amountPaidPaise,
      outstandingBalancePaise,
      dueDate,
      status,
      notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalSalaryRecord &&
          other.id == this.id &&
          other.employeeId == this.employeeId &&
          other.employeeName == this.employeeName &&
          other.salaryMonth == this.salaryMonth &&
          other.baseSalaryPaise == this.baseSalaryPaise &&
          other.additionalEarningsPaise == this.additionalEarningsPaise &&
          other.deductionsPaise == this.deductionsPaise &&
          other.grossSalaryPaise == this.grossSalaryPaise &&
          other.advanceRecoveredPaise == this.advanceRecoveredPaise &&
          other.netSalaryPayablePaise == this.netSalaryPayablePaise &&
          other.amountPaidPaise == this.amountPaidPaise &&
          other.outstandingBalancePaise == this.outstandingBalancePaise &&
          other.dueDate == this.dueDate &&
          other.status == this.status &&
          other.notes == this.notes);
}

class LocalSalaryRecordsCompanion extends UpdateCompanion<LocalSalaryRecord> {
  final Value<String> id;
  final Value<String> employeeId;
  final Value<String> employeeName;
  final Value<String> salaryMonth;
  final Value<int> baseSalaryPaise;
  final Value<int> additionalEarningsPaise;
  final Value<int> deductionsPaise;
  final Value<int> grossSalaryPaise;
  final Value<int> advanceRecoveredPaise;
  final Value<int> netSalaryPayablePaise;
  final Value<int> amountPaidPaise;
  final Value<int> outstandingBalancePaise;
  final Value<DateTime> dueDate;
  final Value<String> status;
  final Value<String?> notes;
  final Value<int> rowid;
  const LocalSalaryRecordsCompanion({
    this.id = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.employeeName = const Value.absent(),
    this.salaryMonth = const Value.absent(),
    this.baseSalaryPaise = const Value.absent(),
    this.additionalEarningsPaise = const Value.absent(),
    this.deductionsPaise = const Value.absent(),
    this.grossSalaryPaise = const Value.absent(),
    this.advanceRecoveredPaise = const Value.absent(),
    this.netSalaryPayablePaise = const Value.absent(),
    this.amountPaidPaise = const Value.absent(),
    this.outstandingBalancePaise = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.status = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalSalaryRecordsCompanion.insert({
    required String id,
    required String employeeId,
    required String employeeName,
    required String salaryMonth,
    required int baseSalaryPaise,
    this.additionalEarningsPaise = const Value.absent(),
    this.deductionsPaise = const Value.absent(),
    required int grossSalaryPaise,
    this.advanceRecoveredPaise = const Value.absent(),
    required int netSalaryPayablePaise,
    this.amountPaidPaise = const Value.absent(),
    this.outstandingBalancePaise = const Value.absent(),
    required DateTime dueDate,
    this.status = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        employeeId = Value(employeeId),
        employeeName = Value(employeeName),
        salaryMonth = Value(salaryMonth),
        baseSalaryPaise = Value(baseSalaryPaise),
        grossSalaryPaise = Value(grossSalaryPaise),
        netSalaryPayablePaise = Value(netSalaryPayablePaise),
        dueDate = Value(dueDate);
  static Insertable<LocalSalaryRecord> custom({
    Expression<String>? id,
    Expression<String>? employeeId,
    Expression<String>? employeeName,
    Expression<String>? salaryMonth,
    Expression<int>? baseSalaryPaise,
    Expression<int>? additionalEarningsPaise,
    Expression<int>? deductionsPaise,
    Expression<int>? grossSalaryPaise,
    Expression<int>? advanceRecoveredPaise,
    Expression<int>? netSalaryPayablePaise,
    Expression<int>? amountPaidPaise,
    Expression<int>? outstandingBalancePaise,
    Expression<DateTime>? dueDate,
    Expression<String>? status,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (employeeId != null) 'employee_id': employeeId,
      if (employeeName != null) 'employee_name': employeeName,
      if (salaryMonth != null) 'salary_month': salaryMonth,
      if (baseSalaryPaise != null) 'base_salary_paise': baseSalaryPaise,
      if (additionalEarningsPaise != null)
        'additional_earnings_paise': additionalEarningsPaise,
      if (deductionsPaise != null) 'deductions_paise': deductionsPaise,
      if (grossSalaryPaise != null) 'gross_salary_paise': grossSalaryPaise,
      if (advanceRecoveredPaise != null)
        'advance_recovered_paise': advanceRecoveredPaise,
      if (netSalaryPayablePaise != null)
        'net_salary_payable_paise': netSalaryPayablePaise,
      if (amountPaidPaise != null) 'amount_paid_paise': amountPaidPaise,
      if (outstandingBalancePaise != null)
        'outstanding_balance_paise': outstandingBalancePaise,
      if (dueDate != null) 'due_date': dueDate,
      if (status != null) 'status': status,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalSalaryRecordsCompanion copyWith(
      {Value<String>? id,
      Value<String>? employeeId,
      Value<String>? employeeName,
      Value<String>? salaryMonth,
      Value<int>? baseSalaryPaise,
      Value<int>? additionalEarningsPaise,
      Value<int>? deductionsPaise,
      Value<int>? grossSalaryPaise,
      Value<int>? advanceRecoveredPaise,
      Value<int>? netSalaryPayablePaise,
      Value<int>? amountPaidPaise,
      Value<int>? outstandingBalancePaise,
      Value<DateTime>? dueDate,
      Value<String>? status,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return LocalSalaryRecordsCompanion(
      id: id ?? this.id,
      employeeId: employeeId ?? this.employeeId,
      employeeName: employeeName ?? this.employeeName,
      salaryMonth: salaryMonth ?? this.salaryMonth,
      baseSalaryPaise: baseSalaryPaise ?? this.baseSalaryPaise,
      additionalEarningsPaise:
          additionalEarningsPaise ?? this.additionalEarningsPaise,
      deductionsPaise: deductionsPaise ?? this.deductionsPaise,
      grossSalaryPaise: grossSalaryPaise ?? this.grossSalaryPaise,
      advanceRecoveredPaise:
          advanceRecoveredPaise ?? this.advanceRecoveredPaise,
      netSalaryPayablePaise:
          netSalaryPayablePaise ?? this.netSalaryPayablePaise,
      amountPaidPaise: amountPaidPaise ?? this.amountPaidPaise,
      outstandingBalancePaise:
          outstandingBalancePaise ?? this.outstandingBalancePaise,
      dueDate: dueDate ?? this.dueDate,
      status: status ?? this.status,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (employeeId.present) {
      map['employee_id'] = Variable<String>(employeeId.value);
    }
    if (employeeName.present) {
      map['employee_name'] = Variable<String>(employeeName.value);
    }
    if (salaryMonth.present) {
      map['salary_month'] = Variable<String>(salaryMonth.value);
    }
    if (baseSalaryPaise.present) {
      map['base_salary_paise'] = Variable<int>(baseSalaryPaise.value);
    }
    if (additionalEarningsPaise.present) {
      map['additional_earnings_paise'] =
          Variable<int>(additionalEarningsPaise.value);
    }
    if (deductionsPaise.present) {
      map['deductions_paise'] = Variable<int>(deductionsPaise.value);
    }
    if (grossSalaryPaise.present) {
      map['gross_salary_paise'] = Variable<int>(grossSalaryPaise.value);
    }
    if (advanceRecoveredPaise.present) {
      map['advance_recovered_paise'] =
          Variable<int>(advanceRecoveredPaise.value);
    }
    if (netSalaryPayablePaise.present) {
      map['net_salary_payable_paise'] =
          Variable<int>(netSalaryPayablePaise.value);
    }
    if (amountPaidPaise.present) {
      map['amount_paid_paise'] = Variable<int>(amountPaidPaise.value);
    }
    if (outstandingBalancePaise.present) {
      map['outstanding_balance_paise'] =
          Variable<int>(outstandingBalancePaise.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalSalaryRecordsCompanion(')
          ..write('id: $id, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('salaryMonth: $salaryMonth, ')
          ..write('baseSalaryPaise: $baseSalaryPaise, ')
          ..write('additionalEarningsPaise: $additionalEarningsPaise, ')
          ..write('deductionsPaise: $deductionsPaise, ')
          ..write('grossSalaryPaise: $grossSalaryPaise, ')
          ..write('advanceRecoveredPaise: $advanceRecoveredPaise, ')
          ..write('netSalaryPayablePaise: $netSalaryPayablePaise, ')
          ..write('amountPaidPaise: $amountPaidPaise, ')
          ..write('outstandingBalancePaise: $outstandingBalancePaise, ')
          ..write('dueDate: $dueDate, ')
          ..write('status: $status, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalSalaryAdvancesTable extends LocalSalaryAdvances
    with TableInfo<$LocalSalaryAdvancesTable, LocalSalaryAdvance> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalSalaryAdvancesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _advanceCodeMeta =
      const VerificationMeta('advanceCode');
  @override
  late final GeneratedColumn<String> advanceCode = GeneratedColumn<String>(
      'advance_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _employeeIdMeta =
      const VerificationMeta('employeeId');
  @override
  late final GeneratedColumn<String> employeeId = GeneratedColumn<String>(
      'employee_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _employeeNameMeta =
      const VerificationMeta('employeeName');
  @override
  late final GeneratedColumn<String> employeeName = GeneratedColumn<String>(
      'employee_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _advanceDateMeta =
      const VerificationMeta('advanceDate');
  @override
  late final GeneratedColumn<DateTime> advanceDate = GeneratedColumn<DateTime>(
      'advance_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _amountPaiseMeta =
      const VerificationMeta('amountPaise');
  @override
  late final GeneratedColumn<int> amountPaise = GeneratedColumn<int>(
      'amount_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _recoveredAmountPaiseMeta =
      const VerificationMeta('recoveredAmountPaise');
  @override
  late final GeneratedColumn<int> recoveredAmountPaise = GeneratedColumn<int>(
      'recovered_amount_paise', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _outstandingBalancePaiseMeta =
      const VerificationMeta('outstandingBalancePaise');
  @override
  late final GeneratedColumn<int> outstandingBalancePaise =
      GeneratedColumn<int>('outstanding_balance_paise', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String> reason = GeneratedColumn<String>(
      'reason', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('active'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        advanceCode,
        employeeId,
        employeeName,
        advanceDate,
        amountPaise,
        recoveredAmountPaise,
        outstandingBalancePaise,
        reason,
        status
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_salary_advances';
  @override
  VerificationContext validateIntegrity(Insertable<LocalSalaryAdvance> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('advance_code')) {
      context.handle(
          _advanceCodeMeta,
          advanceCode.isAcceptableOrUnknown(
              data['advance_code']!, _advanceCodeMeta));
    } else if (isInserting) {
      context.missing(_advanceCodeMeta);
    }
    if (data.containsKey('employee_id')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employee_id']!, _employeeIdMeta));
    } else if (isInserting) {
      context.missing(_employeeIdMeta);
    }
    if (data.containsKey('employee_name')) {
      context.handle(
          _employeeNameMeta,
          employeeName.isAcceptableOrUnknown(
              data['employee_name']!, _employeeNameMeta));
    } else if (isInserting) {
      context.missing(_employeeNameMeta);
    }
    if (data.containsKey('advance_date')) {
      context.handle(
          _advanceDateMeta,
          advanceDate.isAcceptableOrUnknown(
              data['advance_date']!, _advanceDateMeta));
    } else if (isInserting) {
      context.missing(_advanceDateMeta);
    }
    if (data.containsKey('amount_paise')) {
      context.handle(
          _amountPaiseMeta,
          amountPaise.isAcceptableOrUnknown(
              data['amount_paise']!, _amountPaiseMeta));
    } else if (isInserting) {
      context.missing(_amountPaiseMeta);
    }
    if (data.containsKey('recovered_amount_paise')) {
      context.handle(
          _recoveredAmountPaiseMeta,
          recoveredAmountPaise.isAcceptableOrUnknown(
              data['recovered_amount_paise']!, _recoveredAmountPaiseMeta));
    }
    if (data.containsKey('outstanding_balance_paise')) {
      context.handle(
          _outstandingBalancePaiseMeta,
          outstandingBalancePaise.isAcceptableOrUnknown(
              data['outstanding_balance_paise']!,
              _outstandingBalancePaiseMeta));
    } else if (isInserting) {
      context.missing(_outstandingBalancePaiseMeta);
    }
    if (data.containsKey('reason')) {
      context.handle(_reasonMeta,
          reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalSalaryAdvance map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalSalaryAdvance(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      advanceCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}advance_code'])!,
      employeeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_id'])!,
      employeeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_name'])!,
      advanceDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}advance_date'])!,
      amountPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount_paise'])!,
      recoveredAmountPaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}recovered_amount_paise'])!,
      outstandingBalancePaise: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}outstanding_balance_paise'])!,
      reason: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reason']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $LocalSalaryAdvancesTable createAlias(String alias) {
    return $LocalSalaryAdvancesTable(attachedDatabase, alias);
  }
}

class LocalSalaryAdvance extends DataClass
    implements Insertable<LocalSalaryAdvance> {
  final String id;
  final String advanceCode;
  final String employeeId;
  final String employeeName;
  final DateTime advanceDate;
  final int amountPaise;
  final int recoveredAmountPaise;
  final int outstandingBalancePaise;
  final String? reason;
  final String status;
  const LocalSalaryAdvance(
      {required this.id,
      required this.advanceCode,
      required this.employeeId,
      required this.employeeName,
      required this.advanceDate,
      required this.amountPaise,
      required this.recoveredAmountPaise,
      required this.outstandingBalancePaise,
      this.reason,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['advance_code'] = Variable<String>(advanceCode);
    map['employee_id'] = Variable<String>(employeeId);
    map['employee_name'] = Variable<String>(employeeName);
    map['advance_date'] = Variable<DateTime>(advanceDate);
    map['amount_paise'] = Variable<int>(amountPaise);
    map['recovered_amount_paise'] = Variable<int>(recoveredAmountPaise);
    map['outstanding_balance_paise'] = Variable<int>(outstandingBalancePaise);
    if (!nullToAbsent || reason != null) {
      map['reason'] = Variable<String>(reason);
    }
    map['status'] = Variable<String>(status);
    return map;
  }

  LocalSalaryAdvancesCompanion toCompanion(bool nullToAbsent) {
    return LocalSalaryAdvancesCompanion(
      id: Value(id),
      advanceCode: Value(advanceCode),
      employeeId: Value(employeeId),
      employeeName: Value(employeeName),
      advanceDate: Value(advanceDate),
      amountPaise: Value(amountPaise),
      recoveredAmountPaise: Value(recoveredAmountPaise),
      outstandingBalancePaise: Value(outstandingBalancePaise),
      reason:
          reason == null && nullToAbsent ? const Value.absent() : Value(reason),
      status: Value(status),
    );
  }

  factory LocalSalaryAdvance.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalSalaryAdvance(
      id: serializer.fromJson<String>(json['id']),
      advanceCode: serializer.fromJson<String>(json['advanceCode']),
      employeeId: serializer.fromJson<String>(json['employeeId']),
      employeeName: serializer.fromJson<String>(json['employeeName']),
      advanceDate: serializer.fromJson<DateTime>(json['advanceDate']),
      amountPaise: serializer.fromJson<int>(json['amountPaise']),
      recoveredAmountPaise:
          serializer.fromJson<int>(json['recoveredAmountPaise']),
      outstandingBalancePaise:
          serializer.fromJson<int>(json['outstandingBalancePaise']),
      reason: serializer.fromJson<String?>(json['reason']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'advanceCode': serializer.toJson<String>(advanceCode),
      'employeeId': serializer.toJson<String>(employeeId),
      'employeeName': serializer.toJson<String>(employeeName),
      'advanceDate': serializer.toJson<DateTime>(advanceDate),
      'amountPaise': serializer.toJson<int>(amountPaise),
      'recoveredAmountPaise': serializer.toJson<int>(recoveredAmountPaise),
      'outstandingBalancePaise':
          serializer.toJson<int>(outstandingBalancePaise),
      'reason': serializer.toJson<String?>(reason),
      'status': serializer.toJson<String>(status),
    };
  }

  LocalSalaryAdvance copyWith(
          {String? id,
          String? advanceCode,
          String? employeeId,
          String? employeeName,
          DateTime? advanceDate,
          int? amountPaise,
          int? recoveredAmountPaise,
          int? outstandingBalancePaise,
          Value<String?> reason = const Value.absent(),
          String? status}) =>
      LocalSalaryAdvance(
        id: id ?? this.id,
        advanceCode: advanceCode ?? this.advanceCode,
        employeeId: employeeId ?? this.employeeId,
        employeeName: employeeName ?? this.employeeName,
        advanceDate: advanceDate ?? this.advanceDate,
        amountPaise: amountPaise ?? this.amountPaise,
        recoveredAmountPaise: recoveredAmountPaise ?? this.recoveredAmountPaise,
        outstandingBalancePaise:
            outstandingBalancePaise ?? this.outstandingBalancePaise,
        reason: reason.present ? reason.value : this.reason,
        status: status ?? this.status,
      );
  LocalSalaryAdvance copyWithCompanion(LocalSalaryAdvancesCompanion data) {
    return LocalSalaryAdvance(
      id: data.id.present ? data.id.value : this.id,
      advanceCode:
          data.advanceCode.present ? data.advanceCode.value : this.advanceCode,
      employeeId:
          data.employeeId.present ? data.employeeId.value : this.employeeId,
      employeeName: data.employeeName.present
          ? data.employeeName.value
          : this.employeeName,
      advanceDate:
          data.advanceDate.present ? data.advanceDate.value : this.advanceDate,
      amountPaise:
          data.amountPaise.present ? data.amountPaise.value : this.amountPaise,
      recoveredAmountPaise: data.recoveredAmountPaise.present
          ? data.recoveredAmountPaise.value
          : this.recoveredAmountPaise,
      outstandingBalancePaise: data.outstandingBalancePaise.present
          ? data.outstandingBalancePaise.value
          : this.outstandingBalancePaise,
      reason: data.reason.present ? data.reason.value : this.reason,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalSalaryAdvance(')
          ..write('id: $id, ')
          ..write('advanceCode: $advanceCode, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('advanceDate: $advanceDate, ')
          ..write('amountPaise: $amountPaise, ')
          ..write('recoveredAmountPaise: $recoveredAmountPaise, ')
          ..write('outstandingBalancePaise: $outstandingBalancePaise, ')
          ..write('reason: $reason, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      advanceCode,
      employeeId,
      employeeName,
      advanceDate,
      amountPaise,
      recoveredAmountPaise,
      outstandingBalancePaise,
      reason,
      status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalSalaryAdvance &&
          other.id == this.id &&
          other.advanceCode == this.advanceCode &&
          other.employeeId == this.employeeId &&
          other.employeeName == this.employeeName &&
          other.advanceDate == this.advanceDate &&
          other.amountPaise == this.amountPaise &&
          other.recoveredAmountPaise == this.recoveredAmountPaise &&
          other.outstandingBalancePaise == this.outstandingBalancePaise &&
          other.reason == this.reason &&
          other.status == this.status);
}

class LocalSalaryAdvancesCompanion extends UpdateCompanion<LocalSalaryAdvance> {
  final Value<String> id;
  final Value<String> advanceCode;
  final Value<String> employeeId;
  final Value<String> employeeName;
  final Value<DateTime> advanceDate;
  final Value<int> amountPaise;
  final Value<int> recoveredAmountPaise;
  final Value<int> outstandingBalancePaise;
  final Value<String?> reason;
  final Value<String> status;
  final Value<int> rowid;
  const LocalSalaryAdvancesCompanion({
    this.id = const Value.absent(),
    this.advanceCode = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.employeeName = const Value.absent(),
    this.advanceDate = const Value.absent(),
    this.amountPaise = const Value.absent(),
    this.recoveredAmountPaise = const Value.absent(),
    this.outstandingBalancePaise = const Value.absent(),
    this.reason = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalSalaryAdvancesCompanion.insert({
    required String id,
    required String advanceCode,
    required String employeeId,
    required String employeeName,
    required DateTime advanceDate,
    required int amountPaise,
    this.recoveredAmountPaise = const Value.absent(),
    required int outstandingBalancePaise,
    this.reason = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        advanceCode = Value(advanceCode),
        employeeId = Value(employeeId),
        employeeName = Value(employeeName),
        advanceDate = Value(advanceDate),
        amountPaise = Value(amountPaise),
        outstandingBalancePaise = Value(outstandingBalancePaise);
  static Insertable<LocalSalaryAdvance> custom({
    Expression<String>? id,
    Expression<String>? advanceCode,
    Expression<String>? employeeId,
    Expression<String>? employeeName,
    Expression<DateTime>? advanceDate,
    Expression<int>? amountPaise,
    Expression<int>? recoveredAmountPaise,
    Expression<int>? outstandingBalancePaise,
    Expression<String>? reason,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (advanceCode != null) 'advance_code': advanceCode,
      if (employeeId != null) 'employee_id': employeeId,
      if (employeeName != null) 'employee_name': employeeName,
      if (advanceDate != null) 'advance_date': advanceDate,
      if (amountPaise != null) 'amount_paise': amountPaise,
      if (recoveredAmountPaise != null)
        'recovered_amount_paise': recoveredAmountPaise,
      if (outstandingBalancePaise != null)
        'outstanding_balance_paise': outstandingBalancePaise,
      if (reason != null) 'reason': reason,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalSalaryAdvancesCompanion copyWith(
      {Value<String>? id,
      Value<String>? advanceCode,
      Value<String>? employeeId,
      Value<String>? employeeName,
      Value<DateTime>? advanceDate,
      Value<int>? amountPaise,
      Value<int>? recoveredAmountPaise,
      Value<int>? outstandingBalancePaise,
      Value<String?>? reason,
      Value<String>? status,
      Value<int>? rowid}) {
    return LocalSalaryAdvancesCompanion(
      id: id ?? this.id,
      advanceCode: advanceCode ?? this.advanceCode,
      employeeId: employeeId ?? this.employeeId,
      employeeName: employeeName ?? this.employeeName,
      advanceDate: advanceDate ?? this.advanceDate,
      amountPaise: amountPaise ?? this.amountPaise,
      recoveredAmountPaise: recoveredAmountPaise ?? this.recoveredAmountPaise,
      outstandingBalancePaise:
          outstandingBalancePaise ?? this.outstandingBalancePaise,
      reason: reason ?? this.reason,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (advanceCode.present) {
      map['advance_code'] = Variable<String>(advanceCode.value);
    }
    if (employeeId.present) {
      map['employee_id'] = Variable<String>(employeeId.value);
    }
    if (employeeName.present) {
      map['employee_name'] = Variable<String>(employeeName.value);
    }
    if (advanceDate.present) {
      map['advance_date'] = Variable<DateTime>(advanceDate.value);
    }
    if (amountPaise.present) {
      map['amount_paise'] = Variable<int>(amountPaise.value);
    }
    if (recoveredAmountPaise.present) {
      map['recovered_amount_paise'] = Variable<int>(recoveredAmountPaise.value);
    }
    if (outstandingBalancePaise.present) {
      map['outstanding_balance_paise'] =
          Variable<int>(outstandingBalancePaise.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalSalaryAdvancesCompanion(')
          ..write('id: $id, ')
          ..write('advanceCode: $advanceCode, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('advanceDate: $advanceDate, ')
          ..write('amountPaise: $amountPaise, ')
          ..write('recoveredAmountPaise: $recoveredAmountPaise, ')
          ..write('outstandingBalancePaise: $outstandingBalancePaise, ')
          ..write('reason: $reason, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalExpensesTable extends LocalExpenses
    with TableInfo<$LocalExpensesTable, LocalExpense> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalExpensesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expenseReferenceMeta =
      const VerificationMeta('expenseReference');
  @override
  late final GeneratedColumn<String> expenseReference = GeneratedColumn<String>(
      'expense_reference', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _categoryNameMeta =
      const VerificationMeta('categoryName');
  @override
  late final GeneratedColumn<String> categoryName = GeneratedColumn<String>(
      'category_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expenseDateMeta =
      const VerificationMeta('expenseDate');
  @override
  late final GeneratedColumn<DateTime> expenseDate = GeneratedColumn<DateTime>(
      'expense_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _amountPaiseMeta =
      const VerificationMeta('amountPaise');
  @override
  late final GeneratedColumn<int> amountPaise = GeneratedColumn<int>(
      'amount_paise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethodMeta =
      const VerificationMeta('paymentMethod');
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
      'payment_method', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        expenseReference,
        categoryName,
        expenseDate,
        amountPaise,
        paymentMethod,
        description,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_expenses';
  @override
  VerificationContext validateIntegrity(Insertable<LocalExpense> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('expense_reference')) {
      context.handle(
          _expenseReferenceMeta,
          expenseReference.isAcceptableOrUnknown(
              data['expense_reference']!, _expenseReferenceMeta));
    } else if (isInserting) {
      context.missing(_expenseReferenceMeta);
    }
    if (data.containsKey('category_name')) {
      context.handle(
          _categoryNameMeta,
          categoryName.isAcceptableOrUnknown(
              data['category_name']!, _categoryNameMeta));
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    if (data.containsKey('expense_date')) {
      context.handle(
          _expenseDateMeta,
          expenseDate.isAcceptableOrUnknown(
              data['expense_date']!, _expenseDateMeta));
    } else if (isInserting) {
      context.missing(_expenseDateMeta);
    }
    if (data.containsKey('amount_paise')) {
      context.handle(
          _amountPaiseMeta,
          amountPaise.isAcceptableOrUnknown(
              data['amount_paise']!, _amountPaiseMeta));
    } else if (isInserting) {
      context.missing(_amountPaiseMeta);
    }
    if (data.containsKey('payment_method')) {
      context.handle(
          _paymentMethodMeta,
          paymentMethod.isAcceptableOrUnknown(
              data['payment_method']!, _paymentMethodMeta));
    } else if (isInserting) {
      context.missing(_paymentMethodMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalExpense map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalExpense(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      expenseReference: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}expense_reference'])!,
      categoryName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_name'])!,
      expenseDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expense_date'])!,
      amountPaise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount_paise'])!,
      paymentMethod: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_method'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $LocalExpensesTable createAlias(String alias) {
    return $LocalExpensesTable(attachedDatabase, alias);
  }
}

class LocalExpense extends DataClass implements Insertable<LocalExpense> {
  final String id;
  final String expenseReference;
  final String categoryName;
  final DateTime expenseDate;
  final int amountPaise;
  final String paymentMethod;
  final String description;
  final String? notes;
  const LocalExpense(
      {required this.id,
      required this.expenseReference,
      required this.categoryName,
      required this.expenseDate,
      required this.amountPaise,
      required this.paymentMethod,
      required this.description,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['expense_reference'] = Variable<String>(expenseReference);
    map['category_name'] = Variable<String>(categoryName);
    map['expense_date'] = Variable<DateTime>(expenseDate);
    map['amount_paise'] = Variable<int>(amountPaise);
    map['payment_method'] = Variable<String>(paymentMethod);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  LocalExpensesCompanion toCompanion(bool nullToAbsent) {
    return LocalExpensesCompanion(
      id: Value(id),
      expenseReference: Value(expenseReference),
      categoryName: Value(categoryName),
      expenseDate: Value(expenseDate),
      amountPaise: Value(amountPaise),
      paymentMethod: Value(paymentMethod),
      description: Value(description),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory LocalExpense.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalExpense(
      id: serializer.fromJson<String>(json['id']),
      expenseReference: serializer.fromJson<String>(json['expenseReference']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
      expenseDate: serializer.fromJson<DateTime>(json['expenseDate']),
      amountPaise: serializer.fromJson<int>(json['amountPaise']),
      paymentMethod: serializer.fromJson<String>(json['paymentMethod']),
      description: serializer.fromJson<String>(json['description']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'expenseReference': serializer.toJson<String>(expenseReference),
      'categoryName': serializer.toJson<String>(categoryName),
      'expenseDate': serializer.toJson<DateTime>(expenseDate),
      'amountPaise': serializer.toJson<int>(amountPaise),
      'paymentMethod': serializer.toJson<String>(paymentMethod),
      'description': serializer.toJson<String>(description),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  LocalExpense copyWith(
          {String? id,
          String? expenseReference,
          String? categoryName,
          DateTime? expenseDate,
          int? amountPaise,
          String? paymentMethod,
          String? description,
          Value<String?> notes = const Value.absent()}) =>
      LocalExpense(
        id: id ?? this.id,
        expenseReference: expenseReference ?? this.expenseReference,
        categoryName: categoryName ?? this.categoryName,
        expenseDate: expenseDate ?? this.expenseDate,
        amountPaise: amountPaise ?? this.amountPaise,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        description: description ?? this.description,
        notes: notes.present ? notes.value : this.notes,
      );
  LocalExpense copyWithCompanion(LocalExpensesCompanion data) {
    return LocalExpense(
      id: data.id.present ? data.id.value : this.id,
      expenseReference: data.expenseReference.present
          ? data.expenseReference.value
          : this.expenseReference,
      categoryName: data.categoryName.present
          ? data.categoryName.value
          : this.categoryName,
      expenseDate:
          data.expenseDate.present ? data.expenseDate.value : this.expenseDate,
      amountPaise:
          data.amountPaise.present ? data.amountPaise.value : this.amountPaise,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      description:
          data.description.present ? data.description.value : this.description,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalExpense(')
          ..write('id: $id, ')
          ..write('expenseReference: $expenseReference, ')
          ..write('categoryName: $categoryName, ')
          ..write('expenseDate: $expenseDate, ')
          ..write('amountPaise: $amountPaise, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('description: $description, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, expenseReference, categoryName,
      expenseDate, amountPaise, paymentMethod, description, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalExpense &&
          other.id == this.id &&
          other.expenseReference == this.expenseReference &&
          other.categoryName == this.categoryName &&
          other.expenseDate == this.expenseDate &&
          other.amountPaise == this.amountPaise &&
          other.paymentMethod == this.paymentMethod &&
          other.description == this.description &&
          other.notes == this.notes);
}

class LocalExpensesCompanion extends UpdateCompanion<LocalExpense> {
  final Value<String> id;
  final Value<String> expenseReference;
  final Value<String> categoryName;
  final Value<DateTime> expenseDate;
  final Value<int> amountPaise;
  final Value<String> paymentMethod;
  final Value<String> description;
  final Value<String?> notes;
  final Value<int> rowid;
  const LocalExpensesCompanion({
    this.id = const Value.absent(),
    this.expenseReference = const Value.absent(),
    this.categoryName = const Value.absent(),
    this.expenseDate = const Value.absent(),
    this.amountPaise = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.description = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalExpensesCompanion.insert({
    required String id,
    required String expenseReference,
    required String categoryName,
    required DateTime expenseDate,
    required int amountPaise,
    required String paymentMethod,
    required String description,
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        expenseReference = Value(expenseReference),
        categoryName = Value(categoryName),
        expenseDate = Value(expenseDate),
        amountPaise = Value(amountPaise),
        paymentMethod = Value(paymentMethod),
        description = Value(description);
  static Insertable<LocalExpense> custom({
    Expression<String>? id,
    Expression<String>? expenseReference,
    Expression<String>? categoryName,
    Expression<DateTime>? expenseDate,
    Expression<int>? amountPaise,
    Expression<String>? paymentMethod,
    Expression<String>? description,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (expenseReference != null) 'expense_reference': expenseReference,
      if (categoryName != null) 'category_name': categoryName,
      if (expenseDate != null) 'expense_date': expenseDate,
      if (amountPaise != null) 'amount_paise': amountPaise,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (description != null) 'description': description,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalExpensesCompanion copyWith(
      {Value<String>? id,
      Value<String>? expenseReference,
      Value<String>? categoryName,
      Value<DateTime>? expenseDate,
      Value<int>? amountPaise,
      Value<String>? paymentMethod,
      Value<String>? description,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return LocalExpensesCompanion(
      id: id ?? this.id,
      expenseReference: expenseReference ?? this.expenseReference,
      categoryName: categoryName ?? this.categoryName,
      expenseDate: expenseDate ?? this.expenseDate,
      amountPaise: amountPaise ?? this.amountPaise,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      description: description ?? this.description,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (expenseReference.present) {
      map['expense_reference'] = Variable<String>(expenseReference.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    if (expenseDate.present) {
      map['expense_date'] = Variable<DateTime>(expenseDate.value);
    }
    if (amountPaise.present) {
      map['amount_paise'] = Variable<int>(amountPaise.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalExpensesCompanion(')
          ..write('id: $id, ')
          ..write('expenseReference: $expenseReference, ')
          ..write('categoryName: $categoryName, ')
          ..write('expenseDate: $expenseDate, ')
          ..write('amountPaise: $amountPaise, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('description: $description, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalHousekeepingTasksTable extends LocalHousekeepingTasks
    with TableInfo<$LocalHousekeepingTasksTable, LocalHousekeepingTask> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalHousekeepingTasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roomNumberMeta =
      const VerificationMeta('roomNumber');
  @override
  late final GeneratedColumn<String> roomNumber = GeneratedColumn<String>(
      'room_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _taskTypeMeta =
      const VerificationMeta('taskType');
  @override
  late final GeneratedColumn<String> taskType = GeneratedColumn<String>(
      'task_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('turnover_clean'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('cleaning_required'));
  static const VerificationMeta _priorityMeta =
      const VerificationMeta('priority');
  @override
  late final GeneratedColumn<String> priority = GeneratedColumn<String>(
      'priority', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('normal'));
  static const VerificationMeta _startedAtMeta =
      const VerificationMeta('startedAt');
  @override
  late final GeneratedColumn<DateTime> startedAt = GeneratedColumn<DateTime>(
      'started_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _completedAtMeta =
      const VerificationMeta('completedAt');
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
      'completed_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        roomId,
        roomNumber,
        taskType,
        status,
        priority,
        startedAt,
        completedAt,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_housekeeping_tasks';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalHousekeepingTask> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('room_number')) {
      context.handle(
          _roomNumberMeta,
          roomNumber.isAcceptableOrUnknown(
              data['room_number']!, _roomNumberMeta));
    } else if (isInserting) {
      context.missing(_roomNumberMeta);
    }
    if (data.containsKey('task_type')) {
      context.handle(_taskTypeMeta,
          taskType.isAcceptableOrUnknown(data['task_type']!, _taskTypeMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('priority')) {
      context.handle(_priorityMeta,
          priority.isAcceptableOrUnknown(data['priority']!, _priorityMeta));
    }
    if (data.containsKey('started_at')) {
      context.handle(_startedAtMeta,
          startedAt.isAcceptableOrUnknown(data['started_at']!, _startedAtMeta));
    }
    if (data.containsKey('completed_at')) {
      context.handle(
          _completedAtMeta,
          completedAt.isAcceptableOrUnknown(
              data['completed_at']!, _completedAtMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalHousekeepingTask map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalHousekeepingTask(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      roomNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_number'])!,
      taskType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task_type'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      priority: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}priority'])!,
      startedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}started_at']),
      completedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}completed_at']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $LocalHousekeepingTasksTable createAlias(String alias) {
    return $LocalHousekeepingTasksTable(attachedDatabase, alias);
  }
}

class LocalHousekeepingTask extends DataClass
    implements Insertable<LocalHousekeepingTask> {
  final String id;
  final String roomId;
  final String roomNumber;
  final String taskType;
  final String status;
  final String priority;
  final DateTime? startedAt;
  final DateTime? completedAt;
  final String? notes;
  const LocalHousekeepingTask(
      {required this.id,
      required this.roomId,
      required this.roomNumber,
      required this.taskType,
      required this.status,
      required this.priority,
      this.startedAt,
      this.completedAt,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['room_id'] = Variable<String>(roomId);
    map['room_number'] = Variable<String>(roomNumber);
    map['task_type'] = Variable<String>(taskType);
    map['status'] = Variable<String>(status);
    map['priority'] = Variable<String>(priority);
    if (!nullToAbsent || startedAt != null) {
      map['started_at'] = Variable<DateTime>(startedAt);
    }
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  LocalHousekeepingTasksCompanion toCompanion(bool nullToAbsent) {
    return LocalHousekeepingTasksCompanion(
      id: Value(id),
      roomId: Value(roomId),
      roomNumber: Value(roomNumber),
      taskType: Value(taskType),
      status: Value(status),
      priority: Value(priority),
      startedAt: startedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(startedAt),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory LocalHousekeepingTask.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalHousekeepingTask(
      id: serializer.fromJson<String>(json['id']),
      roomId: serializer.fromJson<String>(json['roomId']),
      roomNumber: serializer.fromJson<String>(json['roomNumber']),
      taskType: serializer.fromJson<String>(json['taskType']),
      status: serializer.fromJson<String>(json['status']),
      priority: serializer.fromJson<String>(json['priority']),
      startedAt: serializer.fromJson<DateTime?>(json['startedAt']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'roomId': serializer.toJson<String>(roomId),
      'roomNumber': serializer.toJson<String>(roomNumber),
      'taskType': serializer.toJson<String>(taskType),
      'status': serializer.toJson<String>(status),
      'priority': serializer.toJson<String>(priority),
      'startedAt': serializer.toJson<DateTime?>(startedAt),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  LocalHousekeepingTask copyWith(
          {String? id,
          String? roomId,
          String? roomNumber,
          String? taskType,
          String? status,
          String? priority,
          Value<DateTime?> startedAt = const Value.absent(),
          Value<DateTime?> completedAt = const Value.absent(),
          Value<String?> notes = const Value.absent()}) =>
      LocalHousekeepingTask(
        id: id ?? this.id,
        roomId: roomId ?? this.roomId,
        roomNumber: roomNumber ?? this.roomNumber,
        taskType: taskType ?? this.taskType,
        status: status ?? this.status,
        priority: priority ?? this.priority,
        startedAt: startedAt.present ? startedAt.value : this.startedAt,
        completedAt: completedAt.present ? completedAt.value : this.completedAt,
        notes: notes.present ? notes.value : this.notes,
      );
  LocalHousekeepingTask copyWithCompanion(
      LocalHousekeepingTasksCompanion data) {
    return LocalHousekeepingTask(
      id: data.id.present ? data.id.value : this.id,
      roomId: data.roomId.present ? data.roomId.value : this.roomId,
      roomNumber:
          data.roomNumber.present ? data.roomNumber.value : this.roomNumber,
      taskType: data.taskType.present ? data.taskType.value : this.taskType,
      status: data.status.present ? data.status.value : this.status,
      priority: data.priority.present ? data.priority.value : this.priority,
      startedAt: data.startedAt.present ? data.startedAt.value : this.startedAt,
      completedAt:
          data.completedAt.present ? data.completedAt.value : this.completedAt,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalHousekeepingTask(')
          ..write('id: $id, ')
          ..write('roomId: $roomId, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('taskType: $taskType, ')
          ..write('status: $status, ')
          ..write('priority: $priority, ')
          ..write('startedAt: $startedAt, ')
          ..write('completedAt: $completedAt, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, roomId, roomNumber, taskType, status,
      priority, startedAt, completedAt, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalHousekeepingTask &&
          other.id == this.id &&
          other.roomId == this.roomId &&
          other.roomNumber == this.roomNumber &&
          other.taskType == this.taskType &&
          other.status == this.status &&
          other.priority == this.priority &&
          other.startedAt == this.startedAt &&
          other.completedAt == this.completedAt &&
          other.notes == this.notes);
}

class LocalHousekeepingTasksCompanion
    extends UpdateCompanion<LocalHousekeepingTask> {
  final Value<String> id;
  final Value<String> roomId;
  final Value<String> roomNumber;
  final Value<String> taskType;
  final Value<String> status;
  final Value<String> priority;
  final Value<DateTime?> startedAt;
  final Value<DateTime?> completedAt;
  final Value<String?> notes;
  final Value<int> rowid;
  const LocalHousekeepingTasksCompanion({
    this.id = const Value.absent(),
    this.roomId = const Value.absent(),
    this.roomNumber = const Value.absent(),
    this.taskType = const Value.absent(),
    this.status = const Value.absent(),
    this.priority = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalHousekeepingTasksCompanion.insert({
    required String id,
    required String roomId,
    required String roomNumber,
    this.taskType = const Value.absent(),
    this.status = const Value.absent(),
    this.priority = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        roomId = Value(roomId),
        roomNumber = Value(roomNumber);
  static Insertable<LocalHousekeepingTask> custom({
    Expression<String>? id,
    Expression<String>? roomId,
    Expression<String>? roomNumber,
    Expression<String>? taskType,
    Expression<String>? status,
    Expression<String>? priority,
    Expression<DateTime>? startedAt,
    Expression<DateTime>? completedAt,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (roomId != null) 'room_id': roomId,
      if (roomNumber != null) 'room_number': roomNumber,
      if (taskType != null) 'task_type': taskType,
      if (status != null) 'status': status,
      if (priority != null) 'priority': priority,
      if (startedAt != null) 'started_at': startedAt,
      if (completedAt != null) 'completed_at': completedAt,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalHousekeepingTasksCompanion copyWith(
      {Value<String>? id,
      Value<String>? roomId,
      Value<String>? roomNumber,
      Value<String>? taskType,
      Value<String>? status,
      Value<String>? priority,
      Value<DateTime?>? startedAt,
      Value<DateTime?>? completedAt,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return LocalHousekeepingTasksCompanion(
      id: id ?? this.id,
      roomId: roomId ?? this.roomId,
      roomNumber: roomNumber ?? this.roomNumber,
      taskType: taskType ?? this.taskType,
      status: status ?? this.status,
      priority: priority ?? this.priority,
      startedAt: startedAt ?? this.startedAt,
      completedAt: completedAt ?? this.completedAt,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (roomNumber.present) {
      map['room_number'] = Variable<String>(roomNumber.value);
    }
    if (taskType.present) {
      map['task_type'] = Variable<String>(taskType.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (priority.present) {
      map['priority'] = Variable<String>(priority.value);
    }
    if (startedAt.present) {
      map['started_at'] = Variable<DateTime>(startedAt.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalHousekeepingTasksCompanion(')
          ..write('id: $id, ')
          ..write('roomId: $roomId, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('taskType: $taskType, ')
          ..write('status: $status, ')
          ..write('priority: $priority, ')
          ..write('startedAt: $startedAt, ')
          ..write('completedAt: $completedAt, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalMaintenanceIssuesTable extends LocalMaintenanceIssues
    with TableInfo<$LocalMaintenanceIssuesTable, LocalMaintenanceIssue> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalMaintenanceIssuesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _roomNumberMeta =
      const VerificationMeta('roomNumber');
  @override
  late final GeneratedColumn<String> roomNumber = GeneratedColumn<String>(
      'room_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priorityMeta =
      const VerificationMeta('priority');
  @override
  late final GeneratedColumn<String> priority = GeneratedColumn<String>(
      'priority', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('medium'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('open'));
  static const VerificationMeta _resolutionNotesMeta =
      const VerificationMeta('resolutionNotes');
  @override
  late final GeneratedColumn<String> resolutionNotes = GeneratedColumn<String>(
      'resolution_notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _resolvedAtMeta =
      const VerificationMeta('resolvedAt');
  @override
  late final GeneratedColumn<DateTime> resolvedAt = GeneratedColumn<DateTime>(
      'resolved_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        roomId,
        roomNumber,
        title,
        description,
        priority,
        status,
        resolutionNotes,
        resolvedAt,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_maintenance_issues';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalMaintenanceIssue> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    }
    if (data.containsKey('room_number')) {
      context.handle(
          _roomNumberMeta,
          roomNumber.isAcceptableOrUnknown(
              data['room_number']!, _roomNumberMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('priority')) {
      context.handle(_priorityMeta,
          priority.isAcceptableOrUnknown(data['priority']!, _priorityMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('resolution_notes')) {
      context.handle(
          _resolutionNotesMeta,
          resolutionNotes.isAcceptableOrUnknown(
              data['resolution_notes']!, _resolutionNotesMeta));
    }
    if (data.containsKey('resolved_at')) {
      context.handle(
          _resolvedAtMeta,
          resolvedAt.isAcceptableOrUnknown(
              data['resolved_at']!, _resolvedAtMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalMaintenanceIssue map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalMaintenanceIssue(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id']),
      roomNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_number']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      priority: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}priority'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      resolutionNotes: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}resolution_notes']),
      resolvedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}resolved_at']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $LocalMaintenanceIssuesTable createAlias(String alias) {
    return $LocalMaintenanceIssuesTable(attachedDatabase, alias);
  }
}

class LocalMaintenanceIssue extends DataClass
    implements Insertable<LocalMaintenanceIssue> {
  final String id;
  final String? roomId;
  final String? roomNumber;
  final String title;
  final String description;
  final String priority;
  final String status;
  final String? resolutionNotes;
  final DateTime? resolvedAt;
  final DateTime createdAt;
  const LocalMaintenanceIssue(
      {required this.id,
      this.roomId,
      this.roomNumber,
      required this.title,
      required this.description,
      required this.priority,
      required this.status,
      this.resolutionNotes,
      this.resolvedAt,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || roomId != null) {
      map['room_id'] = Variable<String>(roomId);
    }
    if (!nullToAbsent || roomNumber != null) {
      map['room_number'] = Variable<String>(roomNumber);
    }
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['priority'] = Variable<String>(priority);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || resolutionNotes != null) {
      map['resolution_notes'] = Variable<String>(resolutionNotes);
    }
    if (!nullToAbsent || resolvedAt != null) {
      map['resolved_at'] = Variable<DateTime>(resolvedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  LocalMaintenanceIssuesCompanion toCompanion(bool nullToAbsent) {
    return LocalMaintenanceIssuesCompanion(
      id: Value(id),
      roomId:
          roomId == null && nullToAbsent ? const Value.absent() : Value(roomId),
      roomNumber: roomNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(roomNumber),
      title: Value(title),
      description: Value(description),
      priority: Value(priority),
      status: Value(status),
      resolutionNotes: resolutionNotes == null && nullToAbsent
          ? const Value.absent()
          : Value(resolutionNotes),
      resolvedAt: resolvedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(resolvedAt),
      createdAt: Value(createdAt),
    );
  }

  factory LocalMaintenanceIssue.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalMaintenanceIssue(
      id: serializer.fromJson<String>(json['id']),
      roomId: serializer.fromJson<String?>(json['roomId']),
      roomNumber: serializer.fromJson<String?>(json['roomNumber']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      priority: serializer.fromJson<String>(json['priority']),
      status: serializer.fromJson<String>(json['status']),
      resolutionNotes: serializer.fromJson<String?>(json['resolutionNotes']),
      resolvedAt: serializer.fromJson<DateTime?>(json['resolvedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'roomId': serializer.toJson<String?>(roomId),
      'roomNumber': serializer.toJson<String?>(roomNumber),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'priority': serializer.toJson<String>(priority),
      'status': serializer.toJson<String>(status),
      'resolutionNotes': serializer.toJson<String?>(resolutionNotes),
      'resolvedAt': serializer.toJson<DateTime?>(resolvedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  LocalMaintenanceIssue copyWith(
          {String? id,
          Value<String?> roomId = const Value.absent(),
          Value<String?> roomNumber = const Value.absent(),
          String? title,
          String? description,
          String? priority,
          String? status,
          Value<String?> resolutionNotes = const Value.absent(),
          Value<DateTime?> resolvedAt = const Value.absent(),
          DateTime? createdAt}) =>
      LocalMaintenanceIssue(
        id: id ?? this.id,
        roomId: roomId.present ? roomId.value : this.roomId,
        roomNumber: roomNumber.present ? roomNumber.value : this.roomNumber,
        title: title ?? this.title,
        description: description ?? this.description,
        priority: priority ?? this.priority,
        status: status ?? this.status,
        resolutionNotes: resolutionNotes.present
            ? resolutionNotes.value
            : this.resolutionNotes,
        resolvedAt: resolvedAt.present ? resolvedAt.value : this.resolvedAt,
        createdAt: createdAt ?? this.createdAt,
      );
  LocalMaintenanceIssue copyWithCompanion(
      LocalMaintenanceIssuesCompanion data) {
    return LocalMaintenanceIssue(
      id: data.id.present ? data.id.value : this.id,
      roomId: data.roomId.present ? data.roomId.value : this.roomId,
      roomNumber:
          data.roomNumber.present ? data.roomNumber.value : this.roomNumber,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      priority: data.priority.present ? data.priority.value : this.priority,
      status: data.status.present ? data.status.value : this.status,
      resolutionNotes: data.resolutionNotes.present
          ? data.resolutionNotes.value
          : this.resolutionNotes,
      resolvedAt:
          data.resolvedAt.present ? data.resolvedAt.value : this.resolvedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalMaintenanceIssue(')
          ..write('id: $id, ')
          ..write('roomId: $roomId, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('priority: $priority, ')
          ..write('status: $status, ')
          ..write('resolutionNotes: $resolutionNotes, ')
          ..write('resolvedAt: $resolvedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, roomId, roomNumber, title, description,
      priority, status, resolutionNotes, resolvedAt, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalMaintenanceIssue &&
          other.id == this.id &&
          other.roomId == this.roomId &&
          other.roomNumber == this.roomNumber &&
          other.title == this.title &&
          other.description == this.description &&
          other.priority == this.priority &&
          other.status == this.status &&
          other.resolutionNotes == this.resolutionNotes &&
          other.resolvedAt == this.resolvedAt &&
          other.createdAt == this.createdAt);
}

class LocalMaintenanceIssuesCompanion
    extends UpdateCompanion<LocalMaintenanceIssue> {
  final Value<String> id;
  final Value<String?> roomId;
  final Value<String?> roomNumber;
  final Value<String> title;
  final Value<String> description;
  final Value<String> priority;
  final Value<String> status;
  final Value<String?> resolutionNotes;
  final Value<DateTime?> resolvedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const LocalMaintenanceIssuesCompanion({
    this.id = const Value.absent(),
    this.roomId = const Value.absent(),
    this.roomNumber = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.priority = const Value.absent(),
    this.status = const Value.absent(),
    this.resolutionNotes = const Value.absent(),
    this.resolvedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalMaintenanceIssuesCompanion.insert({
    required String id,
    this.roomId = const Value.absent(),
    this.roomNumber = const Value.absent(),
    required String title,
    required String description,
    this.priority = const Value.absent(),
    this.status = const Value.absent(),
    this.resolutionNotes = const Value.absent(),
    this.resolvedAt = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        description = Value(description),
        createdAt = Value(createdAt);
  static Insertable<LocalMaintenanceIssue> custom({
    Expression<String>? id,
    Expression<String>? roomId,
    Expression<String>? roomNumber,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? priority,
    Expression<String>? status,
    Expression<String>? resolutionNotes,
    Expression<DateTime>? resolvedAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (roomId != null) 'room_id': roomId,
      if (roomNumber != null) 'room_number': roomNumber,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (priority != null) 'priority': priority,
      if (status != null) 'status': status,
      if (resolutionNotes != null) 'resolution_notes': resolutionNotes,
      if (resolvedAt != null) 'resolved_at': resolvedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalMaintenanceIssuesCompanion copyWith(
      {Value<String>? id,
      Value<String?>? roomId,
      Value<String?>? roomNumber,
      Value<String>? title,
      Value<String>? description,
      Value<String>? priority,
      Value<String>? status,
      Value<String?>? resolutionNotes,
      Value<DateTime?>? resolvedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return LocalMaintenanceIssuesCompanion(
      id: id ?? this.id,
      roomId: roomId ?? this.roomId,
      roomNumber: roomNumber ?? this.roomNumber,
      title: title ?? this.title,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      status: status ?? this.status,
      resolutionNotes: resolutionNotes ?? this.resolutionNotes,
      resolvedAt: resolvedAt ?? this.resolvedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (roomNumber.present) {
      map['room_number'] = Variable<String>(roomNumber.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (priority.present) {
      map['priority'] = Variable<String>(priority.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (resolutionNotes.present) {
      map['resolution_notes'] = Variable<String>(resolutionNotes.value);
    }
    if (resolvedAt.present) {
      map['resolved_at'] = Variable<DateTime>(resolvedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalMaintenanceIssuesCompanion(')
          ..write('id: $id, ')
          ..write('roomId: $roomId, ')
          ..write('roomNumber: $roomNumber, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('priority: $priority, ')
          ..write('status: $status, ')
          ..write('resolutionNotes: $resolutionNotes, ')
          ..write('resolvedAt: $resolvedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalSyncMutationsTable extends LocalSyncMutations
    with TableInfo<$LocalSyncMutationsTable, LocalSyncMutation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalSyncMutationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetTableMeta =
      const VerificationMeta('targetTable');
  @override
  late final GeneratedColumn<String> targetTable = GeneratedColumn<String>(
      'target_table', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _operationMeta =
      const VerificationMeta('operation');
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
      'operation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _recordIdMeta =
      const VerificationMeta('recordId');
  @override
  late final GeneratedColumn<String> recordId = GeneratedColumn<String>(
      'record_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _payloadJsonMeta =
      const VerificationMeta('payloadJson');
  @override
  late final GeneratedColumn<String> payloadJson = GeneratedColumn<String>(
      'payload_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _retryCountMeta =
      const VerificationMeta('retryCount');
  @override
  late final GeneratedColumn<int> retryCount = GeneratedColumn<int>(
      'retry_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastErrorMeta =
      const VerificationMeta('lastError');
  @override
  late final GeneratedColumn<String> lastError = GeneratedColumn<String>(
      'last_error', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('pending'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        targetTable,
        operation,
        recordId,
        payloadJson,
        createdAt,
        retryCount,
        lastError,
        status
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_sync_mutations';
  @override
  VerificationContext validateIntegrity(Insertable<LocalSyncMutation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('target_table')) {
      context.handle(
          _targetTableMeta,
          targetTable.isAcceptableOrUnknown(
              data['target_table']!, _targetTableMeta));
    } else if (isInserting) {
      context.missing(_targetTableMeta);
    }
    if (data.containsKey('operation')) {
      context.handle(_operationMeta,
          operation.isAcceptableOrUnknown(data['operation']!, _operationMeta));
    } else if (isInserting) {
      context.missing(_operationMeta);
    }
    if (data.containsKey('record_id')) {
      context.handle(_recordIdMeta,
          recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta));
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('payload_json')) {
      context.handle(
          _payloadJsonMeta,
          payloadJson.isAcceptableOrUnknown(
              data['payload_json']!, _payloadJsonMeta));
    } else if (isInserting) {
      context.missing(_payloadJsonMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('retry_count')) {
      context.handle(
          _retryCountMeta,
          retryCount.isAcceptableOrUnknown(
              data['retry_count']!, _retryCountMeta));
    }
    if (data.containsKey('last_error')) {
      context.handle(_lastErrorMeta,
          lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalSyncMutation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalSyncMutation(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      targetTable: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_table'])!,
      operation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}operation'])!,
      recordId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}record_id'])!,
      payloadJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payload_json'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      retryCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}retry_count'])!,
      lastError: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_error']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $LocalSyncMutationsTable createAlias(String alias) {
    return $LocalSyncMutationsTable(attachedDatabase, alias);
  }
}

class LocalSyncMutation extends DataClass
    implements Insertable<LocalSyncMutation> {
  final String id;
  final String targetTable;
  final String operation;
  final String recordId;
  final String payloadJson;
  final DateTime createdAt;
  final int retryCount;
  final String? lastError;
  final String status;
  const LocalSyncMutation(
      {required this.id,
      required this.targetTable,
      required this.operation,
      required this.recordId,
      required this.payloadJson,
      required this.createdAt,
      required this.retryCount,
      this.lastError,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['target_table'] = Variable<String>(targetTable);
    map['operation'] = Variable<String>(operation);
    map['record_id'] = Variable<String>(recordId);
    map['payload_json'] = Variable<String>(payloadJson);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['retry_count'] = Variable<int>(retryCount);
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    map['status'] = Variable<String>(status);
    return map;
  }

  LocalSyncMutationsCompanion toCompanion(bool nullToAbsent) {
    return LocalSyncMutationsCompanion(
      id: Value(id),
      targetTable: Value(targetTable),
      operation: Value(operation),
      recordId: Value(recordId),
      payloadJson: Value(payloadJson),
      createdAt: Value(createdAt),
      retryCount: Value(retryCount),
      lastError: lastError == null && nullToAbsent
          ? const Value.absent()
          : Value(lastError),
      status: Value(status),
    );
  }

  factory LocalSyncMutation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalSyncMutation(
      id: serializer.fromJson<String>(json['id']),
      targetTable: serializer.fromJson<String>(json['targetTable']),
      operation: serializer.fromJson<String>(json['operation']),
      recordId: serializer.fromJson<String>(json['recordId']),
      payloadJson: serializer.fromJson<String>(json['payloadJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      retryCount: serializer.fromJson<int>(json['retryCount']),
      lastError: serializer.fromJson<String?>(json['lastError']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'targetTable': serializer.toJson<String>(targetTable),
      'operation': serializer.toJson<String>(operation),
      'recordId': serializer.toJson<String>(recordId),
      'payloadJson': serializer.toJson<String>(payloadJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'retryCount': serializer.toJson<int>(retryCount),
      'lastError': serializer.toJson<String?>(lastError),
      'status': serializer.toJson<String>(status),
    };
  }

  LocalSyncMutation copyWith(
          {String? id,
          String? targetTable,
          String? operation,
          String? recordId,
          String? payloadJson,
          DateTime? createdAt,
          int? retryCount,
          Value<String?> lastError = const Value.absent(),
          String? status}) =>
      LocalSyncMutation(
        id: id ?? this.id,
        targetTable: targetTable ?? this.targetTable,
        operation: operation ?? this.operation,
        recordId: recordId ?? this.recordId,
        payloadJson: payloadJson ?? this.payloadJson,
        createdAt: createdAt ?? this.createdAt,
        retryCount: retryCount ?? this.retryCount,
        lastError: lastError.present ? lastError.value : this.lastError,
        status: status ?? this.status,
      );
  LocalSyncMutation copyWithCompanion(LocalSyncMutationsCompanion data) {
    return LocalSyncMutation(
      id: data.id.present ? data.id.value : this.id,
      targetTable:
          data.targetTable.present ? data.targetTable.value : this.targetTable,
      operation: data.operation.present ? data.operation.value : this.operation,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      payloadJson:
          data.payloadJson.present ? data.payloadJson.value : this.payloadJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      retryCount:
          data.retryCount.present ? data.retryCount.value : this.retryCount,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalSyncMutation(')
          ..write('id: $id, ')
          ..write('targetTable: $targetTable, ')
          ..write('operation: $operation, ')
          ..write('recordId: $recordId, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('retryCount: $retryCount, ')
          ..write('lastError: $lastError, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, targetTable, operation, recordId,
      payloadJson, createdAt, retryCount, lastError, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalSyncMutation &&
          other.id == this.id &&
          other.targetTable == this.targetTable &&
          other.operation == this.operation &&
          other.recordId == this.recordId &&
          other.payloadJson == this.payloadJson &&
          other.createdAt == this.createdAt &&
          other.retryCount == this.retryCount &&
          other.lastError == this.lastError &&
          other.status == this.status);
}

class LocalSyncMutationsCompanion extends UpdateCompanion<LocalSyncMutation> {
  final Value<String> id;
  final Value<String> targetTable;
  final Value<String> operation;
  final Value<String> recordId;
  final Value<String> payloadJson;
  final Value<DateTime> createdAt;
  final Value<int> retryCount;
  final Value<String?> lastError;
  final Value<String> status;
  final Value<int> rowid;
  const LocalSyncMutationsCompanion({
    this.id = const Value.absent(),
    this.targetTable = const Value.absent(),
    this.operation = const Value.absent(),
    this.recordId = const Value.absent(),
    this.payloadJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.lastError = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalSyncMutationsCompanion.insert({
    required String id,
    required String targetTable,
    required String operation,
    required String recordId,
    required String payloadJson,
    required DateTime createdAt,
    this.retryCount = const Value.absent(),
    this.lastError = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        targetTable = Value(targetTable),
        operation = Value(operation),
        recordId = Value(recordId),
        payloadJson = Value(payloadJson),
        createdAt = Value(createdAt);
  static Insertable<LocalSyncMutation> custom({
    Expression<String>? id,
    Expression<String>? targetTable,
    Expression<String>? operation,
    Expression<String>? recordId,
    Expression<String>? payloadJson,
    Expression<DateTime>? createdAt,
    Expression<int>? retryCount,
    Expression<String>? lastError,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (targetTable != null) 'target_table': targetTable,
      if (operation != null) 'operation': operation,
      if (recordId != null) 'record_id': recordId,
      if (payloadJson != null) 'payload_json': payloadJson,
      if (createdAt != null) 'created_at': createdAt,
      if (retryCount != null) 'retry_count': retryCount,
      if (lastError != null) 'last_error': lastError,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalSyncMutationsCompanion copyWith(
      {Value<String>? id,
      Value<String>? targetTable,
      Value<String>? operation,
      Value<String>? recordId,
      Value<String>? payloadJson,
      Value<DateTime>? createdAt,
      Value<int>? retryCount,
      Value<String?>? lastError,
      Value<String>? status,
      Value<int>? rowid}) {
    return LocalSyncMutationsCompanion(
      id: id ?? this.id,
      targetTable: targetTable ?? this.targetTable,
      operation: operation ?? this.operation,
      recordId: recordId ?? this.recordId,
      payloadJson: payloadJson ?? this.payloadJson,
      createdAt: createdAt ?? this.createdAt,
      retryCount: retryCount ?? this.retryCount,
      lastError: lastError ?? this.lastError,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (targetTable.present) {
      map['target_table'] = Variable<String>(targetTable.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<String>(recordId.value);
    }
    if (payloadJson.present) {
      map['payload_json'] = Variable<String>(payloadJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (retryCount.present) {
      map['retry_count'] = Variable<int>(retryCount.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalSyncMutationsCompanion(')
          ..write('id: $id, ')
          ..write('targetTable: $targetTable, ')
          ..write('operation: $operation, ')
          ..write('recordId: $recordId, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('retryCount: $retryCount, ')
          ..write('lastError: $lastError, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $LocalHotelSettingsTable localHotelSettings =
      $LocalHotelSettingsTable(this);
  late final $LocalRoomCategoriesTable localRoomCategories =
      $LocalRoomCategoriesTable(this);
  late final $LocalRoomsTable localRooms = $LocalRoomsTable(this);
  late final $LocalGuestsTable localGuests = $LocalGuestsTable(this);
  late final $LocalReservationsTable localReservations =
      $LocalReservationsTable(this);
  late final $LocalStaysTable localStays = $LocalStaysTable(this);
  late final $LocalInvoicesTable localInvoices = $LocalInvoicesTable(this);
  late final $LocalPaymentsTable localPayments = $LocalPaymentsTable(this);
  late final $LocalEmployeesTable localEmployees = $LocalEmployeesTable(this);
  late final $LocalSalaryRecordsTable localSalaryRecords =
      $LocalSalaryRecordsTable(this);
  late final $LocalSalaryAdvancesTable localSalaryAdvances =
      $LocalSalaryAdvancesTable(this);
  late final $LocalExpensesTable localExpenses = $LocalExpensesTable(this);
  late final $LocalHousekeepingTasksTable localHousekeepingTasks =
      $LocalHousekeepingTasksTable(this);
  late final $LocalMaintenanceIssuesTable localMaintenanceIssues =
      $LocalMaintenanceIssuesTable(this);
  late final $LocalSyncMutationsTable localSyncMutations =
      $LocalSyncMutationsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        localHotelSettings,
        localRoomCategories,
        localRooms,
        localGuests,
        localReservations,
        localStays,
        localInvoices,
        localPayments,
        localEmployees,
        localSalaryRecords,
        localSalaryAdvances,
        localExpenses,
        localHousekeepingTasks,
        localMaintenanceIssues,
        localSyncMutations
      ];
}

typedef $$LocalHotelSettingsTableCreateCompanionBuilder
    = LocalHotelSettingsCompanion Function({
  required String id,
  Value<String> hotelName,
  Value<String> tagline,
  required String addressLine1,
  Value<String?> addressLine2,
  required String city,
  required String state,
  Value<String> country,
  Value<String?> pincode,
  required String phonePrimary,
  Value<String?> phoneSecondary,
  Value<String?> email,
  Value<String?> gstin,
  Value<double> cgstRatePercent,
  Value<double> sgstRatePercent,
  Value<double> igstRatePercent,
  Value<String> invoicePrefix,
  Value<int> nextInvoiceNumber,
  Value<String?> invoiceFooterText,
  Value<int> rowid,
});
typedef $$LocalHotelSettingsTableUpdateCompanionBuilder
    = LocalHotelSettingsCompanion Function({
  Value<String> id,
  Value<String> hotelName,
  Value<String> tagline,
  Value<String> addressLine1,
  Value<String?> addressLine2,
  Value<String> city,
  Value<String> state,
  Value<String> country,
  Value<String?> pincode,
  Value<String> phonePrimary,
  Value<String?> phoneSecondary,
  Value<String?> email,
  Value<String?> gstin,
  Value<double> cgstRatePercent,
  Value<double> sgstRatePercent,
  Value<double> igstRatePercent,
  Value<String> invoicePrefix,
  Value<int> nextInvoiceNumber,
  Value<String?> invoiceFooterText,
  Value<int> rowid,
});

class $$LocalHotelSettingsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalHotelSettingsTable> {
  $$LocalHotelSettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get hotelName => $composableBuilder(
      column: $table.hotelName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tagline => $composableBuilder(
      column: $table.tagline, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get addressLine1 => $composableBuilder(
      column: $table.addressLine1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get addressLine2 => $composableBuilder(
      column: $table.addressLine2, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phonePrimary => $composableBuilder(
      column: $table.phonePrimary, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phoneSecondary => $composableBuilder(
      column: $table.phoneSecondary,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gstin => $composableBuilder(
      column: $table.gstin, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cgstRatePercent => $composableBuilder(
      column: $table.cgstRatePercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get sgstRatePercent => $composableBuilder(
      column: $table.sgstRatePercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get igstRatePercent => $composableBuilder(
      column: $table.igstRatePercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get invoicePrefix => $composableBuilder(
      column: $table.invoicePrefix, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get nextInvoiceNumber => $composableBuilder(
      column: $table.nextInvoiceNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get invoiceFooterText => $composableBuilder(
      column: $table.invoiceFooterText,
      builder: (column) => ColumnFilters(column));
}

class $$LocalHotelSettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalHotelSettingsTable> {
  $$LocalHotelSettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get hotelName => $composableBuilder(
      column: $table.hotelName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tagline => $composableBuilder(
      column: $table.tagline, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get addressLine1 => $composableBuilder(
      column: $table.addressLine1,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get addressLine2 => $composableBuilder(
      column: $table.addressLine2,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phonePrimary => $composableBuilder(
      column: $table.phonePrimary,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phoneSecondary => $composableBuilder(
      column: $table.phoneSecondary,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gstin => $composableBuilder(
      column: $table.gstin, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cgstRatePercent => $composableBuilder(
      column: $table.cgstRatePercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get sgstRatePercent => $composableBuilder(
      column: $table.sgstRatePercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get igstRatePercent => $composableBuilder(
      column: $table.igstRatePercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get invoicePrefix => $composableBuilder(
      column: $table.invoicePrefix,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get nextInvoiceNumber => $composableBuilder(
      column: $table.nextInvoiceNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get invoiceFooterText => $composableBuilder(
      column: $table.invoiceFooterText,
      builder: (column) => ColumnOrderings(column));
}

class $$LocalHotelSettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalHotelSettingsTable> {
  $$LocalHotelSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get hotelName =>
      $composableBuilder(column: $table.hotelName, builder: (column) => column);

  GeneratedColumn<String> get tagline =>
      $composableBuilder(column: $table.tagline, builder: (column) => column);

  GeneratedColumn<String> get addressLine1 => $composableBuilder(
      column: $table.addressLine1, builder: (column) => column);

  GeneratedColumn<String> get addressLine2 => $composableBuilder(
      column: $table.addressLine2, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get pincode =>
      $composableBuilder(column: $table.pincode, builder: (column) => column);

  GeneratedColumn<String> get phonePrimary => $composableBuilder(
      column: $table.phonePrimary, builder: (column) => column);

  GeneratedColumn<String> get phoneSecondary => $composableBuilder(
      column: $table.phoneSecondary, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get gstin =>
      $composableBuilder(column: $table.gstin, builder: (column) => column);

  GeneratedColumn<double> get cgstRatePercent => $composableBuilder(
      column: $table.cgstRatePercent, builder: (column) => column);

  GeneratedColumn<double> get sgstRatePercent => $composableBuilder(
      column: $table.sgstRatePercent, builder: (column) => column);

  GeneratedColumn<double> get igstRatePercent => $composableBuilder(
      column: $table.igstRatePercent, builder: (column) => column);

  GeneratedColumn<String> get invoicePrefix => $composableBuilder(
      column: $table.invoicePrefix, builder: (column) => column);

  GeneratedColumn<int> get nextInvoiceNumber => $composableBuilder(
      column: $table.nextInvoiceNumber, builder: (column) => column);

  GeneratedColumn<String> get invoiceFooterText => $composableBuilder(
      column: $table.invoiceFooterText, builder: (column) => column);
}

class $$LocalHotelSettingsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalHotelSettingsTable,
    LocalHotelSetting,
    $$LocalHotelSettingsTableFilterComposer,
    $$LocalHotelSettingsTableOrderingComposer,
    $$LocalHotelSettingsTableAnnotationComposer,
    $$LocalHotelSettingsTableCreateCompanionBuilder,
    $$LocalHotelSettingsTableUpdateCompanionBuilder,
    (
      LocalHotelSetting,
      BaseReferences<_$AppDatabase, $LocalHotelSettingsTable, LocalHotelSetting>
    ),
    LocalHotelSetting,
    PrefetchHooks Function()> {
  $$LocalHotelSettingsTableTableManager(
      _$AppDatabase db, $LocalHotelSettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalHotelSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalHotelSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalHotelSettingsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> hotelName = const Value.absent(),
            Value<String> tagline = const Value.absent(),
            Value<String> addressLine1 = const Value.absent(),
            Value<String?> addressLine2 = const Value.absent(),
            Value<String> city = const Value.absent(),
            Value<String> state = const Value.absent(),
            Value<String> country = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<String> phonePrimary = const Value.absent(),
            Value<String?> phoneSecondary = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> gstin = const Value.absent(),
            Value<double> cgstRatePercent = const Value.absent(),
            Value<double> sgstRatePercent = const Value.absent(),
            Value<double> igstRatePercent = const Value.absent(),
            Value<String> invoicePrefix = const Value.absent(),
            Value<int> nextInvoiceNumber = const Value.absent(),
            Value<String?> invoiceFooterText = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalHotelSettingsCompanion(
            id: id,
            hotelName: hotelName,
            tagline: tagline,
            addressLine1: addressLine1,
            addressLine2: addressLine2,
            city: city,
            state: state,
            country: country,
            pincode: pincode,
            phonePrimary: phonePrimary,
            phoneSecondary: phoneSecondary,
            email: email,
            gstin: gstin,
            cgstRatePercent: cgstRatePercent,
            sgstRatePercent: sgstRatePercent,
            igstRatePercent: igstRatePercent,
            invoicePrefix: invoicePrefix,
            nextInvoiceNumber: nextInvoiceNumber,
            invoiceFooterText: invoiceFooterText,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String> hotelName = const Value.absent(),
            Value<String> tagline = const Value.absent(),
            required String addressLine1,
            Value<String?> addressLine2 = const Value.absent(),
            required String city,
            required String state,
            Value<String> country = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            required String phonePrimary,
            Value<String?> phoneSecondary = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> gstin = const Value.absent(),
            Value<double> cgstRatePercent = const Value.absent(),
            Value<double> sgstRatePercent = const Value.absent(),
            Value<double> igstRatePercent = const Value.absent(),
            Value<String> invoicePrefix = const Value.absent(),
            Value<int> nextInvoiceNumber = const Value.absent(),
            Value<String?> invoiceFooterText = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalHotelSettingsCompanion.insert(
            id: id,
            hotelName: hotelName,
            tagline: tagline,
            addressLine1: addressLine1,
            addressLine2: addressLine2,
            city: city,
            state: state,
            country: country,
            pincode: pincode,
            phonePrimary: phonePrimary,
            phoneSecondary: phoneSecondary,
            email: email,
            gstin: gstin,
            cgstRatePercent: cgstRatePercent,
            sgstRatePercent: sgstRatePercent,
            igstRatePercent: igstRatePercent,
            invoicePrefix: invoicePrefix,
            nextInvoiceNumber: nextInvoiceNumber,
            invoiceFooterText: invoiceFooterText,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalHotelSettingsTable, LocalHotelSetting>(
                        table),
                    BaseReferences<_$AppDatabase, $LocalHotelSettingsTable,
                        LocalHotelSetting>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalHotelSettingsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalHotelSettingsTable,
    LocalHotelSetting,
    $$LocalHotelSettingsTableFilterComposer,
    $$LocalHotelSettingsTableOrderingComposer,
    $$LocalHotelSettingsTableAnnotationComposer,
    $$LocalHotelSettingsTableCreateCompanionBuilder,
    $$LocalHotelSettingsTableUpdateCompanionBuilder,
    (
      LocalHotelSetting,
      BaseReferences<_$AppDatabase, $LocalHotelSettingsTable, LocalHotelSetting>
    ),
    LocalHotelSetting,
    PrefetchHooks Function()>;
typedef $$LocalRoomCategoriesTableCreateCompanionBuilder
    = LocalRoomCategoriesCompanion Function({
  required String id,
  required String name,
  required int baseSingleTariffPaise,
  required int baseDoubleTariffPaise,
  Value<int> extraBedTariffPaise,
  Value<int> maxAdults,
  Value<int> maxChildren,
  Value<int> rowid,
});
typedef $$LocalRoomCategoriesTableUpdateCompanionBuilder
    = LocalRoomCategoriesCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> baseSingleTariffPaise,
  Value<int> baseDoubleTariffPaise,
  Value<int> extraBedTariffPaise,
  Value<int> maxAdults,
  Value<int> maxChildren,
  Value<int> rowid,
});

class $$LocalRoomCategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $LocalRoomCategoriesTable> {
  $$LocalRoomCategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get baseSingleTariffPaise => $composableBuilder(
      column: $table.baseSingleTariffPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get baseDoubleTariffPaise => $composableBuilder(
      column: $table.baseDoubleTariffPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get extraBedTariffPaise => $composableBuilder(
      column: $table.extraBedTariffPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxAdults => $composableBuilder(
      column: $table.maxAdults, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxChildren => $composableBuilder(
      column: $table.maxChildren, builder: (column) => ColumnFilters(column));
}

class $$LocalRoomCategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalRoomCategoriesTable> {
  $$LocalRoomCategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get baseSingleTariffPaise => $composableBuilder(
      column: $table.baseSingleTariffPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get baseDoubleTariffPaise => $composableBuilder(
      column: $table.baseDoubleTariffPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get extraBedTariffPaise => $composableBuilder(
      column: $table.extraBedTariffPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxAdults => $composableBuilder(
      column: $table.maxAdults, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxChildren => $composableBuilder(
      column: $table.maxChildren, builder: (column) => ColumnOrderings(column));
}

class $$LocalRoomCategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalRoomCategoriesTable> {
  $$LocalRoomCategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get baseSingleTariffPaise => $composableBuilder(
      column: $table.baseSingleTariffPaise, builder: (column) => column);

  GeneratedColumn<int> get baseDoubleTariffPaise => $composableBuilder(
      column: $table.baseDoubleTariffPaise, builder: (column) => column);

  GeneratedColumn<int> get extraBedTariffPaise => $composableBuilder(
      column: $table.extraBedTariffPaise, builder: (column) => column);

  GeneratedColumn<int> get maxAdults =>
      $composableBuilder(column: $table.maxAdults, builder: (column) => column);

  GeneratedColumn<int> get maxChildren => $composableBuilder(
      column: $table.maxChildren, builder: (column) => column);
}

class $$LocalRoomCategoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalRoomCategoriesTable,
    LocalRoomCategory,
    $$LocalRoomCategoriesTableFilterComposer,
    $$LocalRoomCategoriesTableOrderingComposer,
    $$LocalRoomCategoriesTableAnnotationComposer,
    $$LocalRoomCategoriesTableCreateCompanionBuilder,
    $$LocalRoomCategoriesTableUpdateCompanionBuilder,
    (
      LocalRoomCategory,
      BaseReferences<_$AppDatabase, $LocalRoomCategoriesTable,
          LocalRoomCategory>
    ),
    LocalRoomCategory,
    PrefetchHooks Function()> {
  $$LocalRoomCategoriesTableTableManager(
      _$AppDatabase db, $LocalRoomCategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalRoomCategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalRoomCategoriesTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalRoomCategoriesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> baseSingleTariffPaise = const Value.absent(),
            Value<int> baseDoubleTariffPaise = const Value.absent(),
            Value<int> extraBedTariffPaise = const Value.absent(),
            Value<int> maxAdults = const Value.absent(),
            Value<int> maxChildren = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalRoomCategoriesCompanion(
            id: id,
            name: name,
            baseSingleTariffPaise: baseSingleTariffPaise,
            baseDoubleTariffPaise: baseDoubleTariffPaise,
            extraBedTariffPaise: extraBedTariffPaise,
            maxAdults: maxAdults,
            maxChildren: maxChildren,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required int baseSingleTariffPaise,
            required int baseDoubleTariffPaise,
            Value<int> extraBedTariffPaise = const Value.absent(),
            Value<int> maxAdults = const Value.absent(),
            Value<int> maxChildren = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalRoomCategoriesCompanion.insert(
            id: id,
            name: name,
            baseSingleTariffPaise: baseSingleTariffPaise,
            baseDoubleTariffPaise: baseDoubleTariffPaise,
            extraBedTariffPaise: extraBedTariffPaise,
            maxAdults: maxAdults,
            maxChildren: maxChildren,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalRoomCategoriesTable, LocalRoomCategory>(
                        table),
                    BaseReferences<_$AppDatabase, $LocalRoomCategoriesTable,
                        LocalRoomCategory>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalRoomCategoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalRoomCategoriesTable,
    LocalRoomCategory,
    $$LocalRoomCategoriesTableFilterComposer,
    $$LocalRoomCategoriesTableOrderingComposer,
    $$LocalRoomCategoriesTableAnnotationComposer,
    $$LocalRoomCategoriesTableCreateCompanionBuilder,
    $$LocalRoomCategoriesTableUpdateCompanionBuilder,
    (
      LocalRoomCategory,
      BaseReferences<_$AppDatabase, $LocalRoomCategoriesTable,
          LocalRoomCategory>
    ),
    LocalRoomCategory,
    PrefetchHooks Function()>;
typedef $$LocalRoomsTableCreateCompanionBuilder = LocalRoomsCompanion Function({
  required String id,
  required String roomNumber,
  required int floorNumber,
  required String categoryName,
  Value<String> occupancyStatus,
  Value<String> housekeepingStatus,
  Value<String> maintenanceStatus,
  Value<bool> isActive,
  Value<String?> notes,
  Value<int> rowid,
});
typedef $$LocalRoomsTableUpdateCompanionBuilder = LocalRoomsCompanion Function({
  Value<String> id,
  Value<String> roomNumber,
  Value<int> floorNumber,
  Value<String> categoryName,
  Value<String> occupancyStatus,
  Value<String> housekeepingStatus,
  Value<String> maintenanceStatus,
  Value<bool> isActive,
  Value<String?> notes,
  Value<int> rowid,
});

class $$LocalRoomsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalRoomsTable> {
  $$LocalRoomsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get floorNumber => $composableBuilder(
      column: $table.floorNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryName => $composableBuilder(
      column: $table.categoryName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get occupancyStatus => $composableBuilder(
      column: $table.occupancyStatus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get housekeepingStatus => $composableBuilder(
      column: $table.housekeepingStatus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get maintenanceStatus => $composableBuilder(
      column: $table.maintenanceStatus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));
}

class $$LocalRoomsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalRoomsTable> {
  $$LocalRoomsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get floorNumber => $composableBuilder(
      column: $table.floorNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryName => $composableBuilder(
      column: $table.categoryName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get occupancyStatus => $composableBuilder(
      column: $table.occupancyStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get housekeepingStatus => $composableBuilder(
      column: $table.housekeepingStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get maintenanceStatus => $composableBuilder(
      column: $table.maintenanceStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));
}

class $$LocalRoomsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalRoomsTable> {
  $$LocalRoomsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => column);

  GeneratedColumn<int> get floorNumber => $composableBuilder(
      column: $table.floorNumber, builder: (column) => column);

  GeneratedColumn<String> get categoryName => $composableBuilder(
      column: $table.categoryName, builder: (column) => column);

  GeneratedColumn<String> get occupancyStatus => $composableBuilder(
      column: $table.occupancyStatus, builder: (column) => column);

  GeneratedColumn<String> get housekeepingStatus => $composableBuilder(
      column: $table.housekeepingStatus, builder: (column) => column);

  GeneratedColumn<String> get maintenanceStatus => $composableBuilder(
      column: $table.maintenanceStatus, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$LocalRoomsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalRoomsTable,
    LocalRoom,
    $$LocalRoomsTableFilterComposer,
    $$LocalRoomsTableOrderingComposer,
    $$LocalRoomsTableAnnotationComposer,
    $$LocalRoomsTableCreateCompanionBuilder,
    $$LocalRoomsTableUpdateCompanionBuilder,
    (LocalRoom, BaseReferences<_$AppDatabase, $LocalRoomsTable, LocalRoom>),
    LocalRoom,
    PrefetchHooks Function()> {
  $$LocalRoomsTableTableManager(_$AppDatabase db, $LocalRoomsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalRoomsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalRoomsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalRoomsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> roomNumber = const Value.absent(),
            Value<int> floorNumber = const Value.absent(),
            Value<String> categoryName = const Value.absent(),
            Value<String> occupancyStatus = const Value.absent(),
            Value<String> housekeepingStatus = const Value.absent(),
            Value<String> maintenanceStatus = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalRoomsCompanion(
            id: id,
            roomNumber: roomNumber,
            floorNumber: floorNumber,
            categoryName: categoryName,
            occupancyStatus: occupancyStatus,
            housekeepingStatus: housekeepingStatus,
            maintenanceStatus: maintenanceStatus,
            isActive: isActive,
            notes: notes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String roomNumber,
            required int floorNumber,
            required String categoryName,
            Value<String> occupancyStatus = const Value.absent(),
            Value<String> housekeepingStatus = const Value.absent(),
            Value<String> maintenanceStatus = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalRoomsCompanion.insert(
            id: id,
            roomNumber: roomNumber,
            floorNumber: floorNumber,
            categoryName: categoryName,
            occupancyStatus: occupancyStatus,
            housekeepingStatus: housekeepingStatus,
            maintenanceStatus: maintenanceStatus,
            isActive: isActive,
            notes: notes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalRoomsTable, LocalRoom>(table),
                    BaseReferences<_$AppDatabase, $LocalRoomsTable, LocalRoom>(
                        db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalRoomsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalRoomsTable,
    LocalRoom,
    $$LocalRoomsTableFilterComposer,
    $$LocalRoomsTableOrderingComposer,
    $$LocalRoomsTableAnnotationComposer,
    $$LocalRoomsTableCreateCompanionBuilder,
    $$LocalRoomsTableUpdateCompanionBuilder,
    (LocalRoom, BaseReferences<_$AppDatabase, $LocalRoomsTable, LocalRoom>),
    LocalRoom,
    PrefetchHooks Function()>;
typedef $$LocalGuestsTableCreateCompanionBuilder = LocalGuestsCompanion
    Function({
  required String id,
  required String fullName,
  required String phone,
  Value<String?> email,
  Value<String?> addressStreet,
  Value<String?> city,
  Value<String?> state,
  Value<String> country,
  Value<String?> pincode,
  Value<String?> companyName,
  Value<String?> designation,
  Value<String?> companyGstin,
  Value<String?> idProofType,
  Value<String?> idProofNumber,
  Value<bool> isForeignNational,
  Value<String?> passportNumber,
  Value<String?> visaNumber,
  Value<String> nationality,
  Value<bool> vipStatus,
  Value<String?> notes,
  Value<int> rowid,
});
typedef $$LocalGuestsTableUpdateCompanionBuilder = LocalGuestsCompanion
    Function({
  Value<String> id,
  Value<String> fullName,
  Value<String> phone,
  Value<String?> email,
  Value<String?> addressStreet,
  Value<String?> city,
  Value<String?> state,
  Value<String> country,
  Value<String?> pincode,
  Value<String?> companyName,
  Value<String?> designation,
  Value<String?> companyGstin,
  Value<String?> idProofType,
  Value<String?> idProofNumber,
  Value<bool> isForeignNational,
  Value<String?> passportNumber,
  Value<String?> visaNumber,
  Value<String> nationality,
  Value<bool> vipStatus,
  Value<String?> notes,
  Value<int> rowid,
});

class $$LocalGuestsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalGuestsTable> {
  $$LocalGuestsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get addressStreet => $composableBuilder(
      column: $table.addressStreet, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyName => $composableBuilder(
      column: $table.companyName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get designation => $composableBuilder(
      column: $table.designation, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyGstin => $composableBuilder(
      column: $table.companyGstin, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get idProofType => $composableBuilder(
      column: $table.idProofType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get idProofNumber => $composableBuilder(
      column: $table.idProofNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isForeignNational => $composableBuilder(
      column: $table.isForeignNational,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get passportNumber => $composableBuilder(
      column: $table.passportNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get visaNumber => $composableBuilder(
      column: $table.visaNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nationality => $composableBuilder(
      column: $table.nationality, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get vipStatus => $composableBuilder(
      column: $table.vipStatus, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));
}

class $$LocalGuestsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalGuestsTable> {
  $$LocalGuestsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get addressStreet => $composableBuilder(
      column: $table.addressStreet,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyName => $composableBuilder(
      column: $table.companyName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get designation => $composableBuilder(
      column: $table.designation, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyGstin => $composableBuilder(
      column: $table.companyGstin,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get idProofType => $composableBuilder(
      column: $table.idProofType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get idProofNumber => $composableBuilder(
      column: $table.idProofNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isForeignNational => $composableBuilder(
      column: $table.isForeignNational,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get passportNumber => $composableBuilder(
      column: $table.passportNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get visaNumber => $composableBuilder(
      column: $table.visaNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nationality => $composableBuilder(
      column: $table.nationality, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get vipStatus => $composableBuilder(
      column: $table.vipStatus, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));
}

class $$LocalGuestsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalGuestsTable> {
  $$LocalGuestsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get addressStreet => $composableBuilder(
      column: $table.addressStreet, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get pincode =>
      $composableBuilder(column: $table.pincode, builder: (column) => column);

  GeneratedColumn<String> get companyName => $composableBuilder(
      column: $table.companyName, builder: (column) => column);

  GeneratedColumn<String> get designation => $composableBuilder(
      column: $table.designation, builder: (column) => column);

  GeneratedColumn<String> get companyGstin => $composableBuilder(
      column: $table.companyGstin, builder: (column) => column);

  GeneratedColumn<String> get idProofType => $composableBuilder(
      column: $table.idProofType, builder: (column) => column);

  GeneratedColumn<String> get idProofNumber => $composableBuilder(
      column: $table.idProofNumber, builder: (column) => column);

  GeneratedColumn<bool> get isForeignNational => $composableBuilder(
      column: $table.isForeignNational, builder: (column) => column);

  GeneratedColumn<String> get passportNumber => $composableBuilder(
      column: $table.passportNumber, builder: (column) => column);

  GeneratedColumn<String> get visaNumber => $composableBuilder(
      column: $table.visaNumber, builder: (column) => column);

  GeneratedColumn<String> get nationality => $composableBuilder(
      column: $table.nationality, builder: (column) => column);

  GeneratedColumn<bool> get vipStatus =>
      $composableBuilder(column: $table.vipStatus, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$LocalGuestsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalGuestsTable,
    LocalGuest,
    $$LocalGuestsTableFilterComposer,
    $$LocalGuestsTableOrderingComposer,
    $$LocalGuestsTableAnnotationComposer,
    $$LocalGuestsTableCreateCompanionBuilder,
    $$LocalGuestsTableUpdateCompanionBuilder,
    (LocalGuest, BaseReferences<_$AppDatabase, $LocalGuestsTable, LocalGuest>),
    LocalGuest,
    PrefetchHooks Function()> {
  $$LocalGuestsTableTableManager(_$AppDatabase db, $LocalGuestsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalGuestsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalGuestsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalGuestsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> fullName = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> addressStreet = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String> country = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<String?> companyName = const Value.absent(),
            Value<String?> designation = const Value.absent(),
            Value<String?> companyGstin = const Value.absent(),
            Value<String?> idProofType = const Value.absent(),
            Value<String?> idProofNumber = const Value.absent(),
            Value<bool> isForeignNational = const Value.absent(),
            Value<String?> passportNumber = const Value.absent(),
            Value<String?> visaNumber = const Value.absent(),
            Value<String> nationality = const Value.absent(),
            Value<bool> vipStatus = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalGuestsCompanion(
            id: id,
            fullName: fullName,
            phone: phone,
            email: email,
            addressStreet: addressStreet,
            city: city,
            state: state,
            country: country,
            pincode: pincode,
            companyName: companyName,
            designation: designation,
            companyGstin: companyGstin,
            idProofType: idProofType,
            idProofNumber: idProofNumber,
            isForeignNational: isForeignNational,
            passportNumber: passportNumber,
            visaNumber: visaNumber,
            nationality: nationality,
            vipStatus: vipStatus,
            notes: notes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String fullName,
            required String phone,
            Value<String?> email = const Value.absent(),
            Value<String?> addressStreet = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String> country = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<String?> companyName = const Value.absent(),
            Value<String?> designation = const Value.absent(),
            Value<String?> companyGstin = const Value.absent(),
            Value<String?> idProofType = const Value.absent(),
            Value<String?> idProofNumber = const Value.absent(),
            Value<bool> isForeignNational = const Value.absent(),
            Value<String?> passportNumber = const Value.absent(),
            Value<String?> visaNumber = const Value.absent(),
            Value<String> nationality = const Value.absent(),
            Value<bool> vipStatus = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalGuestsCompanion.insert(
            id: id,
            fullName: fullName,
            phone: phone,
            email: email,
            addressStreet: addressStreet,
            city: city,
            state: state,
            country: country,
            pincode: pincode,
            companyName: companyName,
            designation: designation,
            companyGstin: companyGstin,
            idProofType: idProofType,
            idProofNumber: idProofNumber,
            isForeignNational: isForeignNational,
            passportNumber: passportNumber,
            visaNumber: visaNumber,
            nationality: nationality,
            vipStatus: vipStatus,
            notes: notes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalGuestsTable, LocalGuest>(table),
                    BaseReferences<_$AppDatabase, $LocalGuestsTable,
                        LocalGuest>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalGuestsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalGuestsTable,
    LocalGuest,
    $$LocalGuestsTableFilterComposer,
    $$LocalGuestsTableOrderingComposer,
    $$LocalGuestsTableAnnotationComposer,
    $$LocalGuestsTableCreateCompanionBuilder,
    $$LocalGuestsTableUpdateCompanionBuilder,
    (LocalGuest, BaseReferences<_$AppDatabase, $LocalGuestsTable, LocalGuest>),
    LocalGuest,
    PrefetchHooks Function()>;
typedef $$LocalReservationsTableCreateCompanionBuilder
    = LocalReservationsCompanion Function({
  required String id,
  required String reservationCode,
  required String guestId,
  required String guestName,
  required String guestPhone,
  required String bookingSource,
  Value<String?> externalBookingReference,
  required String categoryName,
  Value<String?> assignedRoomId,
  Value<String?> assignedRoomNumber,
  required DateTime checkInDate,
  required DateTime checkOutDate,
  Value<String> occupancyType,
  Value<int> adultsCount,
  Value<int> childrenCount,
  required int agreedNightlyTariffPaise,
  Value<int> advanceAmountPaidPaise,
  Value<String> status,
  Value<String?> specialRequests,
  Value<int> rowid,
});
typedef $$LocalReservationsTableUpdateCompanionBuilder
    = LocalReservationsCompanion Function({
  Value<String> id,
  Value<String> reservationCode,
  Value<String> guestId,
  Value<String> guestName,
  Value<String> guestPhone,
  Value<String> bookingSource,
  Value<String?> externalBookingReference,
  Value<String> categoryName,
  Value<String?> assignedRoomId,
  Value<String?> assignedRoomNumber,
  Value<DateTime> checkInDate,
  Value<DateTime> checkOutDate,
  Value<String> occupancyType,
  Value<int> adultsCount,
  Value<int> childrenCount,
  Value<int> agreedNightlyTariffPaise,
  Value<int> advanceAmountPaidPaise,
  Value<String> status,
  Value<String?> specialRequests,
  Value<int> rowid,
});

class $$LocalReservationsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalReservationsTable> {
  $$LocalReservationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reservationCode => $composableBuilder(
      column: $table.reservationCode,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guestId => $composableBuilder(
      column: $table.guestId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guestName => $composableBuilder(
      column: $table.guestName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guestPhone => $composableBuilder(
      column: $table.guestPhone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get bookingSource => $composableBuilder(
      column: $table.bookingSource, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get externalBookingReference => $composableBuilder(
      column: $table.externalBookingReference,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryName => $composableBuilder(
      column: $table.categoryName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get assignedRoomId => $composableBuilder(
      column: $table.assignedRoomId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get assignedRoomNumber => $composableBuilder(
      column: $table.assignedRoomNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get checkInDate => $composableBuilder(
      column: $table.checkInDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get checkOutDate => $composableBuilder(
      column: $table.checkOutDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get occupancyType => $composableBuilder(
      column: $table.occupancyType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get adultsCount => $composableBuilder(
      column: $table.adultsCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get childrenCount => $composableBuilder(
      column: $table.childrenCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get agreedNightlyTariffPaise => $composableBuilder(
      column: $table.agreedNightlyTariffPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get advanceAmountPaidPaise => $composableBuilder(
      column: $table.advanceAmountPaidPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get specialRequests => $composableBuilder(
      column: $table.specialRequests,
      builder: (column) => ColumnFilters(column));
}

class $$LocalReservationsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalReservationsTable> {
  $$LocalReservationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reservationCode => $composableBuilder(
      column: $table.reservationCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guestId => $composableBuilder(
      column: $table.guestId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guestName => $composableBuilder(
      column: $table.guestName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guestPhone => $composableBuilder(
      column: $table.guestPhone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get bookingSource => $composableBuilder(
      column: $table.bookingSource,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get externalBookingReference => $composableBuilder(
      column: $table.externalBookingReference,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryName => $composableBuilder(
      column: $table.categoryName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get assignedRoomId => $composableBuilder(
      column: $table.assignedRoomId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get assignedRoomNumber => $composableBuilder(
      column: $table.assignedRoomNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get checkInDate => $composableBuilder(
      column: $table.checkInDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get checkOutDate => $composableBuilder(
      column: $table.checkOutDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get occupancyType => $composableBuilder(
      column: $table.occupancyType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get adultsCount => $composableBuilder(
      column: $table.adultsCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get childrenCount => $composableBuilder(
      column: $table.childrenCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get agreedNightlyTariffPaise => $composableBuilder(
      column: $table.agreedNightlyTariffPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get advanceAmountPaidPaise => $composableBuilder(
      column: $table.advanceAmountPaidPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get specialRequests => $composableBuilder(
      column: $table.specialRequests,
      builder: (column) => ColumnOrderings(column));
}

class $$LocalReservationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalReservationsTable> {
  $$LocalReservationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get reservationCode => $composableBuilder(
      column: $table.reservationCode, builder: (column) => column);

  GeneratedColumn<String> get guestId =>
      $composableBuilder(column: $table.guestId, builder: (column) => column);

  GeneratedColumn<String> get guestName =>
      $composableBuilder(column: $table.guestName, builder: (column) => column);

  GeneratedColumn<String> get guestPhone => $composableBuilder(
      column: $table.guestPhone, builder: (column) => column);

  GeneratedColumn<String> get bookingSource => $composableBuilder(
      column: $table.bookingSource, builder: (column) => column);

  GeneratedColumn<String> get externalBookingReference => $composableBuilder(
      column: $table.externalBookingReference, builder: (column) => column);

  GeneratedColumn<String> get categoryName => $composableBuilder(
      column: $table.categoryName, builder: (column) => column);

  GeneratedColumn<String> get assignedRoomId => $composableBuilder(
      column: $table.assignedRoomId, builder: (column) => column);

  GeneratedColumn<String> get assignedRoomNumber => $composableBuilder(
      column: $table.assignedRoomNumber, builder: (column) => column);

  GeneratedColumn<DateTime> get checkInDate => $composableBuilder(
      column: $table.checkInDate, builder: (column) => column);

  GeneratedColumn<DateTime> get checkOutDate => $composableBuilder(
      column: $table.checkOutDate, builder: (column) => column);

  GeneratedColumn<String> get occupancyType => $composableBuilder(
      column: $table.occupancyType, builder: (column) => column);

  GeneratedColumn<int> get adultsCount => $composableBuilder(
      column: $table.adultsCount, builder: (column) => column);

  GeneratedColumn<int> get childrenCount => $composableBuilder(
      column: $table.childrenCount, builder: (column) => column);

  GeneratedColumn<int> get agreedNightlyTariffPaise => $composableBuilder(
      column: $table.agreedNightlyTariffPaise, builder: (column) => column);

  GeneratedColumn<int> get advanceAmountPaidPaise => $composableBuilder(
      column: $table.advanceAmountPaidPaise, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get specialRequests => $composableBuilder(
      column: $table.specialRequests, builder: (column) => column);
}

class $$LocalReservationsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalReservationsTable,
    LocalReservation,
    $$LocalReservationsTableFilterComposer,
    $$LocalReservationsTableOrderingComposer,
    $$LocalReservationsTableAnnotationComposer,
    $$LocalReservationsTableCreateCompanionBuilder,
    $$LocalReservationsTableUpdateCompanionBuilder,
    (
      LocalReservation,
      BaseReferences<_$AppDatabase, $LocalReservationsTable, LocalReservation>
    ),
    LocalReservation,
    PrefetchHooks Function()> {
  $$LocalReservationsTableTableManager(
      _$AppDatabase db, $LocalReservationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalReservationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalReservationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalReservationsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> reservationCode = const Value.absent(),
            Value<String> guestId = const Value.absent(),
            Value<String> guestName = const Value.absent(),
            Value<String> guestPhone = const Value.absent(),
            Value<String> bookingSource = const Value.absent(),
            Value<String?> externalBookingReference = const Value.absent(),
            Value<String> categoryName = const Value.absent(),
            Value<String?> assignedRoomId = const Value.absent(),
            Value<String?> assignedRoomNumber = const Value.absent(),
            Value<DateTime> checkInDate = const Value.absent(),
            Value<DateTime> checkOutDate = const Value.absent(),
            Value<String> occupancyType = const Value.absent(),
            Value<int> adultsCount = const Value.absent(),
            Value<int> childrenCount = const Value.absent(),
            Value<int> agreedNightlyTariffPaise = const Value.absent(),
            Value<int> advanceAmountPaidPaise = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> specialRequests = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalReservationsCompanion(
            id: id,
            reservationCode: reservationCode,
            guestId: guestId,
            guestName: guestName,
            guestPhone: guestPhone,
            bookingSource: bookingSource,
            externalBookingReference: externalBookingReference,
            categoryName: categoryName,
            assignedRoomId: assignedRoomId,
            assignedRoomNumber: assignedRoomNumber,
            checkInDate: checkInDate,
            checkOutDate: checkOutDate,
            occupancyType: occupancyType,
            adultsCount: adultsCount,
            childrenCount: childrenCount,
            agreedNightlyTariffPaise: agreedNightlyTariffPaise,
            advanceAmountPaidPaise: advanceAmountPaidPaise,
            status: status,
            specialRequests: specialRequests,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String reservationCode,
            required String guestId,
            required String guestName,
            required String guestPhone,
            required String bookingSource,
            Value<String?> externalBookingReference = const Value.absent(),
            required String categoryName,
            Value<String?> assignedRoomId = const Value.absent(),
            Value<String?> assignedRoomNumber = const Value.absent(),
            required DateTime checkInDate,
            required DateTime checkOutDate,
            Value<String> occupancyType = const Value.absent(),
            Value<int> adultsCount = const Value.absent(),
            Value<int> childrenCount = const Value.absent(),
            required int agreedNightlyTariffPaise,
            Value<int> advanceAmountPaidPaise = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> specialRequests = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalReservationsCompanion.insert(
            id: id,
            reservationCode: reservationCode,
            guestId: guestId,
            guestName: guestName,
            guestPhone: guestPhone,
            bookingSource: bookingSource,
            externalBookingReference: externalBookingReference,
            categoryName: categoryName,
            assignedRoomId: assignedRoomId,
            assignedRoomNumber: assignedRoomNumber,
            checkInDate: checkInDate,
            checkOutDate: checkOutDate,
            occupancyType: occupancyType,
            adultsCount: adultsCount,
            childrenCount: childrenCount,
            agreedNightlyTariffPaise: agreedNightlyTariffPaise,
            advanceAmountPaidPaise: advanceAmountPaidPaise,
            status: status,
            specialRequests: specialRequests,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalReservationsTable, LocalReservation>(
                        table),
                    BaseReferences<_$AppDatabase, $LocalReservationsTable,
                        LocalReservation>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalReservationsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalReservationsTable,
    LocalReservation,
    $$LocalReservationsTableFilterComposer,
    $$LocalReservationsTableOrderingComposer,
    $$LocalReservationsTableAnnotationComposer,
    $$LocalReservationsTableCreateCompanionBuilder,
    $$LocalReservationsTableUpdateCompanionBuilder,
    (
      LocalReservation,
      BaseReferences<_$AppDatabase, $LocalReservationsTable, LocalReservation>
    ),
    LocalReservation,
    PrefetchHooks Function()>;
typedef $$LocalStaysTableCreateCompanionBuilder = LocalStaysCompanion Function({
  required String id,
  required String stayCode,
  Value<String?> reservationId,
  required String guestId,
  required String guestName,
  required String guestPhone,
  required String roomId,
  required String roomNumber,
  required String categoryName,
  required DateTime actualCheckInTime,
  Value<DateTime?> actualCheckOutTime,
  required DateTime expectedCheckOutDate,
  Value<String> occupancyType,
  Value<int> adultsCount,
  Value<int> childrenCount,
  required int appliedNightlyTariffPaise,
  Value<String?> purposeOfVisit,
  Value<String> mealPlan,
  Value<String> status,
  Value<int> rowid,
});
typedef $$LocalStaysTableUpdateCompanionBuilder = LocalStaysCompanion Function({
  Value<String> id,
  Value<String> stayCode,
  Value<String?> reservationId,
  Value<String> guestId,
  Value<String> guestName,
  Value<String> guestPhone,
  Value<String> roomId,
  Value<String> roomNumber,
  Value<String> categoryName,
  Value<DateTime> actualCheckInTime,
  Value<DateTime?> actualCheckOutTime,
  Value<DateTime> expectedCheckOutDate,
  Value<String> occupancyType,
  Value<int> adultsCount,
  Value<int> childrenCount,
  Value<int> appliedNightlyTariffPaise,
  Value<String?> purposeOfVisit,
  Value<String> mealPlan,
  Value<String> status,
  Value<int> rowid,
});

class $$LocalStaysTableFilterComposer
    extends Composer<_$AppDatabase, $LocalStaysTable> {
  $$LocalStaysTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get stayCode => $composableBuilder(
      column: $table.stayCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reservationId => $composableBuilder(
      column: $table.reservationId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guestId => $composableBuilder(
      column: $table.guestId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guestName => $composableBuilder(
      column: $table.guestName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guestPhone => $composableBuilder(
      column: $table.guestPhone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get roomId => $composableBuilder(
      column: $table.roomId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryName => $composableBuilder(
      column: $table.categoryName, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get actualCheckInTime => $composableBuilder(
      column: $table.actualCheckInTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get actualCheckOutTime => $composableBuilder(
      column: $table.actualCheckOutTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expectedCheckOutDate => $composableBuilder(
      column: $table.expectedCheckOutDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get occupancyType => $composableBuilder(
      column: $table.occupancyType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get adultsCount => $composableBuilder(
      column: $table.adultsCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get childrenCount => $composableBuilder(
      column: $table.childrenCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get appliedNightlyTariffPaise => $composableBuilder(
      column: $table.appliedNightlyTariffPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get purposeOfVisit => $composableBuilder(
      column: $table.purposeOfVisit,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mealPlan => $composableBuilder(
      column: $table.mealPlan, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));
}

class $$LocalStaysTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalStaysTable> {
  $$LocalStaysTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get stayCode => $composableBuilder(
      column: $table.stayCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reservationId => $composableBuilder(
      column: $table.reservationId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guestId => $composableBuilder(
      column: $table.guestId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guestName => $composableBuilder(
      column: $table.guestName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guestPhone => $composableBuilder(
      column: $table.guestPhone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get roomId => $composableBuilder(
      column: $table.roomId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryName => $composableBuilder(
      column: $table.categoryName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get actualCheckInTime => $composableBuilder(
      column: $table.actualCheckInTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get actualCheckOutTime => $composableBuilder(
      column: $table.actualCheckOutTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expectedCheckOutDate => $composableBuilder(
      column: $table.expectedCheckOutDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get occupancyType => $composableBuilder(
      column: $table.occupancyType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get adultsCount => $composableBuilder(
      column: $table.adultsCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get childrenCount => $composableBuilder(
      column: $table.childrenCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get appliedNightlyTariffPaise => $composableBuilder(
      column: $table.appliedNightlyTariffPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get purposeOfVisit => $composableBuilder(
      column: $table.purposeOfVisit,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mealPlan => $composableBuilder(
      column: $table.mealPlan, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));
}

class $$LocalStaysTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalStaysTable> {
  $$LocalStaysTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stayCode =>
      $composableBuilder(column: $table.stayCode, builder: (column) => column);

  GeneratedColumn<String> get reservationId => $composableBuilder(
      column: $table.reservationId, builder: (column) => column);

  GeneratedColumn<String> get guestId =>
      $composableBuilder(column: $table.guestId, builder: (column) => column);

  GeneratedColumn<String> get guestName =>
      $composableBuilder(column: $table.guestName, builder: (column) => column);

  GeneratedColumn<String> get guestPhone => $composableBuilder(
      column: $table.guestPhone, builder: (column) => column);

  GeneratedColumn<String> get roomId =>
      $composableBuilder(column: $table.roomId, builder: (column) => column);

  GeneratedColumn<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => column);

  GeneratedColumn<String> get categoryName => $composableBuilder(
      column: $table.categoryName, builder: (column) => column);

  GeneratedColumn<DateTime> get actualCheckInTime => $composableBuilder(
      column: $table.actualCheckInTime, builder: (column) => column);

  GeneratedColumn<DateTime> get actualCheckOutTime => $composableBuilder(
      column: $table.actualCheckOutTime, builder: (column) => column);

  GeneratedColumn<DateTime> get expectedCheckOutDate => $composableBuilder(
      column: $table.expectedCheckOutDate, builder: (column) => column);

  GeneratedColumn<String> get occupancyType => $composableBuilder(
      column: $table.occupancyType, builder: (column) => column);

  GeneratedColumn<int> get adultsCount => $composableBuilder(
      column: $table.adultsCount, builder: (column) => column);

  GeneratedColumn<int> get childrenCount => $composableBuilder(
      column: $table.childrenCount, builder: (column) => column);

  GeneratedColumn<int> get appliedNightlyTariffPaise => $composableBuilder(
      column: $table.appliedNightlyTariffPaise, builder: (column) => column);

  GeneratedColumn<String> get purposeOfVisit => $composableBuilder(
      column: $table.purposeOfVisit, builder: (column) => column);

  GeneratedColumn<String> get mealPlan =>
      $composableBuilder(column: $table.mealPlan, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);
}

class $$LocalStaysTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalStaysTable,
    LocalStay,
    $$LocalStaysTableFilterComposer,
    $$LocalStaysTableOrderingComposer,
    $$LocalStaysTableAnnotationComposer,
    $$LocalStaysTableCreateCompanionBuilder,
    $$LocalStaysTableUpdateCompanionBuilder,
    (LocalStay, BaseReferences<_$AppDatabase, $LocalStaysTable, LocalStay>),
    LocalStay,
    PrefetchHooks Function()> {
  $$LocalStaysTableTableManager(_$AppDatabase db, $LocalStaysTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalStaysTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalStaysTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalStaysTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> stayCode = const Value.absent(),
            Value<String?> reservationId = const Value.absent(),
            Value<String> guestId = const Value.absent(),
            Value<String> guestName = const Value.absent(),
            Value<String> guestPhone = const Value.absent(),
            Value<String> roomId = const Value.absent(),
            Value<String> roomNumber = const Value.absent(),
            Value<String> categoryName = const Value.absent(),
            Value<DateTime> actualCheckInTime = const Value.absent(),
            Value<DateTime?> actualCheckOutTime = const Value.absent(),
            Value<DateTime> expectedCheckOutDate = const Value.absent(),
            Value<String> occupancyType = const Value.absent(),
            Value<int> adultsCount = const Value.absent(),
            Value<int> childrenCount = const Value.absent(),
            Value<int> appliedNightlyTariffPaise = const Value.absent(),
            Value<String?> purposeOfVisit = const Value.absent(),
            Value<String> mealPlan = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalStaysCompanion(
            id: id,
            stayCode: stayCode,
            reservationId: reservationId,
            guestId: guestId,
            guestName: guestName,
            guestPhone: guestPhone,
            roomId: roomId,
            roomNumber: roomNumber,
            categoryName: categoryName,
            actualCheckInTime: actualCheckInTime,
            actualCheckOutTime: actualCheckOutTime,
            expectedCheckOutDate: expectedCheckOutDate,
            occupancyType: occupancyType,
            adultsCount: adultsCount,
            childrenCount: childrenCount,
            appliedNightlyTariffPaise: appliedNightlyTariffPaise,
            purposeOfVisit: purposeOfVisit,
            mealPlan: mealPlan,
            status: status,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String stayCode,
            Value<String?> reservationId = const Value.absent(),
            required String guestId,
            required String guestName,
            required String guestPhone,
            required String roomId,
            required String roomNumber,
            required String categoryName,
            required DateTime actualCheckInTime,
            Value<DateTime?> actualCheckOutTime = const Value.absent(),
            required DateTime expectedCheckOutDate,
            Value<String> occupancyType = const Value.absent(),
            Value<int> adultsCount = const Value.absent(),
            Value<int> childrenCount = const Value.absent(),
            required int appliedNightlyTariffPaise,
            Value<String?> purposeOfVisit = const Value.absent(),
            Value<String> mealPlan = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalStaysCompanion.insert(
            id: id,
            stayCode: stayCode,
            reservationId: reservationId,
            guestId: guestId,
            guestName: guestName,
            guestPhone: guestPhone,
            roomId: roomId,
            roomNumber: roomNumber,
            categoryName: categoryName,
            actualCheckInTime: actualCheckInTime,
            actualCheckOutTime: actualCheckOutTime,
            expectedCheckOutDate: expectedCheckOutDate,
            occupancyType: occupancyType,
            adultsCount: adultsCount,
            childrenCount: childrenCount,
            appliedNightlyTariffPaise: appliedNightlyTariffPaise,
            purposeOfVisit: purposeOfVisit,
            mealPlan: mealPlan,
            status: status,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalStaysTable, LocalStay>(table),
                    BaseReferences<_$AppDatabase, $LocalStaysTable, LocalStay>(
                        db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalStaysTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalStaysTable,
    LocalStay,
    $$LocalStaysTableFilterComposer,
    $$LocalStaysTableOrderingComposer,
    $$LocalStaysTableAnnotationComposer,
    $$LocalStaysTableCreateCompanionBuilder,
    $$LocalStaysTableUpdateCompanionBuilder,
    (LocalStay, BaseReferences<_$AppDatabase, $LocalStaysTable, LocalStay>),
    LocalStay,
    PrefetchHooks Function()>;
typedef $$LocalInvoicesTableCreateCompanionBuilder = LocalInvoicesCompanion
    Function({
  required String id,
  required String invoiceNumber,
  Value<String?> stayId,
  required String guestId,
  required String guestName,
  required String roomNumber,
  required DateTime invoiceDate,
  required int billableNights,
  required int roomChargesPaise,
  Value<int> extraChargesPaise,
  required int subtotalPaise,
  Value<double> discountPercentage,
  Value<int> discountAmountPaise,
  required int taxableAmountPaise,
  Value<double> cgstRate,
  Value<int> cgstAmountPaise,
  Value<double> sgstRate,
  Value<int> sgstAmountPaise,
  Value<double> igstRate,
  Value<int> igstAmountPaise,
  Value<int> totalTaxPaise,
  required int totalAmountPaise,
  Value<int> totalPaidPaise,
  Value<int> outstandingBalancePaise,
  Value<String> status,
  required String amountInWords,
  Value<String?> notes,
  Value<bool> isLocked,
  Value<int> rowid,
});
typedef $$LocalInvoicesTableUpdateCompanionBuilder = LocalInvoicesCompanion
    Function({
  Value<String> id,
  Value<String> invoiceNumber,
  Value<String?> stayId,
  Value<String> guestId,
  Value<String> guestName,
  Value<String> roomNumber,
  Value<DateTime> invoiceDate,
  Value<int> billableNights,
  Value<int> roomChargesPaise,
  Value<int> extraChargesPaise,
  Value<int> subtotalPaise,
  Value<double> discountPercentage,
  Value<int> discountAmountPaise,
  Value<int> taxableAmountPaise,
  Value<double> cgstRate,
  Value<int> cgstAmountPaise,
  Value<double> sgstRate,
  Value<int> sgstAmountPaise,
  Value<double> igstRate,
  Value<int> igstAmountPaise,
  Value<int> totalTaxPaise,
  Value<int> totalAmountPaise,
  Value<int> totalPaidPaise,
  Value<int> outstandingBalancePaise,
  Value<String> status,
  Value<String> amountInWords,
  Value<String?> notes,
  Value<bool> isLocked,
  Value<int> rowid,
});

class $$LocalInvoicesTableFilterComposer
    extends Composer<_$AppDatabase, $LocalInvoicesTable> {
  $$LocalInvoicesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get invoiceNumber => $composableBuilder(
      column: $table.invoiceNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get stayId => $composableBuilder(
      column: $table.stayId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guestId => $composableBuilder(
      column: $table.guestId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guestName => $composableBuilder(
      column: $table.guestName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get invoiceDate => $composableBuilder(
      column: $table.invoiceDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get billableNights => $composableBuilder(
      column: $table.billableNights,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get roomChargesPaise => $composableBuilder(
      column: $table.roomChargesPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get extraChargesPaise => $composableBuilder(
      column: $table.extraChargesPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get subtotalPaise => $composableBuilder(
      column: $table.subtotalPaise, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discountPercentage => $composableBuilder(
      column: $table.discountPercentage,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get discountAmountPaise => $composableBuilder(
      column: $table.discountAmountPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get taxableAmountPaise => $composableBuilder(
      column: $table.taxableAmountPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cgstRate => $composableBuilder(
      column: $table.cgstRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get cgstAmountPaise => $composableBuilder(
      column: $table.cgstAmountPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get sgstRate => $composableBuilder(
      column: $table.sgstRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sgstAmountPaise => $composableBuilder(
      column: $table.sgstAmountPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get igstRate => $composableBuilder(
      column: $table.igstRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get igstAmountPaise => $composableBuilder(
      column: $table.igstAmountPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalTaxPaise => $composableBuilder(
      column: $table.totalTaxPaise, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalAmountPaise => $composableBuilder(
      column: $table.totalAmountPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalPaidPaise => $composableBuilder(
      column: $table.totalPaidPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get amountInWords => $composableBuilder(
      column: $table.amountInWords, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isLocked => $composableBuilder(
      column: $table.isLocked, builder: (column) => ColumnFilters(column));
}

class $$LocalInvoicesTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalInvoicesTable> {
  $$LocalInvoicesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get invoiceNumber => $composableBuilder(
      column: $table.invoiceNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get stayId => $composableBuilder(
      column: $table.stayId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guestId => $composableBuilder(
      column: $table.guestId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guestName => $composableBuilder(
      column: $table.guestName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get invoiceDate => $composableBuilder(
      column: $table.invoiceDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get billableNights => $composableBuilder(
      column: $table.billableNights,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get roomChargesPaise => $composableBuilder(
      column: $table.roomChargesPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get extraChargesPaise => $composableBuilder(
      column: $table.extraChargesPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get subtotalPaise => $composableBuilder(
      column: $table.subtotalPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discountPercentage => $composableBuilder(
      column: $table.discountPercentage,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get discountAmountPaise => $composableBuilder(
      column: $table.discountAmountPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get taxableAmountPaise => $composableBuilder(
      column: $table.taxableAmountPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cgstRate => $composableBuilder(
      column: $table.cgstRate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get cgstAmountPaise => $composableBuilder(
      column: $table.cgstAmountPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get sgstRate => $composableBuilder(
      column: $table.sgstRate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sgstAmountPaise => $composableBuilder(
      column: $table.sgstAmountPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get igstRate => $composableBuilder(
      column: $table.igstRate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get igstAmountPaise => $composableBuilder(
      column: $table.igstAmountPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalTaxPaise => $composableBuilder(
      column: $table.totalTaxPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalAmountPaise => $composableBuilder(
      column: $table.totalAmountPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalPaidPaise => $composableBuilder(
      column: $table.totalPaidPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get amountInWords => $composableBuilder(
      column: $table.amountInWords,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isLocked => $composableBuilder(
      column: $table.isLocked, builder: (column) => ColumnOrderings(column));
}

class $$LocalInvoicesTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalInvoicesTable> {
  $$LocalInvoicesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get invoiceNumber => $composableBuilder(
      column: $table.invoiceNumber, builder: (column) => column);

  GeneratedColumn<String> get stayId =>
      $composableBuilder(column: $table.stayId, builder: (column) => column);

  GeneratedColumn<String> get guestId =>
      $composableBuilder(column: $table.guestId, builder: (column) => column);

  GeneratedColumn<String> get guestName =>
      $composableBuilder(column: $table.guestName, builder: (column) => column);

  GeneratedColumn<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => column);

  GeneratedColumn<DateTime> get invoiceDate => $composableBuilder(
      column: $table.invoiceDate, builder: (column) => column);

  GeneratedColumn<int> get billableNights => $composableBuilder(
      column: $table.billableNights, builder: (column) => column);

  GeneratedColumn<int> get roomChargesPaise => $composableBuilder(
      column: $table.roomChargesPaise, builder: (column) => column);

  GeneratedColumn<int> get extraChargesPaise => $composableBuilder(
      column: $table.extraChargesPaise, builder: (column) => column);

  GeneratedColumn<int> get subtotalPaise => $composableBuilder(
      column: $table.subtotalPaise, builder: (column) => column);

  GeneratedColumn<double> get discountPercentage => $composableBuilder(
      column: $table.discountPercentage, builder: (column) => column);

  GeneratedColumn<int> get discountAmountPaise => $composableBuilder(
      column: $table.discountAmountPaise, builder: (column) => column);

  GeneratedColumn<int> get taxableAmountPaise => $composableBuilder(
      column: $table.taxableAmountPaise, builder: (column) => column);

  GeneratedColumn<double> get cgstRate =>
      $composableBuilder(column: $table.cgstRate, builder: (column) => column);

  GeneratedColumn<int> get cgstAmountPaise => $composableBuilder(
      column: $table.cgstAmountPaise, builder: (column) => column);

  GeneratedColumn<double> get sgstRate =>
      $composableBuilder(column: $table.sgstRate, builder: (column) => column);

  GeneratedColumn<int> get sgstAmountPaise => $composableBuilder(
      column: $table.sgstAmountPaise, builder: (column) => column);

  GeneratedColumn<double> get igstRate =>
      $composableBuilder(column: $table.igstRate, builder: (column) => column);

  GeneratedColumn<int> get igstAmountPaise => $composableBuilder(
      column: $table.igstAmountPaise, builder: (column) => column);

  GeneratedColumn<int> get totalTaxPaise => $composableBuilder(
      column: $table.totalTaxPaise, builder: (column) => column);

  GeneratedColumn<int> get totalAmountPaise => $composableBuilder(
      column: $table.totalAmountPaise, builder: (column) => column);

  GeneratedColumn<int> get totalPaidPaise => $composableBuilder(
      column: $table.totalPaidPaise, builder: (column) => column);

  GeneratedColumn<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get amountInWords => $composableBuilder(
      column: $table.amountInWords, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<bool> get isLocked =>
      $composableBuilder(column: $table.isLocked, builder: (column) => column);
}

class $$LocalInvoicesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalInvoicesTable,
    LocalInvoice,
    $$LocalInvoicesTableFilterComposer,
    $$LocalInvoicesTableOrderingComposer,
    $$LocalInvoicesTableAnnotationComposer,
    $$LocalInvoicesTableCreateCompanionBuilder,
    $$LocalInvoicesTableUpdateCompanionBuilder,
    (
      LocalInvoice,
      BaseReferences<_$AppDatabase, $LocalInvoicesTable, LocalInvoice>
    ),
    LocalInvoice,
    PrefetchHooks Function()> {
  $$LocalInvoicesTableTableManager(_$AppDatabase db, $LocalInvoicesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalInvoicesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalInvoicesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalInvoicesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> invoiceNumber = const Value.absent(),
            Value<String?> stayId = const Value.absent(),
            Value<String> guestId = const Value.absent(),
            Value<String> guestName = const Value.absent(),
            Value<String> roomNumber = const Value.absent(),
            Value<DateTime> invoiceDate = const Value.absent(),
            Value<int> billableNights = const Value.absent(),
            Value<int> roomChargesPaise = const Value.absent(),
            Value<int> extraChargesPaise = const Value.absent(),
            Value<int> subtotalPaise = const Value.absent(),
            Value<double> discountPercentage = const Value.absent(),
            Value<int> discountAmountPaise = const Value.absent(),
            Value<int> taxableAmountPaise = const Value.absent(),
            Value<double> cgstRate = const Value.absent(),
            Value<int> cgstAmountPaise = const Value.absent(),
            Value<double> sgstRate = const Value.absent(),
            Value<int> sgstAmountPaise = const Value.absent(),
            Value<double> igstRate = const Value.absent(),
            Value<int> igstAmountPaise = const Value.absent(),
            Value<int> totalTaxPaise = const Value.absent(),
            Value<int> totalAmountPaise = const Value.absent(),
            Value<int> totalPaidPaise = const Value.absent(),
            Value<int> outstandingBalancePaise = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String> amountInWords = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<bool> isLocked = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalInvoicesCompanion(
            id: id,
            invoiceNumber: invoiceNumber,
            stayId: stayId,
            guestId: guestId,
            guestName: guestName,
            roomNumber: roomNumber,
            invoiceDate: invoiceDate,
            billableNights: billableNights,
            roomChargesPaise: roomChargesPaise,
            extraChargesPaise: extraChargesPaise,
            subtotalPaise: subtotalPaise,
            discountPercentage: discountPercentage,
            discountAmountPaise: discountAmountPaise,
            taxableAmountPaise: taxableAmountPaise,
            cgstRate: cgstRate,
            cgstAmountPaise: cgstAmountPaise,
            sgstRate: sgstRate,
            sgstAmountPaise: sgstAmountPaise,
            igstRate: igstRate,
            igstAmountPaise: igstAmountPaise,
            totalTaxPaise: totalTaxPaise,
            totalAmountPaise: totalAmountPaise,
            totalPaidPaise: totalPaidPaise,
            outstandingBalancePaise: outstandingBalancePaise,
            status: status,
            amountInWords: amountInWords,
            notes: notes,
            isLocked: isLocked,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String invoiceNumber,
            Value<String?> stayId = const Value.absent(),
            required String guestId,
            required String guestName,
            required String roomNumber,
            required DateTime invoiceDate,
            required int billableNights,
            required int roomChargesPaise,
            Value<int> extraChargesPaise = const Value.absent(),
            required int subtotalPaise,
            Value<double> discountPercentage = const Value.absent(),
            Value<int> discountAmountPaise = const Value.absent(),
            required int taxableAmountPaise,
            Value<double> cgstRate = const Value.absent(),
            Value<int> cgstAmountPaise = const Value.absent(),
            Value<double> sgstRate = const Value.absent(),
            Value<int> sgstAmountPaise = const Value.absent(),
            Value<double> igstRate = const Value.absent(),
            Value<int> igstAmountPaise = const Value.absent(),
            Value<int> totalTaxPaise = const Value.absent(),
            required int totalAmountPaise,
            Value<int> totalPaidPaise = const Value.absent(),
            Value<int> outstandingBalancePaise = const Value.absent(),
            Value<String> status = const Value.absent(),
            required String amountInWords,
            Value<String?> notes = const Value.absent(),
            Value<bool> isLocked = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalInvoicesCompanion.insert(
            id: id,
            invoiceNumber: invoiceNumber,
            stayId: stayId,
            guestId: guestId,
            guestName: guestName,
            roomNumber: roomNumber,
            invoiceDate: invoiceDate,
            billableNights: billableNights,
            roomChargesPaise: roomChargesPaise,
            extraChargesPaise: extraChargesPaise,
            subtotalPaise: subtotalPaise,
            discountPercentage: discountPercentage,
            discountAmountPaise: discountAmountPaise,
            taxableAmountPaise: taxableAmountPaise,
            cgstRate: cgstRate,
            cgstAmountPaise: cgstAmountPaise,
            sgstRate: sgstRate,
            sgstAmountPaise: sgstAmountPaise,
            igstRate: igstRate,
            igstAmountPaise: igstAmountPaise,
            totalTaxPaise: totalTaxPaise,
            totalAmountPaise: totalAmountPaise,
            totalPaidPaise: totalPaidPaise,
            outstandingBalancePaise: outstandingBalancePaise,
            status: status,
            amountInWords: amountInWords,
            notes: notes,
            isLocked: isLocked,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalInvoicesTable, LocalInvoice>(table),
                    BaseReferences<_$AppDatabase, $LocalInvoicesTable,
                        LocalInvoice>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalInvoicesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalInvoicesTable,
    LocalInvoice,
    $$LocalInvoicesTableFilterComposer,
    $$LocalInvoicesTableOrderingComposer,
    $$LocalInvoicesTableAnnotationComposer,
    $$LocalInvoicesTableCreateCompanionBuilder,
    $$LocalInvoicesTableUpdateCompanionBuilder,
    (
      LocalInvoice,
      BaseReferences<_$AppDatabase, $LocalInvoicesTable, LocalInvoice>
    ),
    LocalInvoice,
    PrefetchHooks Function()>;
typedef $$LocalPaymentsTableCreateCompanionBuilder = LocalPaymentsCompanion
    Function({
  required String id,
  required String paymentReference,
  Value<String?> invoiceId,
  Value<String?> reservationId,
  Value<String?> stayId,
  required int amountPaise,
  required String paymentMethod,
  Value<String?> transactionId,
  required String paymentType,
  required DateTime paidAt,
  Value<String?> notes,
  Value<int> rowid,
});
typedef $$LocalPaymentsTableUpdateCompanionBuilder = LocalPaymentsCompanion
    Function({
  Value<String> id,
  Value<String> paymentReference,
  Value<String?> invoiceId,
  Value<String?> reservationId,
  Value<String?> stayId,
  Value<int> amountPaise,
  Value<String> paymentMethod,
  Value<String?> transactionId,
  Value<String> paymentType,
  Value<DateTime> paidAt,
  Value<String?> notes,
  Value<int> rowid,
});

class $$LocalPaymentsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalPaymentsTable> {
  $$LocalPaymentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentReference => $composableBuilder(
      column: $table.paymentReference,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get invoiceId => $composableBuilder(
      column: $table.invoiceId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reservationId => $composableBuilder(
      column: $table.reservationId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get stayId => $composableBuilder(
      column: $table.stayId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get transactionId => $composableBuilder(
      column: $table.transactionId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentType => $composableBuilder(
      column: $table.paymentType, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get paidAt => $composableBuilder(
      column: $table.paidAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));
}

class $$LocalPaymentsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalPaymentsTable> {
  $$LocalPaymentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentReference => $composableBuilder(
      column: $table.paymentReference,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get invoiceId => $composableBuilder(
      column: $table.invoiceId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reservationId => $composableBuilder(
      column: $table.reservationId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get stayId => $composableBuilder(
      column: $table.stayId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get transactionId => $composableBuilder(
      column: $table.transactionId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentType => $composableBuilder(
      column: $table.paymentType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get paidAt => $composableBuilder(
      column: $table.paidAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));
}

class $$LocalPaymentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalPaymentsTable> {
  $$LocalPaymentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get paymentReference => $composableBuilder(
      column: $table.paymentReference, builder: (column) => column);

  GeneratedColumn<String> get invoiceId =>
      $composableBuilder(column: $table.invoiceId, builder: (column) => column);

  GeneratedColumn<String> get reservationId => $composableBuilder(
      column: $table.reservationId, builder: (column) => column);

  GeneratedColumn<String> get stayId =>
      $composableBuilder(column: $table.stayId, builder: (column) => column);

  GeneratedColumn<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => column);

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => column);

  GeneratedColumn<String> get transactionId => $composableBuilder(
      column: $table.transactionId, builder: (column) => column);

  GeneratedColumn<String> get paymentType => $composableBuilder(
      column: $table.paymentType, builder: (column) => column);

  GeneratedColumn<DateTime> get paidAt =>
      $composableBuilder(column: $table.paidAt, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$LocalPaymentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalPaymentsTable,
    LocalPayment,
    $$LocalPaymentsTableFilterComposer,
    $$LocalPaymentsTableOrderingComposer,
    $$LocalPaymentsTableAnnotationComposer,
    $$LocalPaymentsTableCreateCompanionBuilder,
    $$LocalPaymentsTableUpdateCompanionBuilder,
    (
      LocalPayment,
      BaseReferences<_$AppDatabase, $LocalPaymentsTable, LocalPayment>
    ),
    LocalPayment,
    PrefetchHooks Function()> {
  $$LocalPaymentsTableTableManager(_$AppDatabase db, $LocalPaymentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalPaymentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalPaymentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalPaymentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> paymentReference = const Value.absent(),
            Value<String?> invoiceId = const Value.absent(),
            Value<String?> reservationId = const Value.absent(),
            Value<String?> stayId = const Value.absent(),
            Value<int> amountPaise = const Value.absent(),
            Value<String> paymentMethod = const Value.absent(),
            Value<String?> transactionId = const Value.absent(),
            Value<String> paymentType = const Value.absent(),
            Value<DateTime> paidAt = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalPaymentsCompanion(
            id: id,
            paymentReference: paymentReference,
            invoiceId: invoiceId,
            reservationId: reservationId,
            stayId: stayId,
            amountPaise: amountPaise,
            paymentMethod: paymentMethod,
            transactionId: transactionId,
            paymentType: paymentType,
            paidAt: paidAt,
            notes: notes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String paymentReference,
            Value<String?> invoiceId = const Value.absent(),
            Value<String?> reservationId = const Value.absent(),
            Value<String?> stayId = const Value.absent(),
            required int amountPaise,
            required String paymentMethod,
            Value<String?> transactionId = const Value.absent(),
            required String paymentType,
            required DateTime paidAt,
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalPaymentsCompanion.insert(
            id: id,
            paymentReference: paymentReference,
            invoiceId: invoiceId,
            reservationId: reservationId,
            stayId: stayId,
            amountPaise: amountPaise,
            paymentMethod: paymentMethod,
            transactionId: transactionId,
            paymentType: paymentType,
            paidAt: paidAt,
            notes: notes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalPaymentsTable, LocalPayment>(table),
                    BaseReferences<_$AppDatabase, $LocalPaymentsTable,
                        LocalPayment>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalPaymentsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalPaymentsTable,
    LocalPayment,
    $$LocalPaymentsTableFilterComposer,
    $$LocalPaymentsTableOrderingComposer,
    $$LocalPaymentsTableAnnotationComposer,
    $$LocalPaymentsTableCreateCompanionBuilder,
    $$LocalPaymentsTableUpdateCompanionBuilder,
    (
      LocalPayment,
      BaseReferences<_$AppDatabase, $LocalPaymentsTable, LocalPayment>
    ),
    LocalPayment,
    PrefetchHooks Function()>;
typedef $$LocalEmployeesTableCreateCompanionBuilder = LocalEmployeesCompanion
    Function({
  required String id,
  required String employeeCode,
  required String fullName,
  required String mobile,
  required String designation,
  Value<String> department,
  required DateTime joiningDate,
  required int baseMonthlySalaryPaise,
  Value<int> salaryDueDay,
  Value<bool> isActive,
  Value<String?> notes,
  Value<int> rowid,
});
typedef $$LocalEmployeesTableUpdateCompanionBuilder = LocalEmployeesCompanion
    Function({
  Value<String> id,
  Value<String> employeeCode,
  Value<String> fullName,
  Value<String> mobile,
  Value<String> designation,
  Value<String> department,
  Value<DateTime> joiningDate,
  Value<int> baseMonthlySalaryPaise,
  Value<int> salaryDueDay,
  Value<bool> isActive,
  Value<String?> notes,
  Value<int> rowid,
});

class $$LocalEmployeesTableFilterComposer
    extends Composer<_$AppDatabase, $LocalEmployeesTable> {
  $$LocalEmployeesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get employeeCode => $composableBuilder(
      column: $table.employeeCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get designation => $composableBuilder(
      column: $table.designation, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get department => $composableBuilder(
      column: $table.department, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get joiningDate => $composableBuilder(
      column: $table.joiningDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get baseMonthlySalaryPaise => $composableBuilder(
      column: $table.baseMonthlySalaryPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get salaryDueDay => $composableBuilder(
      column: $table.salaryDueDay, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));
}

class $$LocalEmployeesTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalEmployeesTable> {
  $$LocalEmployeesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get employeeCode => $composableBuilder(
      column: $table.employeeCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get designation => $composableBuilder(
      column: $table.designation, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get department => $composableBuilder(
      column: $table.department, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get joiningDate => $composableBuilder(
      column: $table.joiningDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get baseMonthlySalaryPaise => $composableBuilder(
      column: $table.baseMonthlySalaryPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get salaryDueDay => $composableBuilder(
      column: $table.salaryDueDay,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));
}

class $$LocalEmployeesTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalEmployeesTable> {
  $$LocalEmployeesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get employeeCode => $composableBuilder(
      column: $table.employeeCode, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get mobile =>
      $composableBuilder(column: $table.mobile, builder: (column) => column);

  GeneratedColumn<String> get designation => $composableBuilder(
      column: $table.designation, builder: (column) => column);

  GeneratedColumn<String> get department => $composableBuilder(
      column: $table.department, builder: (column) => column);

  GeneratedColumn<DateTime> get joiningDate => $composableBuilder(
      column: $table.joiningDate, builder: (column) => column);

  GeneratedColumn<int> get baseMonthlySalaryPaise => $composableBuilder(
      column: $table.baseMonthlySalaryPaise, builder: (column) => column);

  GeneratedColumn<int> get salaryDueDay => $composableBuilder(
      column: $table.salaryDueDay, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$LocalEmployeesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalEmployeesTable,
    LocalEmployee,
    $$LocalEmployeesTableFilterComposer,
    $$LocalEmployeesTableOrderingComposer,
    $$LocalEmployeesTableAnnotationComposer,
    $$LocalEmployeesTableCreateCompanionBuilder,
    $$LocalEmployeesTableUpdateCompanionBuilder,
    (
      LocalEmployee,
      BaseReferences<_$AppDatabase, $LocalEmployeesTable, LocalEmployee>
    ),
    LocalEmployee,
    PrefetchHooks Function()> {
  $$LocalEmployeesTableTableManager(
      _$AppDatabase db, $LocalEmployeesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalEmployeesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalEmployeesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalEmployeesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> employeeCode = const Value.absent(),
            Value<String> fullName = const Value.absent(),
            Value<String> mobile = const Value.absent(),
            Value<String> designation = const Value.absent(),
            Value<String> department = const Value.absent(),
            Value<DateTime> joiningDate = const Value.absent(),
            Value<int> baseMonthlySalaryPaise = const Value.absent(),
            Value<int> salaryDueDay = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalEmployeesCompanion(
            id: id,
            employeeCode: employeeCode,
            fullName: fullName,
            mobile: mobile,
            designation: designation,
            department: department,
            joiningDate: joiningDate,
            baseMonthlySalaryPaise: baseMonthlySalaryPaise,
            salaryDueDay: salaryDueDay,
            isActive: isActive,
            notes: notes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String employeeCode,
            required String fullName,
            required String mobile,
            required String designation,
            Value<String> department = const Value.absent(),
            required DateTime joiningDate,
            required int baseMonthlySalaryPaise,
            Value<int> salaryDueDay = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalEmployeesCompanion.insert(
            id: id,
            employeeCode: employeeCode,
            fullName: fullName,
            mobile: mobile,
            designation: designation,
            department: department,
            joiningDate: joiningDate,
            baseMonthlySalaryPaise: baseMonthlySalaryPaise,
            salaryDueDay: salaryDueDay,
            isActive: isActive,
            notes: notes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalEmployeesTable, LocalEmployee>(table),
                    BaseReferences<_$AppDatabase, $LocalEmployeesTable,
                        LocalEmployee>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalEmployeesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalEmployeesTable,
    LocalEmployee,
    $$LocalEmployeesTableFilterComposer,
    $$LocalEmployeesTableOrderingComposer,
    $$LocalEmployeesTableAnnotationComposer,
    $$LocalEmployeesTableCreateCompanionBuilder,
    $$LocalEmployeesTableUpdateCompanionBuilder,
    (
      LocalEmployee,
      BaseReferences<_$AppDatabase, $LocalEmployeesTable, LocalEmployee>
    ),
    LocalEmployee,
    PrefetchHooks Function()>;
typedef $$LocalSalaryRecordsTableCreateCompanionBuilder
    = LocalSalaryRecordsCompanion Function({
  required String id,
  required String employeeId,
  required String employeeName,
  required String salaryMonth,
  required int baseSalaryPaise,
  Value<int> additionalEarningsPaise,
  Value<int> deductionsPaise,
  required int grossSalaryPaise,
  Value<int> advanceRecoveredPaise,
  required int netSalaryPayablePaise,
  Value<int> amountPaidPaise,
  Value<int> outstandingBalancePaise,
  required DateTime dueDate,
  Value<String> status,
  Value<String?> notes,
  Value<int> rowid,
});
typedef $$LocalSalaryRecordsTableUpdateCompanionBuilder
    = LocalSalaryRecordsCompanion Function({
  Value<String> id,
  Value<String> employeeId,
  Value<String> employeeName,
  Value<String> salaryMonth,
  Value<int> baseSalaryPaise,
  Value<int> additionalEarningsPaise,
  Value<int> deductionsPaise,
  Value<int> grossSalaryPaise,
  Value<int> advanceRecoveredPaise,
  Value<int> netSalaryPayablePaise,
  Value<int> amountPaidPaise,
  Value<int> outstandingBalancePaise,
  Value<DateTime> dueDate,
  Value<String> status,
  Value<String?> notes,
  Value<int> rowid,
});

class $$LocalSalaryRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalSalaryRecordsTable> {
  $$LocalSalaryRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get employeeName => $composableBuilder(
      column: $table.employeeName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salaryMonth => $composableBuilder(
      column: $table.salaryMonth, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get baseSalaryPaise => $composableBuilder(
      column: $table.baseSalaryPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get additionalEarningsPaise => $composableBuilder(
      column: $table.additionalEarningsPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get deductionsPaise => $composableBuilder(
      column: $table.deductionsPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get grossSalaryPaise => $composableBuilder(
      column: $table.grossSalaryPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get advanceRecoveredPaise => $composableBuilder(
      column: $table.advanceRecoveredPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get netSalaryPayablePaise => $composableBuilder(
      column: $table.netSalaryPayablePaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get amountPaidPaise => $composableBuilder(
      column: $table.amountPaidPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));
}

class $$LocalSalaryRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalSalaryRecordsTable> {
  $$LocalSalaryRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get employeeName => $composableBuilder(
      column: $table.employeeName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salaryMonth => $composableBuilder(
      column: $table.salaryMonth, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get baseSalaryPaise => $composableBuilder(
      column: $table.baseSalaryPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get additionalEarningsPaise => $composableBuilder(
      column: $table.additionalEarningsPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get deductionsPaise => $composableBuilder(
      column: $table.deductionsPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get grossSalaryPaise => $composableBuilder(
      column: $table.grossSalaryPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get advanceRecoveredPaise => $composableBuilder(
      column: $table.advanceRecoveredPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get netSalaryPayablePaise => $composableBuilder(
      column: $table.netSalaryPayablePaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get amountPaidPaise => $composableBuilder(
      column: $table.amountPaidPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));
}

class $$LocalSalaryRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalSalaryRecordsTable> {
  $$LocalSalaryRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => column);

  GeneratedColumn<String> get employeeName => $composableBuilder(
      column: $table.employeeName, builder: (column) => column);

  GeneratedColumn<String> get salaryMonth => $composableBuilder(
      column: $table.salaryMonth, builder: (column) => column);

  GeneratedColumn<int> get baseSalaryPaise => $composableBuilder(
      column: $table.baseSalaryPaise, builder: (column) => column);

  GeneratedColumn<int> get additionalEarningsPaise => $composableBuilder(
      column: $table.additionalEarningsPaise, builder: (column) => column);

  GeneratedColumn<int> get deductionsPaise => $composableBuilder(
      column: $table.deductionsPaise, builder: (column) => column);

  GeneratedColumn<int> get grossSalaryPaise => $composableBuilder(
      column: $table.grossSalaryPaise, builder: (column) => column);

  GeneratedColumn<int> get advanceRecoveredPaise => $composableBuilder(
      column: $table.advanceRecoveredPaise, builder: (column) => column);

  GeneratedColumn<int> get netSalaryPayablePaise => $composableBuilder(
      column: $table.netSalaryPayablePaise, builder: (column) => column);

  GeneratedColumn<int> get amountPaidPaise => $composableBuilder(
      column: $table.amountPaidPaise, builder: (column) => column);

  GeneratedColumn<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise, builder: (column) => column);

  GeneratedColumn<DateTime> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$LocalSalaryRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalSalaryRecordsTable,
    LocalSalaryRecord,
    $$LocalSalaryRecordsTableFilterComposer,
    $$LocalSalaryRecordsTableOrderingComposer,
    $$LocalSalaryRecordsTableAnnotationComposer,
    $$LocalSalaryRecordsTableCreateCompanionBuilder,
    $$LocalSalaryRecordsTableUpdateCompanionBuilder,
    (
      LocalSalaryRecord,
      BaseReferences<_$AppDatabase, $LocalSalaryRecordsTable, LocalSalaryRecord>
    ),
    LocalSalaryRecord,
    PrefetchHooks Function()> {
  $$LocalSalaryRecordsTableTableManager(
      _$AppDatabase db, $LocalSalaryRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalSalaryRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalSalaryRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalSalaryRecordsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> employeeId = const Value.absent(),
            Value<String> employeeName = const Value.absent(),
            Value<String> salaryMonth = const Value.absent(),
            Value<int> baseSalaryPaise = const Value.absent(),
            Value<int> additionalEarningsPaise = const Value.absent(),
            Value<int> deductionsPaise = const Value.absent(),
            Value<int> grossSalaryPaise = const Value.absent(),
            Value<int> advanceRecoveredPaise = const Value.absent(),
            Value<int> netSalaryPayablePaise = const Value.absent(),
            Value<int> amountPaidPaise = const Value.absent(),
            Value<int> outstandingBalancePaise = const Value.absent(),
            Value<DateTime> dueDate = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSalaryRecordsCompanion(
            id: id,
            employeeId: employeeId,
            employeeName: employeeName,
            salaryMonth: salaryMonth,
            baseSalaryPaise: baseSalaryPaise,
            additionalEarningsPaise: additionalEarningsPaise,
            deductionsPaise: deductionsPaise,
            grossSalaryPaise: grossSalaryPaise,
            advanceRecoveredPaise: advanceRecoveredPaise,
            netSalaryPayablePaise: netSalaryPayablePaise,
            amountPaidPaise: amountPaidPaise,
            outstandingBalancePaise: outstandingBalancePaise,
            dueDate: dueDate,
            status: status,
            notes: notes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String employeeId,
            required String employeeName,
            required String salaryMonth,
            required int baseSalaryPaise,
            Value<int> additionalEarningsPaise = const Value.absent(),
            Value<int> deductionsPaise = const Value.absent(),
            required int grossSalaryPaise,
            Value<int> advanceRecoveredPaise = const Value.absent(),
            required int netSalaryPayablePaise,
            Value<int> amountPaidPaise = const Value.absent(),
            Value<int> outstandingBalancePaise = const Value.absent(),
            required DateTime dueDate,
            Value<String> status = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSalaryRecordsCompanion.insert(
            id: id,
            employeeId: employeeId,
            employeeName: employeeName,
            salaryMonth: salaryMonth,
            baseSalaryPaise: baseSalaryPaise,
            additionalEarningsPaise: additionalEarningsPaise,
            deductionsPaise: deductionsPaise,
            grossSalaryPaise: grossSalaryPaise,
            advanceRecoveredPaise: advanceRecoveredPaise,
            netSalaryPayablePaise: netSalaryPayablePaise,
            amountPaidPaise: amountPaidPaise,
            outstandingBalancePaise: outstandingBalancePaise,
            dueDate: dueDate,
            status: status,
            notes: notes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalSalaryRecordsTable, LocalSalaryRecord>(
                        table),
                    BaseReferences<_$AppDatabase, $LocalSalaryRecordsTable,
                        LocalSalaryRecord>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalSalaryRecordsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalSalaryRecordsTable,
    LocalSalaryRecord,
    $$LocalSalaryRecordsTableFilterComposer,
    $$LocalSalaryRecordsTableOrderingComposer,
    $$LocalSalaryRecordsTableAnnotationComposer,
    $$LocalSalaryRecordsTableCreateCompanionBuilder,
    $$LocalSalaryRecordsTableUpdateCompanionBuilder,
    (
      LocalSalaryRecord,
      BaseReferences<_$AppDatabase, $LocalSalaryRecordsTable, LocalSalaryRecord>
    ),
    LocalSalaryRecord,
    PrefetchHooks Function()>;
typedef $$LocalSalaryAdvancesTableCreateCompanionBuilder
    = LocalSalaryAdvancesCompanion Function({
  required String id,
  required String advanceCode,
  required String employeeId,
  required String employeeName,
  required DateTime advanceDate,
  required int amountPaise,
  Value<int> recoveredAmountPaise,
  required int outstandingBalancePaise,
  Value<String?> reason,
  Value<String> status,
  Value<int> rowid,
});
typedef $$LocalSalaryAdvancesTableUpdateCompanionBuilder
    = LocalSalaryAdvancesCompanion Function({
  Value<String> id,
  Value<String> advanceCode,
  Value<String> employeeId,
  Value<String> employeeName,
  Value<DateTime> advanceDate,
  Value<int> amountPaise,
  Value<int> recoveredAmountPaise,
  Value<int> outstandingBalancePaise,
  Value<String?> reason,
  Value<String> status,
  Value<int> rowid,
});

class $$LocalSalaryAdvancesTableFilterComposer
    extends Composer<_$AppDatabase, $LocalSalaryAdvancesTable> {
  $$LocalSalaryAdvancesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get advanceCode => $composableBuilder(
      column: $table.advanceCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get employeeName => $composableBuilder(
      column: $table.employeeName, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get advanceDate => $composableBuilder(
      column: $table.advanceDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get recoveredAmountPaise => $composableBuilder(
      column: $table.recoveredAmountPaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reason => $composableBuilder(
      column: $table.reason, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));
}

class $$LocalSalaryAdvancesTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalSalaryAdvancesTable> {
  $$LocalSalaryAdvancesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get advanceCode => $composableBuilder(
      column: $table.advanceCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get employeeName => $composableBuilder(
      column: $table.employeeName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get advanceDate => $composableBuilder(
      column: $table.advanceDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get recoveredAmountPaise => $composableBuilder(
      column: $table.recoveredAmountPaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reason => $composableBuilder(
      column: $table.reason, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));
}

class $$LocalSalaryAdvancesTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalSalaryAdvancesTable> {
  $$LocalSalaryAdvancesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get advanceCode => $composableBuilder(
      column: $table.advanceCode, builder: (column) => column);

  GeneratedColumn<String> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => column);

  GeneratedColumn<String> get employeeName => $composableBuilder(
      column: $table.employeeName, builder: (column) => column);

  GeneratedColumn<DateTime> get advanceDate => $composableBuilder(
      column: $table.advanceDate, builder: (column) => column);

  GeneratedColumn<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => column);

  GeneratedColumn<int> get recoveredAmountPaise => $composableBuilder(
      column: $table.recoveredAmountPaise, builder: (column) => column);

  GeneratedColumn<int> get outstandingBalancePaise => $composableBuilder(
      column: $table.outstandingBalancePaise, builder: (column) => column);

  GeneratedColumn<String> get reason =>
      $composableBuilder(column: $table.reason, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);
}

class $$LocalSalaryAdvancesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalSalaryAdvancesTable,
    LocalSalaryAdvance,
    $$LocalSalaryAdvancesTableFilterComposer,
    $$LocalSalaryAdvancesTableOrderingComposer,
    $$LocalSalaryAdvancesTableAnnotationComposer,
    $$LocalSalaryAdvancesTableCreateCompanionBuilder,
    $$LocalSalaryAdvancesTableUpdateCompanionBuilder,
    (
      LocalSalaryAdvance,
      BaseReferences<_$AppDatabase, $LocalSalaryAdvancesTable,
          LocalSalaryAdvance>
    ),
    LocalSalaryAdvance,
    PrefetchHooks Function()> {
  $$LocalSalaryAdvancesTableTableManager(
      _$AppDatabase db, $LocalSalaryAdvancesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalSalaryAdvancesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalSalaryAdvancesTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalSalaryAdvancesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> advanceCode = const Value.absent(),
            Value<String> employeeId = const Value.absent(),
            Value<String> employeeName = const Value.absent(),
            Value<DateTime> advanceDate = const Value.absent(),
            Value<int> amountPaise = const Value.absent(),
            Value<int> recoveredAmountPaise = const Value.absent(),
            Value<int> outstandingBalancePaise = const Value.absent(),
            Value<String?> reason = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSalaryAdvancesCompanion(
            id: id,
            advanceCode: advanceCode,
            employeeId: employeeId,
            employeeName: employeeName,
            advanceDate: advanceDate,
            amountPaise: amountPaise,
            recoveredAmountPaise: recoveredAmountPaise,
            outstandingBalancePaise: outstandingBalancePaise,
            reason: reason,
            status: status,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String advanceCode,
            required String employeeId,
            required String employeeName,
            required DateTime advanceDate,
            required int amountPaise,
            Value<int> recoveredAmountPaise = const Value.absent(),
            required int outstandingBalancePaise,
            Value<String?> reason = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSalaryAdvancesCompanion.insert(
            id: id,
            advanceCode: advanceCode,
            employeeId: employeeId,
            employeeName: employeeName,
            advanceDate: advanceDate,
            amountPaise: amountPaise,
            recoveredAmountPaise: recoveredAmountPaise,
            outstandingBalancePaise: outstandingBalancePaise,
            reason: reason,
            status: status,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalSalaryAdvancesTable, LocalSalaryAdvance>(
                        table),
                    BaseReferences<_$AppDatabase, $LocalSalaryAdvancesTable,
                        LocalSalaryAdvance>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalSalaryAdvancesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalSalaryAdvancesTable,
    LocalSalaryAdvance,
    $$LocalSalaryAdvancesTableFilterComposer,
    $$LocalSalaryAdvancesTableOrderingComposer,
    $$LocalSalaryAdvancesTableAnnotationComposer,
    $$LocalSalaryAdvancesTableCreateCompanionBuilder,
    $$LocalSalaryAdvancesTableUpdateCompanionBuilder,
    (
      LocalSalaryAdvance,
      BaseReferences<_$AppDatabase, $LocalSalaryAdvancesTable,
          LocalSalaryAdvance>
    ),
    LocalSalaryAdvance,
    PrefetchHooks Function()>;
typedef $$LocalExpensesTableCreateCompanionBuilder = LocalExpensesCompanion
    Function({
  required String id,
  required String expenseReference,
  required String categoryName,
  required DateTime expenseDate,
  required int amountPaise,
  required String paymentMethod,
  required String description,
  Value<String?> notes,
  Value<int> rowid,
});
typedef $$LocalExpensesTableUpdateCompanionBuilder = LocalExpensesCompanion
    Function({
  Value<String> id,
  Value<String> expenseReference,
  Value<String> categoryName,
  Value<DateTime> expenseDate,
  Value<int> amountPaise,
  Value<String> paymentMethod,
  Value<String> description,
  Value<String?> notes,
  Value<int> rowid,
});

class $$LocalExpensesTableFilterComposer
    extends Composer<_$AppDatabase, $LocalExpensesTable> {
  $$LocalExpensesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get expenseReference => $composableBuilder(
      column: $table.expenseReference,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryName => $composableBuilder(
      column: $table.categoryName, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expenseDate => $composableBuilder(
      column: $table.expenseDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));
}

class $$LocalExpensesTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalExpensesTable> {
  $$LocalExpensesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get expenseReference => $composableBuilder(
      column: $table.expenseReference,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryName => $composableBuilder(
      column: $table.categoryName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expenseDate => $composableBuilder(
      column: $table.expenseDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));
}

class $$LocalExpensesTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalExpensesTable> {
  $$LocalExpensesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get expenseReference => $composableBuilder(
      column: $table.expenseReference, builder: (column) => column);

  GeneratedColumn<String> get categoryName => $composableBuilder(
      column: $table.categoryName, builder: (column) => column);

  GeneratedColumn<DateTime> get expenseDate => $composableBuilder(
      column: $table.expenseDate, builder: (column) => column);

  GeneratedColumn<int> get amountPaise => $composableBuilder(
      column: $table.amountPaise, builder: (column) => column);

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$LocalExpensesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalExpensesTable,
    LocalExpense,
    $$LocalExpensesTableFilterComposer,
    $$LocalExpensesTableOrderingComposer,
    $$LocalExpensesTableAnnotationComposer,
    $$LocalExpensesTableCreateCompanionBuilder,
    $$LocalExpensesTableUpdateCompanionBuilder,
    (
      LocalExpense,
      BaseReferences<_$AppDatabase, $LocalExpensesTable, LocalExpense>
    ),
    LocalExpense,
    PrefetchHooks Function()> {
  $$LocalExpensesTableTableManager(_$AppDatabase db, $LocalExpensesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalExpensesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalExpensesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalExpensesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> expenseReference = const Value.absent(),
            Value<String> categoryName = const Value.absent(),
            Value<DateTime> expenseDate = const Value.absent(),
            Value<int> amountPaise = const Value.absent(),
            Value<String> paymentMethod = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalExpensesCompanion(
            id: id,
            expenseReference: expenseReference,
            categoryName: categoryName,
            expenseDate: expenseDate,
            amountPaise: amountPaise,
            paymentMethod: paymentMethod,
            description: description,
            notes: notes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String expenseReference,
            required String categoryName,
            required DateTime expenseDate,
            required int amountPaise,
            required String paymentMethod,
            required String description,
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalExpensesCompanion.insert(
            id: id,
            expenseReference: expenseReference,
            categoryName: categoryName,
            expenseDate: expenseDate,
            amountPaise: amountPaise,
            paymentMethod: paymentMethod,
            description: description,
            notes: notes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalExpensesTable, LocalExpense>(table),
                    BaseReferences<_$AppDatabase, $LocalExpensesTable,
                        LocalExpense>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalExpensesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalExpensesTable,
    LocalExpense,
    $$LocalExpensesTableFilterComposer,
    $$LocalExpensesTableOrderingComposer,
    $$LocalExpensesTableAnnotationComposer,
    $$LocalExpensesTableCreateCompanionBuilder,
    $$LocalExpensesTableUpdateCompanionBuilder,
    (
      LocalExpense,
      BaseReferences<_$AppDatabase, $LocalExpensesTable, LocalExpense>
    ),
    LocalExpense,
    PrefetchHooks Function()>;
typedef $$LocalHousekeepingTasksTableCreateCompanionBuilder
    = LocalHousekeepingTasksCompanion Function({
  required String id,
  required String roomId,
  required String roomNumber,
  Value<String> taskType,
  Value<String> status,
  Value<String> priority,
  Value<DateTime?> startedAt,
  Value<DateTime?> completedAt,
  Value<String?> notes,
  Value<int> rowid,
});
typedef $$LocalHousekeepingTasksTableUpdateCompanionBuilder
    = LocalHousekeepingTasksCompanion Function({
  Value<String> id,
  Value<String> roomId,
  Value<String> roomNumber,
  Value<String> taskType,
  Value<String> status,
  Value<String> priority,
  Value<DateTime?> startedAt,
  Value<DateTime?> completedAt,
  Value<String?> notes,
  Value<int> rowid,
});

class $$LocalHousekeepingTasksTableFilterComposer
    extends Composer<_$AppDatabase, $LocalHousekeepingTasksTable> {
  $$LocalHousekeepingTasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get roomId => $composableBuilder(
      column: $table.roomId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get taskType => $composableBuilder(
      column: $table.taskType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priority => $composableBuilder(
      column: $table.priority, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startedAt => $composableBuilder(
      column: $table.startedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));
}

class $$LocalHousekeepingTasksTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalHousekeepingTasksTable> {
  $$LocalHousekeepingTasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get roomId => $composableBuilder(
      column: $table.roomId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get taskType => $composableBuilder(
      column: $table.taskType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priority => $composableBuilder(
      column: $table.priority, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startedAt => $composableBuilder(
      column: $table.startedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));
}

class $$LocalHousekeepingTasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalHousekeepingTasksTable> {
  $$LocalHousekeepingTasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get roomId =>
      $composableBuilder(column: $table.roomId, builder: (column) => column);

  GeneratedColumn<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => column);

  GeneratedColumn<String> get taskType =>
      $composableBuilder(column: $table.taskType, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get priority =>
      $composableBuilder(column: $table.priority, builder: (column) => column);

  GeneratedColumn<DateTime> get startedAt =>
      $composableBuilder(column: $table.startedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$LocalHousekeepingTasksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalHousekeepingTasksTable,
    LocalHousekeepingTask,
    $$LocalHousekeepingTasksTableFilterComposer,
    $$LocalHousekeepingTasksTableOrderingComposer,
    $$LocalHousekeepingTasksTableAnnotationComposer,
    $$LocalHousekeepingTasksTableCreateCompanionBuilder,
    $$LocalHousekeepingTasksTableUpdateCompanionBuilder,
    (
      LocalHousekeepingTask,
      BaseReferences<_$AppDatabase, $LocalHousekeepingTasksTable,
          LocalHousekeepingTask>
    ),
    LocalHousekeepingTask,
    PrefetchHooks Function()> {
  $$LocalHousekeepingTasksTableTableManager(
      _$AppDatabase db, $LocalHousekeepingTasksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalHousekeepingTasksTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalHousekeepingTasksTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalHousekeepingTasksTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> roomId = const Value.absent(),
            Value<String> roomNumber = const Value.absent(),
            Value<String> taskType = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String> priority = const Value.absent(),
            Value<DateTime?> startedAt = const Value.absent(),
            Value<DateTime?> completedAt = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalHousekeepingTasksCompanion(
            id: id,
            roomId: roomId,
            roomNumber: roomNumber,
            taskType: taskType,
            status: status,
            priority: priority,
            startedAt: startedAt,
            completedAt: completedAt,
            notes: notes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String roomId,
            required String roomNumber,
            Value<String> taskType = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String> priority = const Value.absent(),
            Value<DateTime?> startedAt = const Value.absent(),
            Value<DateTime?> completedAt = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalHousekeepingTasksCompanion.insert(
            id: id,
            roomId: roomId,
            roomNumber: roomNumber,
            taskType: taskType,
            status: status,
            priority: priority,
            startedAt: startedAt,
            completedAt: completedAt,
            notes: notes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalHousekeepingTasksTable,
                        LocalHousekeepingTask>(table),
                    BaseReferences<_$AppDatabase, $LocalHousekeepingTasksTable,
                        LocalHousekeepingTask>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalHousekeepingTasksTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $LocalHousekeepingTasksTable,
        LocalHousekeepingTask,
        $$LocalHousekeepingTasksTableFilterComposer,
        $$LocalHousekeepingTasksTableOrderingComposer,
        $$LocalHousekeepingTasksTableAnnotationComposer,
        $$LocalHousekeepingTasksTableCreateCompanionBuilder,
        $$LocalHousekeepingTasksTableUpdateCompanionBuilder,
        (
          LocalHousekeepingTask,
          BaseReferences<_$AppDatabase, $LocalHousekeepingTasksTable,
              LocalHousekeepingTask>
        ),
        LocalHousekeepingTask,
        PrefetchHooks Function()>;
typedef $$LocalMaintenanceIssuesTableCreateCompanionBuilder
    = LocalMaintenanceIssuesCompanion Function({
  required String id,
  Value<String?> roomId,
  Value<String?> roomNumber,
  required String title,
  required String description,
  Value<String> priority,
  Value<String> status,
  Value<String?> resolutionNotes,
  Value<DateTime?> resolvedAt,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$LocalMaintenanceIssuesTableUpdateCompanionBuilder
    = LocalMaintenanceIssuesCompanion Function({
  Value<String> id,
  Value<String?> roomId,
  Value<String?> roomNumber,
  Value<String> title,
  Value<String> description,
  Value<String> priority,
  Value<String> status,
  Value<String?> resolutionNotes,
  Value<DateTime?> resolvedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$LocalMaintenanceIssuesTableFilterComposer
    extends Composer<_$AppDatabase, $LocalMaintenanceIssuesTable> {
  $$LocalMaintenanceIssuesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get roomId => $composableBuilder(
      column: $table.roomId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priority => $composableBuilder(
      column: $table.priority, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resolutionNotes => $composableBuilder(
      column: $table.resolutionNotes,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get resolvedAt => $composableBuilder(
      column: $table.resolvedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$LocalMaintenanceIssuesTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalMaintenanceIssuesTable> {
  $$LocalMaintenanceIssuesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get roomId => $composableBuilder(
      column: $table.roomId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priority => $composableBuilder(
      column: $table.priority, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resolutionNotes => $composableBuilder(
      column: $table.resolutionNotes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get resolvedAt => $composableBuilder(
      column: $table.resolvedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$LocalMaintenanceIssuesTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalMaintenanceIssuesTable> {
  $$LocalMaintenanceIssuesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get roomId =>
      $composableBuilder(column: $table.roomId, builder: (column) => column);

  GeneratedColumn<String> get roomNumber => $composableBuilder(
      column: $table.roomNumber, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get priority =>
      $composableBuilder(column: $table.priority, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get resolutionNotes => $composableBuilder(
      column: $table.resolutionNotes, builder: (column) => column);

  GeneratedColumn<DateTime> get resolvedAt => $composableBuilder(
      column: $table.resolvedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$LocalMaintenanceIssuesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalMaintenanceIssuesTable,
    LocalMaintenanceIssue,
    $$LocalMaintenanceIssuesTableFilterComposer,
    $$LocalMaintenanceIssuesTableOrderingComposer,
    $$LocalMaintenanceIssuesTableAnnotationComposer,
    $$LocalMaintenanceIssuesTableCreateCompanionBuilder,
    $$LocalMaintenanceIssuesTableUpdateCompanionBuilder,
    (
      LocalMaintenanceIssue,
      BaseReferences<_$AppDatabase, $LocalMaintenanceIssuesTable,
          LocalMaintenanceIssue>
    ),
    LocalMaintenanceIssue,
    PrefetchHooks Function()> {
  $$LocalMaintenanceIssuesTableTableManager(
      _$AppDatabase db, $LocalMaintenanceIssuesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalMaintenanceIssuesTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalMaintenanceIssuesTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalMaintenanceIssuesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> roomId = const Value.absent(),
            Value<String?> roomNumber = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> priority = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> resolutionNotes = const Value.absent(),
            Value<DateTime?> resolvedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalMaintenanceIssuesCompanion(
            id: id,
            roomId: roomId,
            roomNumber: roomNumber,
            title: title,
            description: description,
            priority: priority,
            status: status,
            resolutionNotes: resolutionNotes,
            resolvedAt: resolvedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> roomId = const Value.absent(),
            Value<String?> roomNumber = const Value.absent(),
            required String title,
            required String description,
            Value<String> priority = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> resolutionNotes = const Value.absent(),
            Value<DateTime?> resolvedAt = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalMaintenanceIssuesCompanion.insert(
            id: id,
            roomId: roomId,
            roomNumber: roomNumber,
            title: title,
            description: description,
            priority: priority,
            status: status,
            resolutionNotes: resolutionNotes,
            resolvedAt: resolvedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalMaintenanceIssuesTable,
                        LocalMaintenanceIssue>(table),
                    BaseReferences<_$AppDatabase, $LocalMaintenanceIssuesTable,
                        LocalMaintenanceIssue>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalMaintenanceIssuesTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $LocalMaintenanceIssuesTable,
        LocalMaintenanceIssue,
        $$LocalMaintenanceIssuesTableFilterComposer,
        $$LocalMaintenanceIssuesTableOrderingComposer,
        $$LocalMaintenanceIssuesTableAnnotationComposer,
        $$LocalMaintenanceIssuesTableCreateCompanionBuilder,
        $$LocalMaintenanceIssuesTableUpdateCompanionBuilder,
        (
          LocalMaintenanceIssue,
          BaseReferences<_$AppDatabase, $LocalMaintenanceIssuesTable,
              LocalMaintenanceIssue>
        ),
        LocalMaintenanceIssue,
        PrefetchHooks Function()>;
typedef $$LocalSyncMutationsTableCreateCompanionBuilder
    = LocalSyncMutationsCompanion Function({
  required String id,
  required String targetTable,
  required String operation,
  required String recordId,
  required String payloadJson,
  required DateTime createdAt,
  Value<int> retryCount,
  Value<String?> lastError,
  Value<String> status,
  Value<int> rowid,
});
typedef $$LocalSyncMutationsTableUpdateCompanionBuilder
    = LocalSyncMutationsCompanion Function({
  Value<String> id,
  Value<String> targetTable,
  Value<String> operation,
  Value<String> recordId,
  Value<String> payloadJson,
  Value<DateTime> createdAt,
  Value<int> retryCount,
  Value<String?> lastError,
  Value<String> status,
  Value<int> rowid,
});

class $$LocalSyncMutationsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalSyncMutationsTable> {
  $$LocalSyncMutationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetTable => $composableBuilder(
      column: $table.targetTable, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get operation => $composableBuilder(
      column: $table.operation, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get recordId => $composableBuilder(
      column: $table.recordId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get payloadJson => $composableBuilder(
      column: $table.payloadJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastError => $composableBuilder(
      column: $table.lastError, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));
}

class $$LocalSyncMutationsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalSyncMutationsTable> {
  $$LocalSyncMutationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetTable => $composableBuilder(
      column: $table.targetTable, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get operation => $composableBuilder(
      column: $table.operation, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get recordId => $composableBuilder(
      column: $table.recordId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get payloadJson => $composableBuilder(
      column: $table.payloadJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastError => $composableBuilder(
      column: $table.lastError, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));
}

class $$LocalSyncMutationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalSyncMutationsTable> {
  $$LocalSyncMutationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get targetTable => $composableBuilder(
      column: $table.targetTable, builder: (column) => column);

  GeneratedColumn<String> get operation =>
      $composableBuilder(column: $table.operation, builder: (column) => column);

  GeneratedColumn<String> get recordId =>
      $composableBuilder(column: $table.recordId, builder: (column) => column);

  GeneratedColumn<String> get payloadJson => $composableBuilder(
      column: $table.payloadJson, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => column);

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);
}

class $$LocalSyncMutationsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalSyncMutationsTable,
    LocalSyncMutation,
    $$LocalSyncMutationsTableFilterComposer,
    $$LocalSyncMutationsTableOrderingComposer,
    $$LocalSyncMutationsTableAnnotationComposer,
    $$LocalSyncMutationsTableCreateCompanionBuilder,
    $$LocalSyncMutationsTableUpdateCompanionBuilder,
    (
      LocalSyncMutation,
      BaseReferences<_$AppDatabase, $LocalSyncMutationsTable, LocalSyncMutation>
    ),
    LocalSyncMutation,
    PrefetchHooks Function()> {
  $$LocalSyncMutationsTableTableManager(
      _$AppDatabase db, $LocalSyncMutationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalSyncMutationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalSyncMutationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalSyncMutationsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> targetTable = const Value.absent(),
            Value<String> operation = const Value.absent(),
            Value<String> recordId = const Value.absent(),
            Value<String> payloadJson = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> retryCount = const Value.absent(),
            Value<String?> lastError = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSyncMutationsCompanion(
            id: id,
            targetTable: targetTable,
            operation: operation,
            recordId: recordId,
            payloadJson: payloadJson,
            createdAt: createdAt,
            retryCount: retryCount,
            lastError: lastError,
            status: status,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String targetTable,
            required String operation,
            required String recordId,
            required String payloadJson,
            required DateTime createdAt,
            Value<int> retryCount = const Value.absent(),
            Value<String?> lastError = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSyncMutationsCompanion.insert(
            id: id,
            targetTable: targetTable,
            operation: operation,
            recordId: recordId,
            payloadJson: payloadJson,
            createdAt: createdAt,
            retryCount: retryCount,
            lastError: lastError,
            status: status,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$LocalSyncMutationsTable, LocalSyncMutation>(
                        table),
                    BaseReferences<_$AppDatabase, $LocalSyncMutationsTable,
                        LocalSyncMutation>(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalSyncMutationsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalSyncMutationsTable,
    LocalSyncMutation,
    $$LocalSyncMutationsTableFilterComposer,
    $$LocalSyncMutationsTableOrderingComposer,
    $$LocalSyncMutationsTableAnnotationComposer,
    $$LocalSyncMutationsTableCreateCompanionBuilder,
    $$LocalSyncMutationsTableUpdateCompanionBuilder,
    (
      LocalSyncMutation,
      BaseReferences<_$AppDatabase, $LocalSyncMutationsTable, LocalSyncMutation>
    ),
    LocalSyncMutation,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$LocalHotelSettingsTableTableManager get localHotelSettings =>
      $$LocalHotelSettingsTableTableManager(_db, _db.localHotelSettings);
  $$LocalRoomCategoriesTableTableManager get localRoomCategories =>
      $$LocalRoomCategoriesTableTableManager(_db, _db.localRoomCategories);
  $$LocalRoomsTableTableManager get localRooms =>
      $$LocalRoomsTableTableManager(_db, _db.localRooms);
  $$LocalGuestsTableTableManager get localGuests =>
      $$LocalGuestsTableTableManager(_db, _db.localGuests);
  $$LocalReservationsTableTableManager get localReservations =>
      $$LocalReservationsTableTableManager(_db, _db.localReservations);
  $$LocalStaysTableTableManager get localStays =>
      $$LocalStaysTableTableManager(_db, _db.localStays);
  $$LocalInvoicesTableTableManager get localInvoices =>
      $$LocalInvoicesTableTableManager(_db, _db.localInvoices);
  $$LocalPaymentsTableTableManager get localPayments =>
      $$LocalPaymentsTableTableManager(_db, _db.localPayments);
  $$LocalEmployeesTableTableManager get localEmployees =>
      $$LocalEmployeesTableTableManager(_db, _db.localEmployees);
  $$LocalSalaryRecordsTableTableManager get localSalaryRecords =>
      $$LocalSalaryRecordsTableTableManager(_db, _db.localSalaryRecords);
  $$LocalSalaryAdvancesTableTableManager get localSalaryAdvances =>
      $$LocalSalaryAdvancesTableTableManager(_db, _db.localSalaryAdvances);
  $$LocalExpensesTableTableManager get localExpenses =>
      $$LocalExpensesTableTableManager(_db, _db.localExpenses);
  $$LocalHousekeepingTasksTableTableManager get localHousekeepingTasks =>
      $$LocalHousekeepingTasksTableTableManager(
          _db, _db.localHousekeepingTasks);
  $$LocalMaintenanceIssuesTableTableManager get localMaintenanceIssues =>
      $$LocalMaintenanceIssuesTableTableManager(
          _db, _db.localMaintenanceIssues);
  $$LocalSyncMutationsTableTableManager get localSyncMutations =>
      $$LocalSyncMutationsTableTableManager(_db, _db.localSyncMutations);
}
