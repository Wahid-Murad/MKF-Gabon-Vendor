import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @auction_product_ucf.
  ///
  /// In en, this message translates to:
  /// **'Produits mis aux enchères'**
  String get auction_product_ucf;

  /// No description provided for @auction_order_ucf.
  ///
  /// In en, this message translates to:
  /// **'Commandes d\'enchères'**
  String get auction_order_ucf;

  /// No description provided for @auction_product_update_ucf.
  ///
  /// In en, this message translates to:
  /// **'Modifier le produit d\'enchère'**
  String get auction_product_update_ucf;

  /// No description provided for @auction_start_date_ucf.
  ///
  /// In en, this message translates to:
  /// **'Date de début'**
  String get auction_start_date_ucf;

  /// No description provided for @auction_end_date_ucf.
  ///
  /// In en, this message translates to:
  /// **'Date de fin'**
  String get auction_end_date_ucf;

  /// No description provided for @auction_total_bids_ucf.
  ///
  /// In en, this message translates to:
  /// **'Total des enchères'**
  String get auction_total_bids_ucf;

  /// No description provided for @auction_price_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix'**
  String get auction_price_ucf;

  /// No description provided for @auction_view_bids_ucf.
  ///
  /// In en, this message translates to:
  /// **'Afficher toutes les enchères'**
  String get auction_view_bids_ucf;

  /// No description provided for @auction_all_bids_ucf.
  ///
  /// In en, this message translates to:
  /// **'Toutes les enchères'**
  String get auction_all_bids_ucf;

  /// No description provided for @auction_biding_price_date_range_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix de l\'offre du produit + plage de dates'**
  String get auction_biding_price_date_range_ucf;

  /// No description provided for @auction_starting_bid_price_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix de départ de l\'enchère'**
  String get auction_starting_bid_price_ucf;

  /// No description provided for @auction_date_range_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plage de dates d\'enchères'**
  String get auction_date_range_ucf;

  /// No description provided for @auction_product_screen_title.
  ///
  /// In en, this message translates to:
  /// **'Produit mis aux enchères'**
  String get auction_product_screen_title;

  /// No description provided for @auction_will_end.
  ///
  /// In en, this message translates to:
  /// **'L\'enchère se terminera'**
  String get auction_will_end;

  /// No description provided for @starting_bid_ucf.
  ///
  /// In en, this message translates to:
  /// **'Offre de départ'**
  String get starting_bid_ucf;

  /// No description provided for @highest_bid_ucf.
  ///
  /// In en, this message translates to:
  /// **'Enchère la plus élevée'**
  String get highest_bid_ucf;

  /// No description provided for @place_bid_ucf.
  ///
  /// In en, this message translates to:
  /// **'Placer une enchère'**
  String get place_bid_ucf;

  /// No description provided for @change_bid_ucf.
  ///
  /// In en, this message translates to:
  /// **'Modifier l\'enchère'**
  String get change_bid_ucf;

  /// No description provided for @are_you_sure_to_mark_this_as_delivered.
  ///
  /// In en, this message translates to:
  /// **'Etes-vous sûr de marquer ceci comme livré ?'**
  String get are_you_sure_to_mark_this_as_delivered;

  /// No description provided for @are_you_sure_to_mark_this_as_picked_up.
  ///
  /// In en, this message translates to:
  /// **'Etes-vous sûr de marquer ceci comme récupéré ?'**
  String get are_you_sure_to_mark_this_as_picked_up;

  /// No description provided for @are_you_sure_to_request_cancellation.
  ///
  /// In en, this message translates to:
  /// **'Etes-vous sûr de demander l\'annulation ?'**
  String get are_you_sure_to_request_cancellation;

  /// No description provided for @enter_address_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrez l\'adresse'**
  String get enter_address_ucf;

  /// No description provided for @back_to_shipping_info.
  ///
  /// In en, this message translates to:
  /// **'Retour aux informations d\'expédition'**
  String get back_to_shipping_info;

  /// No description provided for @select_a_city.
  ///
  /// In en, this message translates to:
  /// **'Sélectionnez une ville'**
  String get select_a_city;

  /// No description provided for @select_a_state.
  ///
  /// In en, this message translates to:
  /// **'Sélectionnez un état'**
  String get select_a_state;

  /// No description provided for @select_a_country.
  ///
  /// In en, this message translates to:
  /// **'Sélectionnez un pays'**
  String get select_a_country;

  /// No description provided for @address_ucf.
  ///
  /// In en, this message translates to:
  /// **'Adresse'**
  String get address_ucf;

  /// No description provided for @city_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ville'**
  String get city_ucf;

  /// No description provided for @enter_city_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrez la ville'**
  String get enter_city_ucf;

  /// No description provided for @postal_code_ucf.
  ///
  /// In en, this message translates to:
  /// **'Code postal'**
  String get postal_code_ucf;

  /// No description provided for @enter_postal_code_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrez le code postal'**
  String get enter_postal_code_ucf;

  /// No description provided for @country_ucf.
  ///
  /// In en, this message translates to:
  /// **'Pays'**
  String get country_ucf;

  /// No description provided for @enter_country_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrez le pays'**
  String get enter_country_ucf;

  /// No description provided for @state_ucf.
  ///
  /// In en, this message translates to:
  /// **'État'**
  String get state_ucf;

  /// No description provided for @enter_state_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrer l\'état'**
  String get enter_state_ucf;

  /// No description provided for @phone_ucf.
  ///
  /// In en, this message translates to:
  /// **'Téléphone'**
  String get phone_ucf;

  /// No description provided for @enter_phone_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrer le téléphone'**
  String get enter_phone_ucf;

  /// No description provided for @are_you_sure_to_remove_this_address.
  ///
  /// In en, this message translates to:
  /// **'Etes-vous sûr de supprimer cette adresse ?'**
  String get are_you_sure_to_remove_this_address;

  /// No description provided for @addresses_of_user.
  ///
  /// In en, this message translates to:
  /// **'Adresses de l\'utilisateur'**
  String get addresses_of_user;

  /// No description provided for @double_tap_on_an_address_to_make_it_default.
  ///
  /// In en, this message translates to:
  /// **'Appuyez deux fois sur une adresse pour la définir par défaut'**
  String get double_tap_on_an_address_to_make_it_default;

  /// No description provided for @no_country_available.
  ///
  /// In en, this message translates to:
  /// **'Aucun pays disponible'**
  String get no_country_available;

  /// No description provided for @no_state_available.
  ///
  /// In en, this message translates to:
  /// **'Aucun état disponible'**
  String get no_state_available;

  /// No description provided for @no_city_available.
  ///
  /// In en, this message translates to:
  /// **'Aucune ville disponible'**
  String get no_city_available;

  /// No description provided for @loading_countries_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement des pays...'**
  String get loading_countries_ucf;

  /// No description provided for @loading_states_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement des états...'**
  String get loading_states_ucf;

  /// No description provided for @loading_cities_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement des villes...'**
  String get loading_cities_ucf;

  /// No description provided for @select_a_country_first.
  ///
  /// In en, this message translates to:
  /// **'Sélectionnez d\'abord un pays'**
  String get select_a_country_first;

  /// No description provided for @select_a_state_first.
  ///
  /// In en, this message translates to:
  /// **'Sélectionnez d\'abord un état'**
  String get select_a_state_first;

  /// No description provided for @edit_ucf.
  ///
  /// In en, this message translates to:
  /// **'Modifier'**
  String get edit_ucf;

  /// No description provided for @delete_ucf.
  ///
  /// In en, this message translates to:
  /// **'Supprimer'**
  String get delete_ucf;

  /// No description provided for @add_location_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ajouter un emplacement'**
  String get add_location_ucf;

  /// No description provided for @assigned.
  ///
  /// In en, this message translates to:
  /// **'Attribué'**
  String get assigned;

  /// No description provided for @amount_to_Collect_ucf.
  ///
  /// In en, this message translates to:
  /// **'Montant à collecter'**
  String get amount_to_Collect_ucf;

  /// No description provided for @account_delete_ucf.
  ///
  /// In en, this message translates to:
  /// **'Compte supprimé'**
  String get account_delete_ucf;

  /// No description provided for @fetching_bkash_url.
  ///
  /// In en, this message translates to:
  /// **'Récupération de l\'url bkash...'**
  String get fetching_bkash_url;

  /// No description provided for @pay_with_bkash.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Bkash'**
  String get pay_with_bkash;

  /// No description provided for @pay_with_instamojo.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Instamojo'**
  String get pay_with_instamojo;

  /// No description provided for @search_product_of_brand.
  ///
  /// In en, this message translates to:
  /// **'Rechercher les produits de la marque'**
  String get search_product_of_brand;

  /// No description provided for @do_you_want_to_delete_it.
  ///
  /// In en, this message translates to:
  /// **'Voulez-vous le supprimer ?'**
  String get do_you_want_to_delete_it;

  /// No description provided for @you_need_to_log_in.
  ///
  /// In en, this message translates to:
  /// **'Vous devez vous connecter'**
  String get you_need_to_log_in;

  /// No description provided for @please_choose_valid_info.
  ///
  /// In en, this message translates to:
  /// **'Veuillez choisir des informations valides'**
  String get please_choose_valid_info;

  /// No description provided for @nothing_to_pay.
  ///
  /// In en, this message translates to:
  /// **'Rien à payer'**
  String get nothing_to_pay;

  /// No description provided for @see_details_all_lower.
  ///
  /// In en, this message translates to:
  /// **'voir les détails'**
  String get see_details_all_lower;

  /// No description provided for @no_payment_method_is_added.
  ///
  /// In en, this message translates to:
  /// **'Aucun moyen de paiement n\'est ajouté'**
  String get no_payment_method_is_added;

  /// No description provided for @please_choose_one_option_to_pay.
  ///
  /// In en, this message translates to:
  /// **'Veuillez choisir une option pour payer'**
  String get please_choose_one_option_to_pay;

  /// No description provided for @no_data_is_available.
  ///
  /// In en, this message translates to:
  /// **'Aucune donnée n\'est disponible'**
  String get no_data_is_available;

  /// No description provided for @no_address_is_added.
  ///
  /// In en, this message translates to:
  /// **'Aucune adresse n\'est ajoutée'**
  String get no_address_is_added;

  /// No description provided for @add_new_address.
  ///
  /// In en, this message translates to:
  /// **'Ajouter une nouvelle adresse.'**
  String get add_new_address;

  /// No description provided for @loading_more_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement de plus de produits...'**
  String get loading_more_products_ucf;

  /// No description provided for @no_more_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus de produits'**
  String get no_more_products_ucf;

  /// No description provided for @no_more_queries_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus de requêtes'**
  String get no_more_queries_ucf;

  /// No description provided for @no_queries_found_ucf.
  ///
  /// In en, this message translates to:
  /// **'Aucune requête trouvée'**
  String get no_queries_found_ucf;

  /// No description provided for @no_product_is_available.
  ///
  /// In en, this message translates to:
  /// **'Aucun produit n\'est disponible'**
  String get no_product_is_available;

  /// No description provided for @loading_more_brands_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement de plus de marques...'**
  String get loading_more_brands_ucf;

  /// No description provided for @no_more_brands_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus de marques'**
  String get no_more_brands_ucf;

  /// No description provided for @no_brand_is_available.
  ///
  /// In en, this message translates to:
  /// **'Aucune marque n\'est disponible'**
  String get no_brand_is_available;

  /// No description provided for @loading_more_items_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement de plus d\'éléments...'**
  String get loading_more_items_ucf;

  /// No description provided for @no_more_items_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus d\'objets'**
  String get no_more_items_ucf;

  /// No description provided for @no_item_is_available.
  ///
  /// In en, this message translates to:
  /// **'Aucun article n\'est disponible'**
  String get no_item_is_available;

  /// No description provided for @loading_more_shops_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement de plus de boutiques...'**
  String get loading_more_shops_ucf;

  /// No description provided for @no_more_shops_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus de magasins'**
  String get no_more_shops_ucf;

  /// No description provided for @no_shop_is_available.
  ///
  /// In en, this message translates to:
  /// **'Aucune boutique n\'est disponible'**
  String get no_shop_is_available;

  /// No description provided for @loading_more_histories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement de plus d\'historiques...'**
  String get loading_more_histories_ucf;

  /// No description provided for @no_more_histories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus d\'historiques'**
  String get no_more_histories_ucf;

  /// No description provided for @no_history_is_available.
  ///
  /// In en, this message translates to:
  /// **'Aucun historique n\'est disponible'**
  String get no_history_is_available;

  /// No description provided for @loading_more_categories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement de plus de catégories...'**
  String get loading_more_categories_ucf;

  /// No description provided for @no_more_categories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus de catégories'**
  String get no_more_categories_ucf;

  /// No description provided for @no_category_is_available.
  ///
  /// In en, this message translates to:
  /// **'Aucune catégorie n\'est disponible'**
  String get no_category_is_available;

  /// No description provided for @coming_soon.
  ///
  /// In en, this message translates to:
  /// **'Bientôt disponible'**
  String get coming_soon;

  /// No description provided for @close_all_capital.
  ///
  /// In en, this message translates to:
  /// **'FERMER'**
  String get close_all_capital;

  /// No description provided for @close_all_lower.
  ///
  /// In en, this message translates to:
  /// **'fermer'**
  String get close_all_lower;

  /// No description provided for @close_ucf.
  ///
  /// In en, this message translates to:
  /// **'Fermer'**
  String get close_ucf;

  /// No description provided for @cancel_all_capital.
  ///
  /// In en, this message translates to:
  /// **'ANNULER'**
  String get cancel_all_capital;

  /// No description provided for @cancel_all_lower.
  ///
  /// In en, this message translates to:
  /// **'annuler'**
  String get cancel_all_lower;

  /// No description provided for @cancel_ucf.
  ///
  /// In en, this message translates to:
  /// **'Annuler'**
  String get cancel_ucf;

  /// No description provided for @confirm_all_capital.
  ///
  /// In en, this message translates to:
  /// **'CONFIRMER'**
  String get confirm_all_capital;

  /// No description provided for @confirm_all_lower.
  ///
  /// In en, this message translates to:
  /// **'confirmer'**
  String get confirm_all_lower;

  /// No description provided for @confirm_ucf.
  ///
  /// In en, this message translates to:
  /// **'Confirmer'**
  String get confirm_ucf;

  /// No description provided for @update_all_capital.
  ///
  /// In en, this message translates to:
  /// **'MISE À JOUR'**
  String get update_all_capital;

  /// No description provided for @update_all_lower.
  ///
  /// In en, this message translates to:
  /// **'mise à jour'**
  String get update_all_lower;

  /// No description provided for @update_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mise à jour'**
  String get update_ucf;

  /// No description provided for @send_all_capital.
  ///
  /// In en, this message translates to:
  /// **'ENVOYER'**
  String get send_all_capital;

  /// No description provided for @send_all_lower.
  ///
  /// In en, this message translates to:
  /// **'envoyer'**
  String get send_all_lower;

  /// No description provided for @send_ucf.
  ///
  /// In en, this message translates to:
  /// **'Envoyer'**
  String get send_ucf;

  /// No description provided for @clear_all_capital.
  ///
  /// In en, this message translates to:
  /// **'CLEAR'**
  String get clear_all_capital;

  /// No description provided for @clear_all_lower.
  ///
  /// In en, this message translates to:
  /// **'effacer'**
  String get clear_all_lower;

  /// No description provided for @clear_ucf.
  ///
  /// In en, this message translates to:
  /// **'Effacer'**
  String get clear_ucf;

  /// No description provided for @apply_all_capital.
  ///
  /// In en, this message translates to:
  /// **'APPLIQUER'**
  String get apply_all_capital;

  /// No description provided for @apply_all_lower.
  ///
  /// In en, this message translates to:
  /// **'appliquer'**
  String get apply_all_lower;

  /// No description provided for @apply_ucf.
  ///
  /// In en, this message translates to:
  /// **'Appliquer'**
  String get apply_ucf;

  /// No description provided for @add_all_capital.
  ///
  /// In en, this message translates to:
  /// **'AJOUTER'**
  String get add_all_capital;

  /// No description provided for @add_all_lower.
  ///
  /// In en, this message translates to:
  /// **'ajouter'**
  String get add_all_lower;

  /// No description provided for @add_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ajouter'**
  String get add_ucf;

  /// No description provided for @copied_ucf.
  ///
  /// In en, this message translates to:
  /// **'Copié'**
  String get copied_ucf;

  /// No description provided for @proceed_ucf.
  ///
  /// In en, this message translates to:
  /// **'Procéder'**
  String get proceed_ucf;

  /// No description provided for @proceed_all_caps.
  ///
  /// In en, this message translates to:
  /// **'PROCÉDER'**
  String get proceed_all_caps;

  /// No description provided for @submit_ucf.
  ///
  /// In en, this message translates to:
  /// **'Soumettre'**
  String get submit_ucf;

  /// No description provided for @view_more_ucf.
  ///
  /// In en, this message translates to:
  /// **'Voir plus'**
  String get view_more_ucf;

  /// No description provided for @show_less_ucf.
  ///
  /// In en, this message translates to:
  /// **'Afficher moins'**
  String get show_less_ucf;

  /// No description provided for @selected_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sélectionné'**
  String get selected_ucf;

  /// No description provided for @creating_order.
  ///
  /// In en, this message translates to:
  /// **'Création d\'une commande...'**
  String get creating_order;

  /// No description provided for @payment_cancelled_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paiement annulé'**
  String get payment_cancelled_ucf;

  /// No description provided for @photo_permission_ucf.
  ///
  /// In en, this message translates to:
  /// **'Autorisation de photo'**
  String get photo_permission_ucf;

  /// No description provided for @this_app_needs_permission.
  ///
  /// In en, this message translates to:
  /// **'Cette application a besoin d\'une autorisation'**
  String get this_app_needs_permission;

  /// No description provided for @deny_ucf.
  ///
  /// In en, this message translates to:
  /// **'Refuser'**
  String get deny_ucf;

  /// No description provided for @settings_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paramètres'**
  String get settings_ucf;

  /// No description provided for @go_to_your_application_settings_and_give_photo_permission.
  ///
  /// In en, this message translates to:
  /// **'Allez dans les paramètres de votre application et autorisez la photo'**
  String get go_to_your_application_settings_and_give_photo_permission;

  /// No description provided for @no_file_is_chosen.
  ///
  /// In en, this message translates to:
  /// **'Aucun fichier n\'est choisi'**
  String get no_file_is_chosen;

  /// No description provided for @yes_ucf.
  ///
  /// In en, this message translates to:
  /// **'Oui'**
  String get yes_ucf;

  /// No description provided for @no_ucf.
  ///
  /// In en, this message translates to:
  /// **'Non'**
  String get no_ucf;

  /// No description provided for @date_ucf.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date_ucf;

  /// No description provided for @follow_ucf.
  ///
  /// In en, this message translates to:
  /// **'Suivre'**
  String get follow_ucf;

  /// No description provided for @followed_ucf.
  ///
  /// In en, this message translates to:
  /// **'Suivi'**
  String get followed_ucf;

  /// No description provided for @unfollow_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ne plus suivre ce vendeur'**
  String get unfollow_ucf;

  /// No description provided for @continue_ucf.
  ///
  /// In en, this message translates to:
  /// **'Continuer'**
  String get continue_ucf;

  /// No description provided for @day_ucf.
  ///
  /// In en, this message translates to:
  /// **'Jour'**
  String get day_ucf;

  /// No description provided for @days_ucf.
  ///
  /// In en, this message translates to:
  /// **'Jours'**
  String get days_ucf;

  /// No description provided for @network_error.
  ///
  /// In en, this message translates to:
  /// **'Quelque chose s\'est mal passé. Erreur réseau'**
  String get network_error;

  /// No description provided for @get_locations.
  ///
  /// In en, this message translates to:
  /// **'Obtenir les emplacements'**
  String get get_locations;

  /// No description provided for @get_direction_ucf.
  ///
  /// In en, this message translates to:
  /// **'Obtenir la direction'**
  String get get_direction_ucf;

  /// No description provided for @digital_product_screen_.
  ///
  /// In en, this message translates to:
  /// **'Produit numérique'**
  String get digital_product_screen_;

  /// No description provided for @digital_product_ucf.
  ///
  /// In en, this message translates to:
  /// **'Produits numériques'**
  String get digital_product_ucf;

  /// No description provided for @dashboard_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tableau de bord'**
  String get dashboard_ucf;

  /// No description provided for @earnings_ucf.
  ///
  /// In en, this message translates to:
  /// **'Gains'**
  String get earnings_ucf;

  /// No description provided for @not_logged_in_ucf.
  ///
  /// In en, this message translates to:
  /// **'Non connecté'**
  String get not_logged_in_ucf;

  /// No description provided for @change_language_ucf.
  ///
  /// In en, this message translates to:
  /// **'Changer de langue'**
  String get change_language_ucf;

  /// No description provided for @home_ucf.
  ///
  /// In en, this message translates to:
  /// **'Accueil'**
  String get home_ucf;

  /// No description provided for @profile_ucf.
  ///
  /// In en, this message translates to:
  /// **'Profil'**
  String get profile_ucf;

  /// No description provided for @orders_ucf.
  ///
  /// In en, this message translates to:
  /// **'Commandes'**
  String get orders_ucf;

  /// No description provided for @my_wishlist_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ma liste de souhaits'**
  String get my_wishlist_ucf;

  /// No description provided for @messages_ucf.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages_ucf;

  /// No description provided for @wallet_ucf.
  ///
  /// In en, this message translates to:
  /// **'Portefeuille'**
  String get wallet_ucf;

  /// No description provided for @login_ucf.
  ///
  /// In en, this message translates to:
  /// **'Connexion'**
  String get login_ucf;

  /// No description provided for @logout_ucf.
  ///
  /// In en, this message translates to:
  /// **'Déconnexion'**
  String get logout_ucf;

  /// No description provided for @mark_as_picked.
  ///
  /// In en, this message translates to:
  /// **'Marquer comme sélectionné'**
  String get mark_as_picked;

  /// No description provided for @my_delivery_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ma livraison'**
  String get my_delivery_ucf;

  /// No description provided for @my_earnings_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mes gains'**
  String get my_earnings_ucf;

  /// No description provided for @my_collection_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ma collection'**
  String get my_collection_ucf;

  /// No description provided for @do_you_want_close_the_app.
  ///
  /// In en, this message translates to:
  /// **'Voulez-vous fermer l\'application ?'**
  String get do_you_want_close_the_app;

  /// No description provided for @top_categories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Meilleures catégories'**
  String get top_categories_ucf;

  /// No description provided for @brands_ucf.
  ///
  /// In en, this message translates to:
  /// **'Marques'**
  String get brands_ucf;

  /// No description provided for @top_sellers_ucf.
  ///
  /// In en, this message translates to:
  /// **'Meilleures ventes'**
  String get top_sellers_ucf;

  /// No description provided for @todays_deal_ucf.
  ///
  /// In en, this message translates to:
  /// **'Offre du jour'**
  String get todays_deal_ucf;

  /// No description provided for @flash_deal_ucf.
  ///
  /// In en, this message translates to:
  /// **'Offre Flash'**
  String get flash_deal_ucf;

  /// No description provided for @featured_categories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Catégories en vedette'**
  String get featured_categories_ucf;

  /// No description provided for @featured_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Produits en vedette'**
  String get featured_products_ucf;

  /// No description provided for @all_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tous les produits'**
  String get all_products_ucf;

  /// No description provided for @search_anything.
  ///
  /// In en, this message translates to:
  /// **'Rechercher n\'importe quoi...'**
  String get search_anything;

  /// No description provided for @no_carousel_image_found.
  ///
  /// In en, this message translates to:
  /// **'Aucune image de carrousel trouvée'**
  String get no_carousel_image_found;

  /// No description provided for @no_category_found.
  ///
  /// In en, this message translates to:
  /// **'Aucune catégorie trouvée'**
  String get no_category_found;

  /// No description provided for @categories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Catégories'**
  String get categories_ucf;

  /// No description provided for @view_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Afficher les produits'**
  String get view_products_ucf;

  /// No description provided for @view_subcategories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Afficher les sous-catégories'**
  String get view_subcategories_ucf;

  /// No description provided for @no_subcategories_available.
  ///
  /// In en, this message translates to:
  /// **'Aucune sous-catégories disponible'**
  String get no_subcategories_available;

  /// No description provided for @all_products_of_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tous les produits de'**
  String get all_products_of_ucf;

  /// No description provided for @cannot_order_more_than.
  ///
  /// In en, this message translates to:
  /// **'Impossible de commander plus de'**
  String get cannot_order_more_than;

  /// No description provided for @items_of_this_all_lower.
  ///
  /// In en, this message translates to:
  /// **'élément(s) de ceci'**
  String get items_of_this_all_lower;

  /// No description provided for @are_you_sure_to_remove_this_item.
  ///
  /// In en, this message translates to:
  /// **'Etes-vous sûr de supprimer cet élément ?'**
  String get are_you_sure_to_remove_this_item;

  /// No description provided for @cart_is_empty.
  ///
  /// In en, this message translates to:
  /// **'Le panier est vide'**
  String get cart_is_empty;

  /// No description provided for @total_amount_ucf.
  ///
  /// In en, this message translates to:
  /// **'Montant total'**
  String get total_amount_ucf;

  /// No description provided for @update_cart_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mettre à jour le panier'**
  String get update_cart_ucf;

  /// No description provided for @proceed_to_shipping_ucf.
  ///
  /// In en, this message translates to:
  /// **'Procéder à l\'expédition'**
  String get proceed_to_shipping_ucf;

  /// No description provided for @shopping_cart_ucf.
  ///
  /// In en, this message translates to:
  /// **'Panier'**
  String get shopping_cart_ucf;

  /// No description provided for @please_log_in_to_see_the_cart_items.
  ///
  /// In en, this message translates to:
  /// **'Veuillez vous connecter pour voir les articles du panier'**
  String get please_log_in_to_see_the_cart_items;

  /// No description provided for @cancel_request_is_already_send.
  ///
  /// In en, this message translates to:
  /// **'La demande d\'annulation est déjà envoyée'**
  String get cancel_request_is_already_send;

  /// No description provided for @classified_ads_ucf.
  ///
  /// In en, this message translates to:
  /// **'Petites annonces'**
  String get classified_ads_ucf;

  /// No description provided for @currency_change_ucf.
  ///
  /// In en, this message translates to:
  /// **'Changer de devise'**
  String get currency_change_ucf;

  /// No description provided for @collection_ucf.
  ///
  /// In en, this message translates to:
  /// **'Collection'**
  String get collection_ucf;

  /// No description provided for @load_more_ucf.
  ///
  /// In en, this message translates to:
  /// **'Charger plus'**
  String get load_more_ucf;

  /// No description provided for @type_your_message_here.
  ///
  /// In en, this message translates to:
  /// **'Tapez votre message ici...'**
  String get type_your_message_here;

  /// No description provided for @enter_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Entrez le code promo'**
  String get enter_coupon_code;

  /// No description provided for @subtotal_all_capital.
  ///
  /// In en, this message translates to:
  /// **'SOUS TOTAL'**
  String get subtotal_all_capital;

  /// No description provided for @tax_all_capital.
  ///
  /// In en, this message translates to:
  /// **'IMPÔT'**
  String get tax_all_capital;

  /// No description provided for @shipping_cost_all_capital.
  ///
  /// In en, this message translates to:
  /// **'FRAIS DE LIVRAISON'**
  String get shipping_cost_all_capital;

  /// No description provided for @discount_all_capital.
  ///
  /// In en, this message translates to:
  /// **'REMISE'**
  String get discount_all_capital;

  /// No description provided for @grand_total_all_capital.
  ///
  /// In en, this message translates to:
  /// **'GRAND TOTAL'**
  String get grand_total_all_capital;

  /// No description provided for @coupon_code_ucf.
  ///
  /// In en, this message translates to:
  /// **'Code promo'**
  String get coupon_code_ucf;

  /// No description provided for @apply_coupon_all_capital.
  ///
  /// In en, this message translates to:
  /// **'APPLIQUER LE COUPON'**
  String get apply_coupon_all_capital;

  /// No description provided for @place_my_order_all_capital.
  ///
  /// In en, this message translates to:
  /// **'PASSER MA COMMANDE'**
  String get place_my_order_all_capital;

  /// No description provided for @buy_package_ucf.
  ///
  /// In en, this message translates to:
  /// **'Acheter le package'**
  String get buy_package_ucf;

  /// No description provided for @remove_ucf.
  ///
  /// In en, this message translates to:
  /// **'Supprimer'**
  String get remove_ucf;

  /// No description provided for @checkout_ucf.
  ///
  /// In en, this message translates to:
  /// **'Commander'**
  String get checkout_ucf;

  /// No description provided for @cancelled_delivery_ucf.
  ///
  /// In en, this message translates to:
  /// **'Livraison annulée'**
  String get cancelled_delivery_ucf;

  /// No description provided for @completed_delivery_ucf.
  ///
  /// In en, this message translates to:
  /// **'Livraison terminée'**
  String get completed_delivery_ucf;

  /// No description provided for @search_products_from.
  ///
  /// In en, this message translates to:
  /// **'Rechercher des produits depuis'**
  String get search_products_from;

  /// No description provided for @no_language_is_added.
  ///
  /// In en, this message translates to:
  /// **'Aucune langue n\'est ajoutée'**
  String get no_language_is_added;

  /// No description provided for @points_converted_to_wallet.
  ///
  /// In en, this message translates to:
  /// **'Points convertis en portefeuille'**
  String get points_converted_to_wallet;

  /// No description provided for @show_wallet_all_capital.
  ///
  /// In en, this message translates to:
  /// **'AFFICHER LE PORTEFEUILLE'**
  String get show_wallet_all_capital;

  /// No description provided for @earned_points_ucf.
  ///
  /// In en, this message translates to:
  /// **'Points gagnés'**
  String get earned_points_ucf;

  /// No description provided for @converted_ucf.
  ///
  /// In en, this message translates to:
  /// **'Converti '**
  String get converted_ucf;

  /// No description provided for @done_all_capital.
  ///
  /// In en, this message translates to:
  /// **'TERMINÉ'**
  String get done_all_capital;

  /// No description provided for @convert_now_ucf.
  ///
  /// In en, this message translates to:
  /// **'Convertir maintenant'**
  String get convert_now_ucf;

  /// No description provided for @my_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mes produits'**
  String get my_products_ucf;

  /// No description provided for @current_package_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paquet actuel'**
  String get current_package_ucf;

  /// No description provided for @upgrade_package_ucf.
  ///
  /// In en, this message translates to:
  /// **'Package de mise à niveau'**
  String get upgrade_package_ucf;

  /// No description provided for @add_new_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ajouter de nouveaux produits'**
  String get add_new_products_ucf;

  /// No description provided for @please_turn_on_your_internet_connection.
  ///
  /// In en, this message translates to:
  /// **'Veuillez activer votre connexion Internet'**
  String get please_turn_on_your_internet_connection;

  /// No description provided for @please_log_in_to_see_the_profile.
  ///
  /// In en, this message translates to:
  /// **'Veuillez vous connecter pour voir le profil'**
  String get please_log_in_to_see_the_profile;

  /// No description provided for @notification_ucf.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notification_ucf;

  /// No description provided for @purchase_history_ucf.
  ///
  /// In en, this message translates to:
  /// **'Historique des achats'**
  String get purchase_history_ucf;

  /// No description provided for @earning_points_history_ucf.
  ///
  /// In en, this message translates to:
  /// **'Historique des points gagnés'**
  String get earning_points_history_ucf;

  /// No description provided for @refund_requests_ucf.
  ///
  /// In en, this message translates to:
  /// **'Demandes de remboursement'**
  String get refund_requests_ucf;

  /// No description provided for @in_your_cart_all_lower.
  ///
  /// In en, this message translates to:
  /// **'dans votre panier'**
  String get in_your_cart_all_lower;

  /// No description provided for @in_your_wishlist_all_lower.
  ///
  /// In en, this message translates to:
  /// **'dans votre liste de souhaits'**
  String get in_your_wishlist_all_lower;

  /// No description provided for @your_ordered_all_lower.
  ///
  /// In en, this message translates to:
  /// **'vous avez commandé'**
  String get your_ordered_all_lower;

  /// No description provided for @langue_ucf.
  ///
  /// In en, this message translates to:
  /// **'Langue'**
  String get langue_ucf;

  /// No description provided for @currency_ucf.
  ///
  /// In en, this message translates to:
  /// **'Devise'**
  String get currency_ucf;

  /// No description provided for @my_orders_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mes commandes'**
  String get my_orders_ucf;

  /// No description provided for @downloads_ucf.
  ///
  /// In en, this message translates to:
  /// **'Téléchargements'**
  String get downloads_ucf;

  /// No description provided for @coupons_ucf.
  ///
  /// In en, this message translates to:
  /// **'Coupons'**
  String get coupons_ucf;

  /// No description provided for @favorite_seller_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vendeur préféré'**
  String get favorite_seller_ucf;

  /// No description provided for @all_digital_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tous les produits numériques'**
  String get all_digital_products_ucf;

  /// No description provided for @on_auction_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sur les produits vendus aux enchères'**
  String get on_auction_products_ucf;

  /// No description provided for @wholesale_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Produits en gros'**
  String get wholesale_products_ucf;

  /// No description provided for @browse_all_sellers_ucf.
  ///
  /// In en, this message translates to:
  /// **'Parcourir tous les vendeurs'**
  String get browse_all_sellers_ucf;

  /// No description provided for @delete_my_account.
  ///
  /// In en, this message translates to:
  /// **'Supprimer mon compte'**
  String get delete_my_account;

  /// No description provided for @delete_account_warning_title.
  ///
  /// In en, this message translates to:
  /// **'Voulez-vous supprimer votre compte de notre système ?'**
  String get delete_account_warning_title;

  /// No description provided for @delete_account_warning_description.
  ///
  /// In en, this message translates to:
  /// **'Une fois votre compte supprimé de notre système, vous perdrez votre solde et d\'autres informations de notre système.'**
  String get delete_account_warning_description;

  /// No description provided for @blogs_ucf.
  ///
  /// In en, this message translates to:
  /// **'Blogs'**
  String get blogs_ucf;

  /// No description provided for @check_balance_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vérifier le solde'**
  String get check_balance_ucf;

  /// No description provided for @account_ucf.
  ///
  /// In en, this message translates to:
  /// **'Compte'**
  String get account_ucf;

  /// No description provided for @auction_ucf.
  ///
  /// In en, this message translates to:
  /// **'Enchères'**
  String get auction_ucf;

  /// No description provided for @classified_products.
  ///
  /// In en, this message translates to:
  /// **'Produits classés'**
  String get classified_products;

  /// No description provided for @packages_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paquets'**
  String get packages_ucf;

  /// No description provided for @upload_limit_ucf.
  ///
  /// In en, this message translates to:
  /// **'Limite de téléchargement'**
  String get upload_limit_ucf;

  /// No description provided for @pending_delivery_ucf.
  ///
  /// In en, this message translates to:
  /// **'Livraison en attente'**
  String get pending_delivery_ucf;

  /// No description provided for @flash_deal_has_ended.
  ///
  /// In en, this message translates to:
  /// **'L\'offre Flash est terminée'**
  String get flash_deal_has_ended;

  /// No description provided for @ended_ucf.
  ///
  /// In en, this message translates to:
  /// **'Terminé'**
  String get ended_ucf;

  /// No description provided for @flash_deals_ucf.
  ///
  /// In en, this message translates to:
  /// **'Offres Flash'**
  String get flash_deals_ucf;

  /// No description provided for @top_seller_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Produits les plus vendus'**
  String get top_seller_products_ucf;

  /// No description provided for @product_ucf.
  ///
  /// In en, this message translates to:
  /// **'Produit'**
  String get product_ucf;

  /// No description provided for @products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Produits'**
  String get products_ucf;

  /// No description provided for @sellers_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vendeurs'**
  String get sellers_ucf;

  /// No description provided for @you_can_use_filters_while_searching_for_products.
  ///
  /// In en, this message translates to:
  /// **'Vous pouvez utiliser des filtres lors de la recherche de produits.'**
  String get you_can_use_filters_while_searching_for_products;

  /// No description provided for @filter_ucf.
  ///
  /// In en, this message translates to:
  /// **'Filtre'**
  String get filter_ucf;

  /// No description provided for @sort_products_by_ucf.
  ///
  /// In en, this message translates to:
  /// **'Trier les produits par'**
  String get sort_products_by_ucf;

  /// No description provided for @price_high_to_low.
  ///
  /// In en, this message translates to:
  /// **'Prix élevé à bas'**
  String get price_high_to_low;

  /// No description provided for @price_low_to_high.
  ///
  /// In en, this message translates to:
  /// **'Prix bas à haut'**
  String get price_low_to_high;

  /// No description provided for @new_arrival_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nouvelle arrivée'**
  String get new_arrival_ucf;

  /// No description provided for @popularity_ucf.
  ///
  /// In en, this message translates to:
  /// **'Popularité'**
  String get popularity_ucf;

  /// No description provided for @top_rated_ucf.
  ///
  /// In en, this message translates to:
  /// **'Les mieux notés'**
  String get top_rated_ucf;

  /// No description provided for @maximum_ucf.
  ///
  /// In en, this message translates to:
  /// **'Maximum'**
  String get maximum_ucf;

  /// No description provided for @minimum_ucf.
  ///
  /// In en, this message translates to:
  /// **'Minimum'**
  String get minimum_ucf;

  /// No description provided for @price_range_ucf.
  ///
  /// In en, this message translates to:
  /// **'Gamme de prix'**
  String get price_range_ucf;

  /// No description provided for @search_here_ucf.
  ///
  /// In en, this message translates to:
  /// **'Rechercher ici ?'**
  String get search_here_ucf;

  /// No description provided for @no_suggestion_available.
  ///
  /// In en, this message translates to:
  /// **'Aucune suggestion n\'est disponible'**
  String get no_suggestion_available;

  /// No description provided for @searched_for_all_lower.
  ///
  /// In en, this message translates to:
  /// **'recherché'**
  String get searched_for_all_lower;

  /// No description provided for @times_all_lower.
  ///
  /// In en, this message translates to:
  /// **'heure(s)'**
  String get times_all_lower;

  /// No description provided for @found_all_lower.
  ///
  /// In en, this message translates to:
  /// **'trouvé'**
  String get found_all_lower;

  /// No description provided for @loading_suggestions.
  ///
  /// In en, this message translates to:
  /// **'Chargement des suggestions...'**
  String get loading_suggestions;

  /// No description provided for @sort_ucf.
  ///
  /// In en, this message translates to:
  /// **'Trier'**
  String get sort_ucf;

  /// No description provided for @default_ucf.
  ///
  /// In en, this message translates to:
  /// **'Par défaut'**
  String get default_ucf;

  /// No description provided for @you_can_use_sorting_while_searching_for_products.
  ///
  /// In en, this message translates to:
  /// **'Vous pouvez utiliser le tri lors de la recherche de produits.'**
  String get you_can_use_sorting_while_searching_for_products;

  /// No description provided for @filter_screen_min_max_warning.
  ///
  /// In en, this message translates to:
  /// **'Le prix minimum ne peut pas être supérieur au prix maximum'**
  String get filter_screen_min_max_warning;

  /// No description provided for @followed_sellers_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vendeurs suivis'**
  String get followed_sellers_ucf;

  /// No description provided for @copy_product_link_ucf.
  ///
  /// In en, this message translates to:
  /// **'Copier le lien produit'**
  String get copy_product_link_ucf;

  /// No description provided for @share_options_ucf.
  ///
  /// In en, this message translates to:
  /// **'Options de partage'**
  String get share_options_ucf;

  /// No description provided for @title_ucf.
  ///
  /// In en, this message translates to:
  /// **'Titre'**
  String get title_ucf;

  /// No description provided for @enter_title_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrez le titre'**
  String get enter_title_ucf;

  /// No description provided for @message_ucf.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message_ucf;

  /// No description provided for @enter_message_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrer le message'**
  String get enter_message_ucf;

  /// No description provided for @title_or_message_empty_warning.
  ///
  /// In en, this message translates to:
  /// **'Le titre ou le message ne peut pas être vide'**
  String get title_or_message_empty_warning;

  /// No description provided for @could_not_create_conversation.
  ///
  /// In en, this message translates to:
  /// **'Impossible de créer une conversation'**
  String get could_not_create_conversation;

  /// No description provided for @added_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Ajouté au panier'**
  String get added_to_cart;

  /// No description provided for @show_cart_all_capital.
  ///
  /// In en, this message translates to:
  /// **'AFFICHER LE PANIER'**
  String get show_cart_all_capital;

  /// No description provided for @description_ucf.
  ///
  /// In en, this message translates to:
  /// **'Description :'**
  String get description_ucf;

  /// No description provided for @type_your_reply_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tapez votre réponse'**
  String get type_your_reply_ucf;

  /// No description provided for @brand_ucf.
  ///
  /// In en, this message translates to:
  /// **'Marque :'**
  String get brand_ucf;

  /// No description provided for @total_price_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix total'**
  String get total_price_ucf;

  /// No description provided for @price_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix'**
  String get price_ucf;

  /// No description provided for @color_ucf.
  ///
  /// In en, this message translates to:
  /// **'Couleur'**
  String get color_ucf;

  /// No description provided for @seller_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vendeur'**
  String get seller_ucf;

  /// No description provided for @club_point_ucf.
  ///
  /// In en, this message translates to:
  /// **'Point Club'**
  String get club_point_ucf;

  /// No description provided for @quantity_ucf.
  ///
  /// In en, this message translates to:
  /// **'Quantité :'**
  String get quantity_ucf;

  /// No description provided for @video_not_available.
  ///
  /// In en, this message translates to:
  /// **'Vidéo non disponible'**
  String get video_not_available;

  /// No description provided for @video_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vidéo'**
  String get video_ucf;

  /// No description provided for @reviews_ucf.
  ///
  /// In en, this message translates to:
  /// **'Avis'**
  String get reviews_ucf;

  /// No description provided for @seller_policy_ucf.
  ///
  /// In en, this message translates to:
  /// **'Politique du vendeur'**
  String get seller_policy_ucf;

  /// No description provided for @return_policy_ucf.
  ///
  /// In en, this message translates to:
  /// **'Politique de retour'**
  String get return_policy_ucf;

  /// No description provided for @support_policy_ucf.
  ///
  /// In en, this message translates to:
  /// **'Politique de support'**
  String get support_policy_ucf;

  /// No description provided for @products_you_may_also_like.
  ///
  /// In en, this message translates to:
  /// **'Produits qui pourraient également vous plaire'**
  String get products_you_may_also_like;

  /// No description provided for @other_ads_of_ucf.
  ///
  /// In en, this message translates to:
  /// **'Autres annonces de'**
  String get other_ads_of_ucf;

  /// No description provided for @top_seller_products_from_seller.
  ///
  /// In en, this message translates to:
  /// **'Produits les plus vendus de ce vendeur'**
  String get top_seller_products_from_seller;

  /// No description provided for @chat_with_seller.
  ///
  /// In en, this message translates to:
  /// **'Chattez avec le vendeur'**
  String get chat_with_seller;

  /// No description provided for @available_all_lower.
  ///
  /// In en, this message translates to:
  /// **'disponible'**
  String get available_all_lower;

  /// No description provided for @add_to_cart_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ajouter au panier'**
  String get add_to_cart_ucf;

  /// No description provided for @buy_now_ucf.
  ///
  /// In en, this message translates to:
  /// **'Acheter maintenant'**
  String get buy_now_ucf;

  /// No description provided for @no_top_seller_products_from_this_seller.
  ///
  /// In en, this message translates to:
  /// **'Aucun produit le plus vendu de ce vendeur'**
  String get no_top_seller_products_from_this_seller;

  /// No description provided for @no_rated_product.
  ///
  /// In en, this message translates to:
  /// **'Aucun produit associé'**
  String get no_rated_product;

  /// No description provided for @on_the_way_ucf.
  ///
  /// In en, this message translates to:
  /// **'En route'**
  String get on_the_way_ucf;

  /// No description provided for @all_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tous'**
  String get all_ucf;

  /// No description provided for @all_payments_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tous les paiements'**
  String get all_payments_ucf;

  /// No description provided for @all_deliveries_ucf.
  ///
  /// In en, this message translates to:
  /// **'Toutes les livraisons'**
  String get all_deliveries_ucf;

  /// No description provided for @paid_ucf.
  ///
  /// In en, this message translates to:
  /// **'Payé'**
  String get paid_ucf;

  /// No description provided for @unpaid_ucf.
  ///
  /// In en, this message translates to:
  /// **'Non payé'**
  String get unpaid_ucf;

  /// No description provided for @confirmed_ucf.
  ///
  /// In en, this message translates to:
  /// **'Confirmé'**
  String get confirmed_ucf;

  /// No description provided for @on_delivery_ucf.
  ///
  /// In en, this message translates to:
  /// **'À la livraison'**
  String get on_delivery_ucf;

  /// No description provided for @delivered_ucf.
  ///
  /// In en, this message translates to:
  /// **'Livré'**
  String get delivered_ucf;

  /// No description provided for @no_more_orders_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus de commandes'**
  String get no_more_orders_ucf;

  /// No description provided for @loading_more_orders_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement de plus de commande...'**
  String get loading_more_orders_ucf;

  /// No description provided for @payment_status_ucf.
  ///
  /// In en, this message translates to:
  /// **'Statut du paiement'**
  String get payment_status_ucf;

  /// No description provided for @delivery_status_ucf.
  ///
  /// In en, this message translates to:
  /// **'Statut de la livraison'**
  String get delivery_status_ucf;

  /// No description provided for @product_name_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nom du produit'**
  String get product_name_ucf;

  /// No description provided for @order_code_ucf.
  ///
  /// In en, this message translates to:
  /// **'Code de commande'**
  String get order_code_ucf;

  /// No description provided for @reason_ucf.
  ///
  /// In en, this message translates to:
  /// **'Raison'**
  String get reason_ucf;

  /// No description provided for @reason_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'La raison ne peut pas être vide'**
  String get reason_cannot_be_empty;

  /// No description provided for @enter_reason_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrez la raison'**
  String get enter_reason_ucf;

  /// No description provided for @show_request_list_ucf.
  ///
  /// In en, this message translates to:
  /// **'Afficher la liste des demandes'**
  String get show_request_list_ucf;

  /// No description provided for @ordered_product_ucf.
  ///
  /// In en, this message translates to:
  /// **'Produit commandé'**
  String get ordered_product_ucf;

  /// No description provided for @no_item_ordered.
  ///
  /// In en, this message translates to:
  /// **'Aucun article n\'est commandé'**
  String get no_item_ordered;

  /// No description provided for @sub_total_all_capital.
  ///
  /// In en, this message translates to:
  /// **'SOUS TOTAL'**
  String get sub_total_all_capital;

  /// No description provided for @order_placed.
  ///
  /// In en, this message translates to:
  /// **'Commande passée'**
  String get order_placed;

  /// No description provided for @shipping_method_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mode d\'expédition'**
  String get shipping_method_ucf;

  /// No description provided for @order_date_ucf.
  ///
  /// In en, this message translates to:
  /// **'Date de commande'**
  String get order_date_ucf;

  /// No description provided for @payment_method_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mode de paiement'**
  String get payment_method_ucf;

  /// No description provided for @shipping_address_ucf.
  ///
  /// In en, this message translates to:
  /// **'Adresse de livraison'**
  String get shipping_address_ucf;

  /// No description provided for @name_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nom'**
  String get name_ucf;

  /// No description provided for @email_ucf.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get email_ucf;

  /// No description provided for @postal_code.
  ///
  /// In en, this message translates to:
  /// **'Code postal'**
  String get postal_code;

  /// No description provided for @item_all_lower.
  ///
  /// In en, this message translates to:
  /// **'article'**
  String get item_all_lower;

  /// No description provided for @ask_for_refund_ucf.
  ///
  /// In en, this message translates to:
  /// **'Demander un remboursement'**
  String get ask_for_refund_ucf;

  /// No description provided for @refund_status_ucf.
  ///
  /// In en, this message translates to:
  /// **'Statut du remboursement'**
  String get refund_status_ucf;

  /// No description provided for @order_details_ucf.
  ///
  /// In en, this message translates to:
  /// **'Détails de la commande'**
  String get order_details_ucf;

  /// No description provided for @make_offline_payment_ucf.
  ///
  /// In en, this message translates to:
  /// **'Effectuer un paiement hors ligne'**
  String get make_offline_payment_ucf;

  /// No description provided for @choose_an_address.
  ///
  /// In en, this message translates to:
  /// **'Choisissez une adresse'**
  String get choose_an_address;

  /// No description provided for @choose_delivery_ucf.
  ///
  /// In en, this message translates to:
  /// **'Choisissez la livraison'**
  String get choose_delivery_ucf;

  /// No description provided for @home_delivery_ucf.
  ///
  /// In en, this message translates to:
  /// **'Livraison à domicile'**
  String get home_delivery_ucf;

  /// No description provided for @choose_an_address_or_pickup_point.
  ///
  /// In en, this message translates to:
  /// **'Choisissez une adresse ou un point de retrait'**
  String get choose_an_address_or_pickup_point;

  /// No description provided for @to_add_or_edit_addresses_go_to_address_page.
  ///
  /// In en, this message translates to:
  /// **'Pour ajouter ou modifier des adresses, allez à la page d\'adresse'**
  String get to_add_or_edit_addresses_go_to_address_page;

  /// No description provided for @shipping_cost_ucf.
  ///
  /// In en, this message translates to:
  /// **'Frais de port'**
  String get shipping_cost_ucf;

  /// No description provided for @shipping_info.
  ///
  /// In en, this message translates to:
  /// **'Informations d\'expédition'**
  String get shipping_info;

  /// No description provided for @carrier_points_is_unavailable_ucf.
  ///
  /// In en, this message translates to:
  /// **'Les points transporteur ne sont pas disponibles'**
  String get carrier_points_is_unavailable_ucf;

  /// No description provided for @carrier_ucf.
  ///
  /// In en, this message translates to:
  /// **'Transporteur'**
  String get carrier_ucf;

  /// No description provided for @proceed_to_checkout.
  ///
  /// In en, this message translates to:
  /// **'Procéder au paiement'**
  String get proceed_to_checkout;

  /// No description provided for @continue_to_delivery_info_ucf.
  ///
  /// In en, this message translates to:
  /// **'Continuer vers les informations de livraison'**
  String get continue_to_delivery_info_ucf;

  /// No description provided for @pickup_point_is_unavailable_ucf.
  ///
  /// In en, this message translates to:
  /// **'Le point de retrait n\'est pas disponible'**
  String get pickup_point_is_unavailable_ucf;

  /// No description provided for @pickup_point_ucf.
  ///
  /// In en, this message translates to:
  /// **'Point de retrait'**
  String get pickup_point_ucf;

  /// No description provided for @mark_as_delivered.
  ///
  /// In en, this message translates to:
  /// **'Marquer comme livré'**
  String get mark_as_delivered;

  /// No description provided for @please_wait_ucf.
  ///
  /// In en, this message translates to:
  /// **'Veuillez patienter...'**
  String get please_wait_ucf;

  /// No description provided for @remaining_uploads.
  ///
  /// In en, this message translates to:
  /// **'Téléchargements restants'**
  String get remaining_uploads;

  /// No description provided for @amount_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Le montant ne peut pas être vide'**
  String get amount_cannot_be_empty;

  /// No description provided for @my_wallet_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mon portefeuille'**
  String get my_wallet_ucf;

  /// No description provided for @no_recharges_yet.
  ///
  /// In en, this message translates to:
  /// **'Aucune recharge pour l\'instant'**
  String get no_recharges_yet;

  /// No description provided for @approval_status_ucf.
  ///
  /// In en, this message translates to:
  /// **'Statut d\'approbation'**
  String get approval_status_ucf;

  /// No description provided for @wallet_balance_ucf.
  ///
  /// In en, this message translates to:
  /// **'Solde du portefeuille'**
  String get wallet_balance_ucf;

  /// No description provided for @last_recharged.
  ///
  /// In en, this message translates to:
  /// **'Dernière recharge'**
  String get last_recharged;

  /// No description provided for @wallet_recharge_history_ucf.
  ///
  /// In en, this message translates to:
  /// **'Historique de recharge du portefeuille'**
  String get wallet_recharge_history_ucf;

  /// No description provided for @amount_ucf.
  ///
  /// In en, this message translates to:
  /// **'Montant'**
  String get amount_ucf;

  /// No description provided for @enter_amount_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrez le montant'**
  String get enter_amount_ucf;

  /// No description provided for @wholesale_product.
  ///
  /// In en, this message translates to:
  /// **'Produit en gros'**
  String get wholesale_product;

  /// No description provided for @recharge_wallet_ucf.
  ///
  /// In en, this message translates to:
  /// **'Recharger le portefeuille'**
  String get recharge_wallet_ucf;

  /// No description provided for @please_log_in_to_see_the_wishlist_items.
  ///
  /// In en, this message translates to:
  /// **'Veuillez vous connecter pour voir les articles de la liste de souhaits'**
  String get please_log_in_to_see_the_wishlist_items;

  /// No description provided for @enter_email.
  ///
  /// In en, this message translates to:
  /// **'Entrez l\'e-mail'**
  String get enter_email;

  /// No description provided for @enter_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Entrez le numéro de téléphone'**
  String get enter_phone_number;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Entrez le mot de passe'**
  String get enter_password;

  /// No description provided for @or_login_with_a_phone.
  ///
  /// In en, this message translates to:
  /// **'ou, Connectez-vous avec un numéro de téléphone'**
  String get or_login_with_a_phone;

  /// No description provided for @or_login_with_an_email.
  ///
  /// In en, this message translates to:
  /// **'ou, Connectez-vous avec un email'**
  String get or_login_with_an_email;

  /// No description provided for @password_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mot de passe'**
  String get password_ucf;

  /// No description provided for @login_screen_phone.
  ///
  /// In en, this message translates to:
  /// **'Téléphone'**
  String get login_screen_phone;

  /// No description provided for @login_screen_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Mot de passe oublié ?'**
  String get login_screen_forgot_password;

  /// No description provided for @login_screen_log_in.
  ///
  /// In en, this message translates to:
  /// **'Connexion'**
  String get login_screen_log_in;

  /// No description provided for @login_screen_or_create_new_account.
  ///
  /// In en, this message translates to:
  /// **'ou créer un nouveau compte ?'**
  String get login_screen_or_create_new_account;

  /// No description provided for @login_screen_sign_up.
  ///
  /// In en, this message translates to:
  /// **'Inscrivez-vous'**
  String get login_screen_sign_up;

  /// No description provided for @login_screen_login_with.
  ///
  /// In en, this message translates to:
  /// **'Connectez-vous avec'**
  String get login_screen_login_with;

  /// No description provided for @location_not_available.
  ///
  /// In en, this message translates to:
  /// **'Emplacement non disponible'**
  String get location_not_available;

  /// No description provided for @login_to.
  ///
  /// In en, this message translates to:
  /// **'Connectez-vous à'**
  String get login_to;

  /// No description provided for @enter_your_name.
  ///
  /// In en, this message translates to:
  /// **'Entrez votre nom'**
  String get enter_your_name;

  /// No description provided for @confirm_your_password.
  ///
  /// In en, this message translates to:
  /// **'Confirmez votre mot de passe'**
  String get confirm_your_password;

  /// No description provided for @password_must_contain_at_least_6_characters.
  ///
  /// In en, this message translates to:
  /// **'Le mot de passe doit contenir au moins 6 caractères'**
  String get password_must_contain_at_least_6_characters;

  /// No description provided for @passwords_do_not_match.
  ///
  /// In en, this message translates to:
  /// **'Les mots de passe ne correspondent pas'**
  String get passwords_do_not_match;

  /// No description provided for @join_ucf.
  ///
  /// In en, this message translates to:
  /// **'Rejoindre'**
  String get join_ucf;

  /// No description provided for @retype_password_ucf.
  ///
  /// In en, this message translates to:
  /// **'Retapez le mot de passe'**
  String get retype_password_ucf;

  /// No description provided for @or_register_with_a_phone.
  ///
  /// In en, this message translates to:
  /// **'ou, Inscrivez-vous avec un numéro de téléphone'**
  String get or_register_with_a_phone;

  /// No description provided for @or_register_with_an_email.
  ///
  /// In en, this message translates to:
  /// **'ou, Inscrivez-vous avec un e-mail'**
  String get or_register_with_an_email;

  /// No description provided for @sign_up_ucf.
  ///
  /// In en, this message translates to:
  /// **'Inscrivez-vous'**
  String get sign_up_ucf;

  /// No description provided for @already_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Vous avez déjà un compte ?'**
  String get already_have_an_account;

  /// No description provided for @log_in.
  ///
  /// In en, this message translates to:
  /// **'Connexion'**
  String get log_in;

  /// No description provided for @requested_for_cancellation.
  ///
  /// In en, this message translates to:
  /// **'Demandé pour annulation'**
  String get requested_for_cancellation;

  /// No description provided for @forget_password_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mot de passe oublié ?'**
  String get forget_password_ucf;

  /// No description provided for @or_send_code_via_phone_number.
  ///
  /// In en, this message translates to:
  /// **'ou envoyer le code via un numéro de téléphone'**
  String get or_send_code_via_phone_number;

  /// No description provided for @or_send_code_via_email.
  ///
  /// In en, this message translates to:
  /// **'ou envoyer le code par e-mail'**
  String get or_send_code_via_email;

  /// No description provided for @send_code_ucf.
  ///
  /// In en, this message translates to:
  /// **'Envoyer le code'**
  String get send_code_ucf;

  /// No description provided for @enter_verification_code.
  ///
  /// In en, this message translates to:
  /// **'Entrez le code de vérification'**
  String get enter_verification_code;

  /// No description provided for @verify_your.
  ///
  /// In en, this message translates to:
  /// **'Vérifiez votre'**
  String get verify_your;

  /// No description provided for @email_account_ucf.
  ///
  /// In en, this message translates to:
  /// **'Compte de messagerie'**
  String get email_account_ucf;

  /// No description provided for @phone_number_ucf.
  ///
  /// In en, this message translates to:
  /// **'Numéro de téléphone'**
  String get phone_number_ucf;

  /// No description provided for @enter_the_verification_code_that_sent_to_your_email_recently.
  ///
  /// In en, this message translates to:
  /// **'Entrez le code de vérification qui a été récemment envoyé à votre adresse e-mail.'**
  String get enter_the_verification_code_that_sent_to_your_email_recently;

  /// No description provided for @enter_the_verification_code_that_sent_to_your_phone_recently.
  ///
  /// In en, this message translates to:
  /// **'Entrez le code de vérification récemment envoyé à votre téléphone.'**
  String get enter_the_verification_code_that_sent_to_your_phone_recently;

  /// No description provided for @resend_code_ucf.
  ///
  /// In en, this message translates to:
  /// **'Renvoyer le code'**
  String get resend_code_ucf;

  /// No description provided for @enter_the_code.
  ///
  /// In en, this message translates to:
  /// **'Entrez le code'**
  String get enter_the_code;

  /// No description provided for @enter_the_code_sent.
  ///
  /// In en, this message translates to:
  /// **'Entrez le code envoyé'**
  String get enter_the_code_sent;

  /// No description provided for @congratulations_ucf.
  ///
  /// In en, this message translates to:
  /// **'Félicitations !!'**
  String get congratulations_ucf;

  /// No description provided for @you_have_successfully_changed_your_password.
  ///
  /// In en, this message translates to:
  /// **'Vous avez changé votre mot de passe avec succès'**
  String get you_have_successfully_changed_your_password;

  /// No description provided for @password_changed_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mot de passe modifié'**
  String get password_changed_ucf;

  /// No description provided for @back_to_Login_ucf.
  ///
  /// In en, this message translates to:
  /// **'Retour à la connexion'**
  String get back_to_Login_ucf;

  /// No description provided for @cart_ucf.
  ///
  /// In en, this message translates to:
  /// **'Panier'**
  String get cart_ucf;

  /// No description provided for @fetching_nagad_url.
  ///
  /// In en, this message translates to:
  /// **'Récupération de l\'URL du Nagad...'**
  String get fetching_nagad_url;

  /// No description provided for @pay_with_nagad.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Nagad'**
  String get pay_with_nagad;

  /// No description provided for @pay_with_iyzico.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Iyzico'**
  String get pay_with_iyzico;

  /// No description provided for @if_you_are_finding_any_problem_while_logging_in.
  ///
  /// In en, this message translates to:
  /// **'Si vous rencontrez un problème lors de la connexion, veuillez contacter l\'administrateur'**
  String get if_you_are_finding_any_problem_while_logging_in;

  /// No description provided for @fetching_paypal_url.
  ///
  /// In en, this message translates to:
  /// **'Récupération de l\'URL Paypal...'**
  String get fetching_paypal_url;

  /// No description provided for @pay_with_paypal.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Paypal'**
  String get pay_with_paypal;

  /// No description provided for @pay_with_paystack.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Paystack'**
  String get pay_with_paystack;

  /// No description provided for @pay_with_paytm.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Paytm'**
  String get pay_with_paytm;

  /// No description provided for @pay_with_razorpay.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Razorpay'**
  String get pay_with_razorpay;

  /// No description provided for @fetching_sslcommerz_url.
  ///
  /// In en, this message translates to:
  /// **'Récupération de l\'url sslcommerz...'**
  String get fetching_sslcommerz_url;

  /// No description provided for @pay_with_sslcommerz.
  ///
  /// In en, this message translates to:
  /// **'Payer avec SSLcommerz'**
  String get pay_with_sslcommerz;

  /// No description provided for @pay_with_stripe.
  ///
  /// In en, this message translates to:
  /// **'Payer avec Stripe'**
  String get pay_with_stripe;

  /// No description provided for @your_delivery_location.
  ///
  /// In en, this message translates to:
  /// **'Votre lieu de livraison. . .'**
  String get your_delivery_location;

  /// No description provided for @calculating.
  ///
  /// In en, this message translates to:
  /// **'Calcul...'**
  String get calculating;

  /// No description provided for @pick_here.
  ///
  /// In en, this message translates to:
  /// **'Choisissez ici'**
  String get pick_here;

  /// No description provided for @amount_name_and_transaction_id_are_necessary.
  ///
  /// In en, this message translates to:
  /// **'Le montant, le nom et l\'identifiant de la transaction sont nécessaires'**
  String get amount_name_and_transaction_id_are_necessary;

  /// No description provided for @photo_proof_is_necessary.
  ///
  /// In en, this message translates to:
  /// **'Une preuve photo est nécessaire'**
  String get photo_proof_is_necessary;

  /// No description provided for @all_marked_fields_are_mandatory.
  ///
  /// In en, this message translates to:
  /// **'Tous les champs marqués * sont obligatoires'**
  String get all_marked_fields_are_mandatory;

  /// No description provided for @correctly_fill_up_the_necessary_information.
  ///
  /// In en, this message translates to:
  /// **'Remplissez correctement les informations nécessaires. Plus tard, vous ne pourrez plus modifier ou soumettre à nouveau le formulaire'**
  String get correctly_fill_up_the_necessary_information;

  /// No description provided for @transaction_id_ucf.
  ///
  /// In en, this message translates to:
  /// **'Identifiant de la transaction'**
  String get transaction_id_ucf;

  /// No description provided for @photo_proof_ucf.
  ///
  /// In en, this message translates to:
  /// **'Preuve photo'**
  String get photo_proof_ucf;

  /// No description provided for @only_image_file_allowed.
  ///
  /// In en, this message translates to:
  /// **'seul fichier image autorisé'**
  String get only_image_file_allowed;

  /// No description provided for @offline_ucf.
  ///
  /// In en, this message translates to:
  /// **'Hors ligne'**
  String get offline_ucf;

  /// No description provided for @type_your_review_here.
  ///
  /// In en, this message translates to:
  /// **'Tapez votre avis ici...'**
  String get type_your_review_here;

  /// No description provided for @no_more_reviews_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus d\'avis'**
  String get no_more_reviews_ucf;

  /// No description provided for @loading_more_reviews_ucf.
  ///
  /// In en, this message translates to:
  /// **'Chargement de plus d\'avis...'**
  String get loading_more_reviews_ucf;

  /// No description provided for @no_reviews_yet_be_the_first.
  ///
  /// In en, this message translates to:
  /// **'Aucun avis pour l\'instant. Soyez le premier à donner votre avis sur ce produit'**
  String get no_reviews_yet_be_the_first;

  /// No description provided for @you_need_to_login_to_give_a_review.
  ///
  /// In en, this message translates to:
  /// **'Vous devez vous connecter pour donner un avis'**
  String get you_need_to_login_to_give_a_review;

  /// No description provided for @review_can_not_empty_warning.
  ///
  /// In en, this message translates to:
  /// **'L\'avis ne peut pas être vide'**
  String get review_can_not_empty_warning;

  /// No description provided for @at_least_one_star_must_be_given.
  ///
  /// In en, this message translates to:
  /// **'Au moins une étoile doit être attribuée'**
  String get at_least_one_star_must_be_given;

  /// No description provided for @password_changes_ucf.
  ///
  /// In en, this message translates to:
  /// **'Modifications du mot de passe'**
  String get password_changes_ucf;

  /// No description provided for @basic_information_ucf.
  ///
  /// In en, this message translates to:
  /// **'Informations de base'**
  String get basic_information_ucf;

  /// No description provided for @new_password_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nouveau mot de passe'**
  String get new_password_ucf;

  /// No description provided for @update_profile_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mettre à jour le profil'**
  String get update_profile_ucf;

  /// No description provided for @update_password_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mettre à jour le mot de passe'**
  String get update_password_ucf;

  /// No description provided for @edit_profile_ucf.
  ///
  /// In en, this message translates to:
  /// **'Modifier le profil'**
  String get edit_profile_ucf;

  /// No description provided for @picked_ucf.
  ///
  /// In en, this message translates to:
  /// **'Choisi'**
  String get picked_ucf;

  /// No description provided for @top_seller_ucf.
  ///
  /// In en, this message translates to:
  /// **'Meilleures ventes'**
  String get top_seller_ucf;

  /// No description provided for @store_home_ucf.
  ///
  /// In en, this message translates to:
  /// **'Accueil du magasin'**
  String get store_home_ucf;

  /// No description provided for @new_arrivals_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nouveautés produits'**
  String get new_arrivals_products_ucf;

  /// No description provided for @no_featured_product_is_available_from_this_seller.
  ///
  /// In en, this message translates to:
  /// **'Aucun produit vedette n\'est disponible auprès de ce vendeur'**
  String get no_featured_product_is_available_from_this_seller;

  /// No description provided for @no_new_arrivals.
  ///
  /// In en, this message translates to:
  /// **'Aucun nouvel arrivage'**
  String get no_new_arrivals;

  /// No description provided for @view_all_products_prom_this_seller_all_capital.
  ///
  /// In en, this message translates to:
  /// **'Afficher tous les produits de ce vendeur'**
  String get view_all_products_prom_this_seller_all_capital;

  /// No description provided for @search_products_of_shop.
  ///
  /// In en, this message translates to:
  /// **'Rechercher les produits de la boutique'**
  String get search_products_of_shop;

  /// No description provided for @today_ucf.
  ///
  /// In en, this message translates to:
  /// **'Aujourd\'hui'**
  String get today_ucf;

  /// No description provided for @total_collected_ucf.
  ///
  /// In en, this message translates to:
  /// **'Total collecté'**
  String get total_collected_ucf;

  /// No description provided for @hier_ucf.
  ///
  /// In en, this message translates to:
  /// **'Hier'**
  String get hier_ucf;

  /// No description provided for @your_app_is_now.
  ///
  /// In en, this message translates to:
  /// **'Votre application est maintenant'**
  String get your_app_is_now;

  /// No description provided for @you_are_currently_offline.
  ///
  /// In en, this message translates to:
  /// **'Vous êtes actuellement hors ligne'**
  String get you_are_currently_offline;

  /// No description provided for @view_details_ucf.
  ///
  /// In en, this message translates to:
  /// **'Afficher les détails'**
  String get view_details_ucf;

  /// No description provided for @pending_ucf.
  ///
  /// In en, this message translates to:
  /// **'En attente'**
  String get pending_ucf;

  /// No description provided for @picked_up_ucf.
  ///
  /// In en, this message translates to:
  /// **'Récupéré'**
  String get picked_up_ucf;

  /// No description provided for @money_withdraw_ucf.
  ///
  /// In en, this message translates to:
  /// **'Retrait d\'argent '**
  String get money_withdraw_ucf;

  /// No description provided for @payment_history_ucf.
  ///
  /// In en, this message translates to:
  /// **'Historique des paiements'**
  String get payment_history_ucf;

  /// No description provided for @add_new_coupon_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ajouter un nouveau coupon'**
  String get add_new_coupon_ucf;

  /// No description provided for @warning_ucf.
  ///
  /// In en, this message translates to:
  /// **'Attention !'**
  String get warning_ucf;

  /// No description provided for @coupon_code_is_empty_ucf.
  ///
  /// In en, this message translates to:
  /// **'Le code promo est vide'**
  String get coupon_code_is_empty_ucf;

  /// No description provided for @discount_amount_is_invalid_ucf.
  ///
  /// In en, this message translates to:
  /// **'Le montant de la remise n\'est pas valide'**
  String get discount_amount_is_invalid_ucf;

  /// No description provided for @please_select_minimum_1_product_ucf.
  ///
  /// In en, this message translates to:
  /// **'Veuillez sélectionner au minimum 1 produit'**
  String get please_select_minimum_1_product_ucf;

  /// No description provided for @invalid_minimum_shopping_ucf.
  ///
  /// In en, this message translates to:
  /// **'Shopping minimum non valide'**
  String get invalid_minimum_shopping_ucf;

  /// No description provided for @invalid_maximum_discount_ucf.
  ///
  /// In en, this message translates to:
  /// **'Remise maximale non valide'**
  String get invalid_maximum_discount_ucf;

  /// No description provided for @edit_coupon_ucf.
  ///
  /// In en, this message translates to:
  /// **'Modifier le coupon'**
  String get edit_coupon_ucf;

  /// No description provided for @save_ucf.
  ///
  /// In en, this message translates to:
  /// **'Enregistrer'**
  String get save_ucf;

  /// No description provided for @discount_ucf.
  ///
  /// In en, this message translates to:
  /// **'Remise'**
  String get discount_ucf;

  /// No description provided for @add_your_coupon_code_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ajoutez votre code promo'**
  String get add_your_coupon_code_ucf;

  /// No description provided for @minimum_shopping_ucf.
  ///
  /// In en, this message translates to:
  /// **'Achats minimum'**
  String get minimum_shopping_ucf;

  /// No description provided for @maximum_discount_amount_ucf.
  ///
  /// In en, this message translates to:
  /// **'Montant maximum de la remise'**
  String get maximum_discount_amount_ucf;

  /// No description provided for @coupon_information_adding.
  ///
  /// In en, this message translates to:
  /// **'Ajout d\'informations sur le coupon'**
  String get coupon_information_adding;

  /// No description provided for @select_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sélectionner des produits'**
  String get select_products_ucf;

  /// No description provided for @offline_payment_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paiement hors ligne'**
  String get offline_payment_ucf;

  /// No description provided for @youtube_ucf.
  ///
  /// In en, this message translates to:
  /// **'YouTube'**
  String get youtube_ucf;

  /// No description provided for @dailymotion_ucf.
  ///
  /// In en, this message translates to:
  /// **'Dailymotion'**
  String get dailymotion_ucf;

  /// No description provided for @vimeo_ucf.
  ///
  /// In en, this message translates to:
  /// **'Viméo'**
  String get vimeo_ucf;

  /// No description provided for @save_n_unpublish_ucf.
  ///
  /// In en, this message translates to:
  /// **'Enregistrer et annuler la publication'**
  String get save_n_unpublish_ucf;

  /// No description provided for @save_n_publish_ucf.
  ///
  /// In en, this message translates to:
  /// **'Enregistrer et publier'**
  String get save_n_publish_ucf;

  /// No description provided for @product_information_ucf.
  ///
  /// In en, this message translates to:
  /// **'Informations sur le produit'**
  String get product_information_ucf;

  /// No description provided for @unit_ucf.
  ///
  /// In en, this message translates to:
  /// **'Unité'**
  String get unit_ucf;

  /// No description provided for @unit_eg_ucf.
  ///
  /// In en, this message translates to:
  /// **'Unité (par exemple KG, Pc etc)'**
  String get unit_eg_ucf;

  /// No description provided for @weight_in_kg_ucf.
  ///
  /// In en, this message translates to:
  /// **'Poids (en kg)'**
  String get weight_in_kg_ucf;

  /// No description provided for @minimum_purchase_quantity_ucf.
  ///
  /// In en, this message translates to:
  /// **'Quantité minimale d\'achat'**
  String get minimum_purchase_quantity_ucf;

  /// No description provided for @tags_ucf.
  ///
  /// In en, this message translates to:
  /// **'Balises'**
  String get tags_ucf;

  /// No description provided for @type_and_hit_enter_to_add_a_tag_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tapez et appuyez sur Entrée pour ajouter un tag'**
  String get type_and_hit_enter_to_add_a_tag_ucf;

  /// No description provided for @barcode_ucf.
  ///
  /// In en, this message translates to:
  /// **'Code-barres'**
  String get barcode_ucf;

  /// No description provided for @refundable_ucf.
  ///
  /// In en, this message translates to:
  /// **'Remboursable'**
  String get refundable_ucf;

  /// No description provided for @product_description_ucf.
  ///
  /// In en, this message translates to:
  /// **'Description du produit'**
  String get product_description_ucf;

  /// No description provided for @cash_on_delivery_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paiement à la livraison'**
  String get cash_on_delivery_ucf;

  /// No description provided for @vat_n_tax_ucf.
  ///
  /// In en, this message translates to:
  /// **'TVA et taxes'**
  String get vat_n_tax_ucf;

  /// No description provided for @product_images_ucf.
  ///
  /// In en, this message translates to:
  /// **'Images du produit'**
  String get product_images_ucf;

  /// No description provided for @thumbnail_image_300_ucf.
  ///
  /// In en, this message translates to:
  /// **'Image miniature (300x300)'**
  String get thumbnail_image_300_ucf;

  /// No description provided for @thumbnail_image_300_des.
  ///
  /// In en, this message translates to:
  /// **'Ces images sont visibles dans toutes les boîtes de produits. Utilisez une image de taille 300x300. Gardez un espace vide autour de l\'objet principal de votre image car nous avons dû recadrer certains bords sur différents appareils pour la rendre réactive. '**
  String get thumbnail_image_300_des;

  /// No description provided for @product_videos_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vidéos de produits'**
  String get product_videos_ucf;

  /// No description provided for @video_provider_ucf.
  ///
  /// In en, this message translates to:
  /// **'Fournisseur vidéo'**
  String get video_provider_ucf;

  /// No description provided for @video_link_ucf.
  ///
  /// In en, this message translates to:
  /// **'Lien vidéo'**
  String get video_link_ucf;

  /// No description provided for @video_link_des.
  ///
  /// In en, this message translates to:
  /// **'Utilisez le lien approprié sans paramètre supplémentaire. N\'utilisez pas de lien de partage court/code iframe intégré.'**
  String get video_link_des;

  /// No description provided for @pdf_description_ucf.
  ///
  /// In en, this message translates to:
  /// **'Description PDF'**
  String get pdf_description_ucf;

  /// No description provided for @pdf_specification_ucf.
  ///
  /// In en, this message translates to:
  /// **'Spécification PDF'**
  String get pdf_specification_ucf;

  /// No description provided for @unit_price_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix unitaire'**
  String get unit_price_ucf;

  /// No description provided for @discount_date_range_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plage de dates de remise'**
  String get discount_date_range_ucf;

  /// No description provided for @sku_all_capital.
  ///
  /// In en, this message translates to:
  /// **'SKU'**
  String get sku_all_capital;

  /// No description provided for @external_link_ucf.
  ///
  /// In en, this message translates to:
  /// **'Lien externe'**
  String get external_link_ucf;

  /// No description provided for @leave_it_blank_if_you_do_not_use_external_site_link.
  ///
  /// In en, this message translates to:
  /// **'Laissez-le vide si vous n\'utilisez pas de lien de site externe'**
  String get leave_it_blank_if_you_do_not_use_external_site_link;

  /// No description provided for @external_link_button_text_ucf.
  ///
  /// In en, this message translates to:
  /// **'Texte du bouton de lien externe'**
  String get external_link_button_text_ucf;

  /// No description provided for @low_stock_quantity_warning_ucf.
  ///
  /// In en, this message translates to:
  /// **'Avertissement de quantité de stock faible'**
  String get low_stock_quantity_warning_ucf;

  /// No description provided for @stock_visibility_state_ucf.
  ///
  /// In en, this message translates to:
  /// **'État de visibilité du stock'**
  String get stock_visibility_state_ucf;

  /// No description provided for @product_variation_ucf.
  ///
  /// In en, this message translates to:
  /// **'Variation du produit'**
  String get product_variation_ucf;

  /// No description provided for @colors_ucf.
  ///
  /// In en, this message translates to:
  /// **'Couleurs'**
  String get colors_ucf;

  /// No description provided for @attributes_ucf.
  ///
  /// In en, this message translates to:
  /// **'Attributs'**
  String get attributes_ucf;

  /// No description provided for @seo_all_capital.
  ///
  /// In en, this message translates to:
  /// **'Référencement'**
  String get seo_all_capital;

  /// No description provided for @meta_title_ucf.
  ///
  /// In en, this message translates to:
  /// **'Méta-titre'**
  String get meta_title_ucf;

  /// No description provided for @meta_image_ucf.
  ///
  /// In en, this message translates to:
  /// **'Méta-image'**
  String get meta_image_ucf;

  /// No description provided for @shipping_configuration_ucf.
  ///
  /// In en, this message translates to:
  /// **'Configuration d\'expédition'**
  String get shipping_configuration_ucf;

  /// No description provided for @shipping_configuration_is_maintained_by_admin.
  ///
  /// In en, this message translates to:
  /// **'La configuration d\'expédition est gérée par l\'administrateur.'**
  String get shipping_configuration_is_maintained_by_admin;

  /// No description provided for @estimate_shipping_time_ucf.
  ///
  /// In en, this message translates to:
  /// **'Estimer le délai d\'expédition'**
  String get estimate_shipping_time_ucf;

  /// No description provided for @shipping_days_ucf.
  ///
  /// In en, this message translates to:
  /// **'Jours d\'expédition'**
  String get shipping_days_ucf;

  /// No description provided for @gallery_images_600.
  ///
  /// In en, this message translates to:
  /// **'Galerie d\'images (600x600)'**
  String get gallery_images_600;

  /// No description provided for @these_images_are_visible_in_product_details_page_gallery_600.
  ///
  /// In en, this message translates to:
  /// **'Ces images sont visibles dans la galerie des pages de détails du produit. Utilisez des images de tailles 600x600.'**
  String get these_images_are_visible_in_product_details_page_gallery_600;

  /// No description provided for @photo_ucf.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get photo_ucf;

  /// No description provided for @general_ucf.
  ///
  /// In en, this message translates to:
  /// **'Général'**
  String get general_ucf;

  /// No description provided for @media_ucf.
  ///
  /// In en, this message translates to:
  /// **'Média'**
  String get media_ucf;

  /// No description provided for @price_n_stock_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix et stock'**
  String get price_n_stock_ucf;

  /// No description provided for @product_binding_and_date_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix et date'**
  String get product_binding_and_date_ucf;

  /// No description provided for @shipping_ucf.
  ///
  /// In en, this message translates to:
  /// **'Expédition'**
  String get shipping_ucf;

  /// No description provided for @add_new_product_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ajouter un nouveau produit'**
  String get add_new_product_ucf;

  /// No description provided for @product_reviews_ucf.
  ///
  /// In en, this message translates to:
  /// **'Avis sur les produits'**
  String get product_reviews_ucf;

  /// No description provided for @update_now_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mettre à jour maintenant'**
  String get update_now_ucf;

  /// No description provided for @slug_ucf.
  ///
  /// In en, this message translates to:
  /// **'limace'**
  String get slug_ucf;

  /// No description provided for @update_product_ucf.
  ///
  /// In en, this message translates to:
  /// **'Mettre à jour le produit'**
  String get update_product_ucf;

  /// No description provided for @shop_banner_image_is_required.
  ///
  /// In en, this message translates to:
  /// **'L\'image de la bannière de la boutique est requise.'**
  String get shop_banner_image_is_required;

  /// No description provided for @banner_settings.
  ///
  /// In en, this message translates to:
  /// **'Paramètres de la bannière'**
  String get banner_settings;

  /// No description provided for @banner_1500_x_450.
  ///
  /// In en, this message translates to:
  /// **'Bannière (1500 x 450)'**
  String get banner_1500_x_450;

  /// No description provided for @banner_1500_x_450_des.
  ///
  /// In en, this message translates to:
  /// **'Nous avons dû limiter la hauteur pour maintenir la cohérence. Sur certains appareils, les deux côtés de la bannière peuvent être rognés pour limiter la hauteur.'**
  String get banner_1500_x_450_des;

  /// No description provided for @delivery_boy_pickup_point.
  ///
  /// In en, this message translates to:
  /// **'Point de retrait du livreur'**
  String get delivery_boy_pickup_point;

  /// No description provided for @longitude_ucf.
  ///
  /// In en, this message translates to:
  /// **'Longitude'**
  String get longitude_ucf;

  /// No description provided for @latitude_ucf.
  ///
  /// In en, this message translates to:
  /// **'Latitude'**
  String get latitude_ucf;

  /// No description provided for @update_location.
  ///
  /// In en, this message translates to:
  /// **'Mettre à jour l\'emplacement'**
  String get update_location;

  /// No description provided for @calculating_ucf.
  ///
  /// In en, this message translates to:
  /// **'Calcul'**
  String get calculating_ucf;

  /// No description provided for @pick_here_ucf.
  ///
  /// In en, this message translates to:
  /// **'Choisissez ici'**
  String get pick_here_ucf;

  /// No description provided for @shop_name_is_required.
  ///
  /// In en, this message translates to:
  /// **'Le nom de la boutique est requis'**
  String get shop_name_is_required;

  /// No description provided for @shop_phone_is_required.
  ///
  /// In en, this message translates to:
  /// **'Le téléphone du magasin est requis'**
  String get shop_phone_is_required;

  /// No description provided for @shop_address_is_required.
  ///
  /// In en, this message translates to:
  /// **'L\'adresse de la boutique est requise'**
  String get shop_address_is_required;

  /// No description provided for @shop_title_is_required.
  ///
  /// In en, this message translates to:
  /// **'Le titre de la boutique est requis'**
  String get shop_title_is_required;

  /// No description provided for @shop_description_is_required.
  ///
  /// In en, this message translates to:
  /// **'La description de la boutique est requise'**
  String get shop_description_is_required;

  /// No description provided for @shop_logo_is_required.
  ///
  /// In en, this message translates to:
  /// **'Le logo de la boutique est requis'**
  String get shop_logo_is_required;

  /// No description provided for @general_setting_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paramètres généraux'**
  String get general_setting_ucf;

  /// No description provided for @shop_description.
  ///
  /// In en, this message translates to:
  /// **'Description de la boutique'**
  String get shop_description;

  /// No description provided for @shop_title.
  ///
  /// In en, this message translates to:
  /// **'Titre de la boutique'**
  String get shop_title;

  /// No description provided for @shop_phone.
  ///
  /// In en, this message translates to:
  /// **'Téléphone du magasin'**
  String get shop_phone;

  /// No description provided for @shop_address.
  ///
  /// In en, this message translates to:
  /// **'Adresse de la boutique'**
  String get shop_address;

  /// No description provided for @shop_name_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nom de la boutique'**
  String get shop_name_ucf;

  /// No description provided for @shop_logo_ucf.
  ///
  /// In en, this message translates to:
  /// **'Logo de la boutique'**
  String get shop_logo_ucf;

  /// No description provided for @shop_settings_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paramètres de la boutique'**
  String get shop_settings_ucf;

  /// No description provided for @social_media_link.
  ///
  /// In en, this message translates to:
  /// **'Lien vers les réseaux sociaux'**
  String get social_media_link;

  /// No description provided for @google_ucf.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google_ucf;

  /// No description provided for @twitter_ucf.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter_ucf;

  /// No description provided for @instagram_ucf.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram_ucf;

  /// No description provided for @facebook_ucf.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook_ucf;

  /// No description provided for @upload_file_ucf.
  ///
  /// In en, this message translates to:
  /// **'Télécharger le fichier'**
  String get upload_file_ucf;

  /// No description provided for @commission_history_ucf.
  ///
  /// In en, this message translates to:
  /// **'Historique des commissions'**
  String get commission_history_ucf;

  /// No description provided for @chat_list.
  ///
  /// In en, this message translates to:
  /// **'Liste de discussions'**
  String get chat_list;

  /// No description provided for @admin_commission_ucf.
  ///
  /// In en, this message translates to:
  /// **'Commission d\'administration'**
  String get admin_commission_ucf;

  /// No description provided for @create_a_ticket.
  ///
  /// In en, this message translates to:
  /// **'Créer un ticket'**
  String get create_a_ticket;

  /// No description provided for @subject_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sujet'**
  String get subject_ucf;

  /// No description provided for @provide_a_detailed_description.
  ///
  /// In en, this message translates to:
  /// **'Fournissez une description détaillée'**
  String get provide_a_detailed_description;

  /// No description provided for @send_ticket.
  ///
  /// In en, this message translates to:
  /// **'Envoyer le billet'**
  String get send_ticket;

  /// No description provided for @top_products_ucf.
  ///
  /// In en, this message translates to:
  /// **'Meilleurs produits'**
  String get top_products_ucf;

  /// No description provided for @your_categories_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vos catégories'**
  String get your_categories_ucf;

  /// No description provided for @sales_stat_ucf.
  ///
  /// In en, this message translates to:
  /// **'Statistiques de ventes'**
  String get sales_stat_ucf;

  /// No description provided for @product_upload_limit_ucf.
  ///
  /// In en, this message translates to:
  /// **'Limite de téléchargement de produits : '**
  String get product_upload_limit_ucf;

  /// No description provided for @package_expires_at_ucf.
  ///
  /// In en, this message translates to:
  /// **'Le package expire à : '**
  String get package_expires_at_ucf;

  /// No description provided for @manage_n_organize_your_shop.
  ///
  /// In en, this message translates to:
  /// **'Gérer et organiser\nvotre boutique.'**
  String get manage_n_organize_your_shop;

  /// No description provided for @configure_your_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Configurez votre\nméthode de paiement.'**
  String get configure_your_payment_method;

  /// No description provided for @configure_now_ucf.
  ///
  /// In en, this message translates to:
  /// **'Configurer maintenant'**
  String get configure_now_ucf;

  /// No description provided for @go_to_settings.
  ///
  /// In en, this message translates to:
  /// **'Aller dans les paramètres'**
  String get go_to_settings;

  /// No description provided for @payment_settings_ucf.
  ///
  /// In en, this message translates to:
  /// **'Paramètres de paiement'**
  String get payment_settings_ucf;

  /// No description provided for @rating_ucf.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get rating_ucf;

  /// No description provided for @total_orders_ucf.
  ///
  /// In en, this message translates to:
  /// **'Total\ndes commandes'**
  String get total_orders_ucf;

  /// No description provided for @total_sales_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ventes totales'**
  String get total_sales_ucf;

  /// No description provided for @hi_welcome_to_all_lower.
  ///
  /// In en, this message translates to:
  /// **'salut, bienvenue'**
  String get hi_welcome_to_all_lower;

  /// No description provided for @login_to_your_account_all_lower.
  ///
  /// In en, this message translates to:
  /// **'connectez-vous à votre compte'**
  String get login_to_your_account_all_lower;

  /// No description provided for @in_case_of_any_difficulties_contact_with_admin.
  ///
  /// In en, this message translates to:
  /// **'En cas de difficultés, contactez l\'administrateur.'**
  String get in_case_of_any_difficulties_contact_with_admin;

  /// No description provided for @pending_balance_ucf.
  ///
  /// In en, this message translates to:
  /// **'Solde en attente'**
  String get pending_balance_ucf;

  /// No description provided for @send_withdraw_request_ucf.
  ///
  /// In en, this message translates to:
  /// **'Envoyer la demande de retrait'**
  String get send_withdraw_request_ucf;

  /// No description provided for @premium_package_for_seller_ucf.
  ///
  /// In en, this message translates to:
  /// **'Pack Premium pour le vendeur'**
  String get premium_package_for_seller_ucf;

  /// No description provided for @select_payment_type_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sélectionner le type de paiement'**
  String get select_payment_type_ucf;

  /// No description provided for @select_payment_option_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sélectionnez l\'option de paiement'**
  String get select_payment_option_ucf;

  /// No description provided for @enter_phone_number_ucf.
  ///
  /// In en, this message translates to:
  /// **'Entrez le numéro de téléphone'**
  String get enter_phone_number_ucf;

  /// No description provided for @we_will_send_you_a_OTP_code_if_the_mail_id_is_correct_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nous vous enverrons un code OTP si l\'identifiant de messagerie est correct.'**
  String get we_will_send_you_a_OTP_code_if_the_mail_id_is_correct_ucf;

  /// No description provided for @we_will_send_you_a_OTP_code_if_the_phone_no_is_correct_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nous vous enverrons un code OTP si le numéro de téléphone est correct.'**
  String get we_will_send_you_a_OTP_code_if_the_phone_no_is_correct_ucf;

  /// No description provided for @reset_password_ucf.
  ///
  /// In en, this message translates to:
  /// **'Réinitialiser le mot de passe'**
  String get reset_password_ucf;

  /// No description provided for @bank_payment.
  ///
  /// In en, this message translates to:
  /// **'Paiement bancaire'**
  String get bank_payment;

  /// No description provided for @cash_payment.
  ///
  /// In en, this message translates to:
  /// **'Paiement en espèces'**
  String get cash_payment;

  /// No description provided for @bank_account_number.
  ///
  /// In en, this message translates to:
  /// **'Numéro de compte bancaire'**
  String get bank_account_number;

  /// No description provided for @bank_account_name.
  ///
  /// In en, this message translates to:
  /// **'Nom du compte bancaire'**
  String get bank_account_name;

  /// No description provided for @bank_name_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nom de la banque'**
  String get bank_name_ucf;

  /// No description provided for @bank_routing_number_ucf.
  ///
  /// In en, this message translates to:
  /// **'Numéro d\'acheminement bancaire'**
  String get bank_routing_number_ucf;

  /// No description provided for @no_more_refund_requests_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plus de demandes de remboursement'**
  String get no_more_refund_requests_ucf;

  /// No description provided for @approved_ucf.
  ///
  /// In en, this message translates to:
  /// **'Approuvé'**
  String get approved_ucf;

  /// No description provided for @approve_ucf.
  ///
  /// In en, this message translates to:
  /// **'Approuver'**
  String get approve_ucf;

  /// No description provided for @rejected_ucf.
  ///
  /// In en, this message translates to:
  /// **'Rejeté'**
  String get rejected_ucf;

  /// No description provided for @reject_ucf.
  ///
  /// In en, this message translates to:
  /// **'Rejeter'**
  String get reject_ucf;

  /// No description provided for @support_tickets_ucf.
  ///
  /// In en, this message translates to:
  /// **'Tickets d\'assistance'**
  String get support_tickets_ucf;

  /// No description provided for @options_ucf.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get options_ucf;

  /// No description provided for @amount_is_invalid.
  ///
  /// In en, this message translates to:
  /// **'Le montant n\'est pas valide'**
  String get amount_is_invalid;

  /// No description provided for @message_is_invalid.
  ///
  /// In en, this message translates to:
  /// **'Le message n\'est pas valide'**
  String get message_is_invalid;

  /// No description provided for @coupon_ucf.
  ///
  /// In en, this message translates to:
  /// **'Coupon'**
  String get coupon_ucf;

  /// No description provided for @withdraw_ucf.
  ///
  /// In en, this message translates to:
  /// **'Retirer'**
  String get withdraw_ucf;

  /// No description provided for @conversation_ucf.
  ///
  /// In en, this message translates to:
  /// **'Conversation'**
  String get conversation_ucf;

  /// No description provided for @wholesale_prices_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix de gros'**
  String get wholesale_prices_ucf;

  /// No description provided for @min_quantity_ucf.
  ///
  /// In en, this message translates to:
  /// **'Quantité minimale'**
  String get min_quantity_ucf;

  /// No description provided for @max_quantity_ucf.
  ///
  /// In en, this message translates to:
  /// **'Quantité maximale'**
  String get max_quantity_ucf;

  /// No description provided for @add_more_ucf.
  ///
  /// In en, this message translates to:
  /// **'Ajouter plus'**
  String get add_more_ucf;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'ou'**
  String get or;

  /// No description provided for @inscription.
  ///
  /// In en, this message translates to:
  /// **'Inscription'**
  String get inscription;

  /// No description provided for @be_a_seller.
  ///
  /// In en, this message translates to:
  /// **'Soyez un vendeur'**
  String get be_a_seller;

  /// No description provided for @personal_info_ucf.
  ///
  /// In en, this message translates to:
  /// **'Informations personnelles'**
  String get personal_info_ucf;

  /// No description provided for @basic_info_ucf.
  ///
  /// In en, this message translates to:
  /// **'Informations de base'**
  String get basic_info_ucf;

  /// No description provided for @shop_name.
  ///
  /// In en, this message translates to:
  /// **'Nom de la boutique'**
  String get shop_name;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @verify_now.
  ///
  /// In en, this message translates to:
  /// **'Vérifier maintenant'**
  String get verify_now;

  /// No description provided for @verify_your_account.
  ///
  /// In en, this message translates to:
  /// **'Vérifiez votre compte'**
  String get verify_your_account;

  /// No description provided for @your_account_is_unverified.
  ///
  /// In en, this message translates to:
  /// **'Votre compte n\'est pas vérifié'**
  String get your_account_is_unverified;

  /// No description provided for @verification_form_ucf.
  ///
  /// In en, this message translates to:
  /// **'Formulaire de vérification'**
  String get verification_form_ucf;

  /// No description provided for @product_file_ucf.
  ///
  /// In en, this message translates to:
  /// **'Fichier produit'**
  String get product_file_ucf;

  /// No description provided for @purchase_price_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix d\'achat'**
  String get purchase_price_ucf;

  /// No description provided for @no_file_chosen_ucf.
  ///
  /// In en, this message translates to:
  /// **'Aucun fichier choisi'**
  String get no_file_chosen_ucf;

  /// No description provided for @product_queries_ucf.
  ///
  /// In en, this message translates to:
  /// **'Requêtes de produits'**
  String get product_queries_ucf;

  /// No description provided for @product_queries_reply_ucf.
  ///
  /// In en, this message translates to:
  /// **'Réponse à la requête de produit'**
  String get product_queries_reply_ucf;

  /// No description provided for @product_name_required_ucf.
  ///
  /// In en, this message translates to:
  /// **'Nom du produit requis'**
  String get product_name_required_ucf;

  /// No description provided for @product_category_required_ucf.
  ///
  /// In en, this message translates to:
  /// **'Catégorie de produit requise'**
  String get product_category_required_ucf;

  /// No description provided for @starting_bidding_price_required_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix d\'enchère de départ requis'**
  String get starting_bidding_price_required_ucf;

  /// No description provided for @pick_a_auction_end_and_start_date.
  ///
  /// In en, this message translates to:
  /// **'Choisissez une date de fin et de début d\'enchère'**
  String get pick_a_auction_end_and_start_date;

  /// No description provided for @start_date_ucf.
  ///
  /// In en, this message translates to:
  /// **'Date de début'**
  String get start_date_ucf;

  /// No description provided for @end_date_ucf.
  ///
  /// In en, this message translates to:
  /// **'Date de fin'**
  String get end_date_ucf;

  /// No description provided for @choose_file.
  ///
  /// In en, this message translates to:
  /// **'Choisir un fichier'**
  String get choose_file;

  /// No description provided for @browse_ucf.
  ///
  /// In en, this message translates to:
  /// **'Parcourir'**
  String get browse_ucf;

  /// No description provided for @select_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sélectionner'**
  String get select_ucf;

  /// No description provided for @published.
  ///
  /// In en, this message translates to:
  /// **'Publié'**
  String get published;

  /// No description provided for @featured.
  ///
  /// In en, this message translates to:
  /// **'En vedette'**
  String get featured;

  /// No description provided for @duplicate.
  ///
  /// In en, this message translates to:
  /// **'Dupliquer'**
  String get duplicate;

  /// No description provided for @unpublished.
  ///
  /// In en, this message translates to:
  /// **'Non publié'**
  String get unpublished;

  /// No description provided for @unfeatured.
  ///
  /// In en, this message translates to:
  /// **'Sans vedette'**
  String get unfeatured;

  /// No description provided for @insert_link_with_https.
  ///
  /// In en, this message translates to:
  /// **'Insérer un lien avec https'**
  String get insert_link_with_https;

  /// No description provided for @verification_code.
  ///
  /// In en, this message translates to:
  /// **'Code de vérification'**
  String get verification_code;

  /// No description provided for @confirm_password_ucf.
  ///
  /// In en, this message translates to:
  /// **'\'Confirmer le mot de passe'**
  String get confirm_password_ucf;

  /// No description provided for @refund_reason_ucf.
  ///
  /// In en, this message translates to:
  /// **'Raison du remboursement'**
  String get refund_reason_ucf;

  /// No description provided for @seller_approval_ucf.
  ///
  /// In en, this message translates to:
  /// **'Approbation du vendeur'**
  String get seller_approval_ucf;

  /// No description provided for @walk_in_customer.
  ///
  /// In en, this message translates to:
  /// **'Accéder au client'**
  String get walk_in_customer;

  /// No description provided for @customer_info_ucf.
  ///
  /// In en, this message translates to:
  /// **'Informations client'**
  String get customer_info_ucf;

  /// No description provided for @select_category_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sélectionner une catégorie'**
  String get select_category_ucf;

  /// No description provided for @select_brand_ucf.
  ///
  /// In en, this message translates to:
  /// **'Sélectionner la marque'**
  String get select_brand_ucf;

  /// No description provided for @search_by_product_name_barcode.
  ///
  /// In en, this message translates to:
  /// **'Recherche par nom de produit/code-barres'**
  String get search_by_product_name_barcode;

  /// No description provided for @online_ucf.
  ///
  /// In en, this message translates to:
  /// **'En ligne'**
  String get online_ucf;

  /// No description provided for @for_product_ucf.
  ///
  /// In en, this message translates to:
  /// **'Pour le produit'**
  String get for_product_ucf;

  /// No description provided for @for_total_orders_ucf.
  ///
  /// In en, this message translates to:
  /// **'Pour le total des commandes'**
  String get for_total_orders_ucf;

  /// No description provided for @percentage_ucf.
  ///
  /// In en, this message translates to:
  /// **'Pourcentage'**
  String get percentage_ucf;

  /// No description provided for @verified_ucf.
  ///
  /// In en, this message translates to:
  /// **'Vérifié'**
  String get verified_ucf;

  /// No description provided for @unverified_ucf.
  ///
  /// In en, this message translates to:
  /// **'Non vérifié'**
  String get unverified_ucf;

  /// No description provided for @flat_ucf.
  ///
  /// In en, this message translates to:
  /// **'Plat'**
  String get flat_ucf;

  /// No description provided for @percent_ucf.
  ///
  /// In en, this message translates to:
  /// **'Pourcentage'**
  String get percent_ucf;

  /// No description provided for @free_shipping_ucf.
  ///
  /// In en, this message translates to:
  /// **'Livraison gratuite'**
  String get free_shipping_ucf;

  /// No description provided for @flat_rate_ucf.
  ///
  /// In en, this message translates to:
  /// **'Taux forfaitaire'**
  String get flat_rate_ucf;

  /// No description provided for @type_hit_submit.
  ///
  /// In en, this message translates to:
  /// **'Tapez et cliquez sur Soumettre'**
  String get type_hit_submit;

  /// No description provided for @show_stock_qty_ucf.
  ///
  /// In en, this message translates to:
  /// **'Afficher la quantité en stock'**
  String get show_stock_qty_ucf;

  /// No description provided for @show_stock_with_text_only_ucf.
  ///
  /// In en, this message translates to:
  /// **'Afficher le stock avec le texte uniquement'**
  String get show_stock_with_text_only_ucf;

  /// No description provided for @hide_stock_ucf.
  ///
  /// In en, this message translates to:
  /// **'Masquer le stock'**
  String get hide_stock_ucf;

  /// No description provided for @product_unit_required_ucf.
  ///
  /// In en, this message translates to:
  /// **'Unité de produit requise'**
  String get product_unit_required_ucf;

  /// No description provided for @starting_binding_price_required_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix de liaison de départ requis'**
  String get starting_binding_price_required_ucf;

  /// No description provided for @product_purchase_price_required_ucf.
  ///
  /// In en, this message translates to:
  /// **'Prix d\'achat du produit requis'**
  String get product_purchase_price_required_ucf;

  /// No description provided for @product_discount_required_ucf.
  ///
  /// In en, this message translates to:
  /// **'Remise sur le produit requise'**
  String get product_discount_required_ucf;

  /// No description provided for @write_message.
  ///
  /// In en, this message translates to:
  /// **'Écrire un message...'**
  String get write_message;

  /// No description provided for @download_ucf.
  ///
  /// In en, this message translates to:
  /// **'Télécharger'**
  String get download_ucf;

  /// No description provided for @file_has_download.
  ///
  /// In en, this message translates to:
  /// **'Le fichier a été téléchargé avec succès.'**
  String get file_has_download;

  /// No description provided for @select_date.
  ///
  /// In en, this message translates to:
  /// **'Sélectionner une date'**
  String get select_date;

  /// No description provided for @sellerexample.
  ///
  /// In en, this message translates to:
  /// **'seller@example.com'**
  String get sellerexample;

  /// No description provided for @elmira_wisozk.
  ///
  /// In en, this message translates to:
  /// **'Elmira Wisozk'**
  String get elmira_wisozk;

  /// No description provided for @plains_commerce_bank.
  ///
  /// In en, this message translates to:
  /// **'Banque de Commerce des Plaines'**
  String get plains_commerce_bank;

  /// No description provided for @fetching_flutterwave_url.
  ///
  /// In en, this message translates to:
  /// **'Récupération de l\'URL de Flutterwave...'**
  String get fetching_flutterwave_url;

  /// No description provided for @pay_with_flutterwave.
  ///
  /// In en, this message translates to:
  /// **'Payez avec Flutterwave'**
  String get pay_with_flutterwave;

  /// No description provided for @publish_ucf.
  ///
  /// In en, this message translates to:
  /// **'Publier'**
  String get publish_ucf;

  /// No description provided for @unpublish_ucf.
  ///
  /// In en, this message translates to:
  /// **'Annuler la publication'**
  String get unpublish_ucf;

  /// No description provided for @provide_reason.
  ///
  /// In en, this message translates to:
  /// **'Veuillez fournir la raison.'**
  String get provide_reason;

  /// No description provided for @type_reason.
  ///
  /// In en, this message translates to:
  /// **'Tapez la raison'**
  String get type_reason;

  /// No description provided for @please_pick_place.
  ///
  /// In en, this message translates to:
  /// **'Veuillez choisir un lieu'**
  String get please_pick_place;

  /// No description provided for @there_are_variations.
  ///
  /// In en, this message translates to:
  /// **'Il existe de nombreuses variantes de passages du Lorem Ipsum disponibles, mais la majorité ont subi des altérations sous une forme ou une autre, par injection d\'humour ou par des mots aléatoires qui ne semblent même pas crédibles'**
  String get there_are_variations;

  /// No description provided for @demo_store_ucf.
  ///
  /// In en, this message translates to:
  /// **'Magasin d\'actifs Filon'**
  String get demo_store_ucf;

  /// No description provided for @demo_address.
  ///
  /// In en, this message translates to:
  /// **'1348 Fancher Drive Dallas, TX 75225'**
  String get demo_address;

  /// No description provided for @sort_newest_ucf.
  ///
  /// In en, this message translates to:
  /// **'Trier par le plus récent'**
  String get sort_newest_ucf;

  /// No description provided for @sort_oldest_ucf.
  ///
  /// In en, this message translates to:
  /// **'Trier par le plus ancien'**
  String get sort_oldest_ucf;

  /// No description provided for @sort_smallest_ucf.
  ///
  /// In en, this message translates to:
  /// **'Trier par le plus petit'**
  String get sort_smallest_ucf;

  /// No description provided for @sort_largest_ucf.
  ///
  /// In en, this message translates to:
  /// **'Trier par le plus grand'**
  String get sort_largest_ucf;

  /// No description provided for @search_ucf.
  ///
  /// In en, this message translates to:
  /// **'Rechercher'**
  String get search_ucf;

  /// No description provided for @product_minimum_qty_required.
  ///
  /// In en, this message translates to:
  /// **'Quantité minimale de produit requise'**
  String get product_minimum_qty_required;

  /// No description provided for @name_required.
  ///
  /// In en, this message translates to:
  /// **'Nom requis'**
  String get name_required;

  /// No description provided for @email_required.
  ///
  /// In en, this message translates to:
  /// **'E-mail requis'**
  String get email_required;

  /// No description provided for @address_required.
  ///
  /// In en, this message translates to:
  /// **'Adresse requise'**
  String get address_required;

  /// No description provided for @country_required.
  ///
  /// In en, this message translates to:
  /// **'Nom du pays requis'**
  String get country_required;

  /// No description provided for @state_required.
  ///
  /// In en, this message translates to:
  /// **'Nom de l\'état requis'**
  String get state_required;

  /// No description provided for @city_required.
  ///
  /// In en, this message translates to:
  /// **'Nom de la ville requis'**
  String get city_required;

  /// No description provided for @postal_code_required.
  ///
  /// In en, this message translates to:
  /// **'Code postal requis'**
  String get postal_code_required;

  /// No description provided for @phone_number_required.
  ///
  /// In en, this message translates to:
  /// **'Numéro de téléphone requis'**
  String get phone_number_required;

  /// No description provided for @pos_manager.
  ///
  /// In en, this message translates to:
  /// **'Gestionnaire de points de vente'**
  String get pos_manager;

  /// No description provided for @sub_total.
  ///
  /// In en, this message translates to:
  /// **'Sous-total'**
  String get sub_total;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Taxe'**
  String get tax;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @shipping.
  ///
  /// In en, this message translates to:
  /// **'Expédition'**
  String get shipping;

  /// No description provided for @place_order.
  ///
  /// In en, this message translates to:
  /// **'Passer la commande'**
  String get place_order;

  /// No description provided for @no_customer_info.
  ///
  /// In en, this message translates to:
  /// **'Aucune information client sélectionnée.'**
  String get no_customer_info;

  /// No description provided for @confirm_with_cash.
  ///
  /// In en, this message translates to:
  /// **'Confirmer en espèces'**
  String get confirm_with_cash;

  /// No description provided for @order_summery.
  ///
  /// In en, this message translates to:
  /// **'Commandez Summery'**
  String get order_summery;

  /// No description provided for @offline_payment_info.
  ///
  /// In en, this message translates to:
  /// **'Informations de paiement hors ligne'**
  String get offline_payment_info;

  /// No description provided for @payment_proof.
  ///
  /// In en, this message translates to:
  /// **'Preuve de paiement'**
  String get payment_proof;

  /// No description provided for @back_ucf.
  ///
  /// In en, this message translates to:
  /// **'Retour'**
  String get back_ucf;

  /// No description provided for @a.
  ///
  /// In en, this message translates to:
  /// **''**
  String get a;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
