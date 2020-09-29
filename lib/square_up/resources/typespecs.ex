defmodule SquareUp.TypeSpecs do
  @type wage_setting :: %{
          optional(:created_at) => binary(),
          optional(:is_overtime_exempt) => boolean(),
          optional(:job_assignments) => [SquareUp.TypeSpecs.job_assignment()],
          optional(:team_member_id) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type retrieve_customer_response :: %{
          optional(:customer) => SquareUp.TypeSpecs.customer(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type create_location_request :: %{optional(:location) => SquareUp.TypeSpecs.location()}

  @type v1_retrieve_employee_request :: %{}

  @type retrieve_cash_drawer_shift_response :: %{
          optional(:cash_drawer_shift) => SquareUp.TypeSpecs.cash_drawer_shift(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type shift_status :: binary()
  @type redeem_loyalty_reward_request :: %{
          required(:idempotency_key) => binary(),
          required(:location_id) => binary()
        }

  @type order_fulfillment_pickup_details :: %{
          optional(:accepted_at) => binary(),
          optional(:auto_complete_duration) => binary(),
          optional(:cancel_reason) => binary(),
          optional(:canceled_at) => binary(),
          optional(:curbside_pickup_details) =>
            SquareUp.TypeSpecs.order_fulfillment_pickup_details_curbside_pickup_details(),
          optional(:expired_at) => binary(),
          optional(:expires_at) => binary(),
          optional(:is_curbside_pickup) => boolean(),
          optional(:note) => binary(),
          optional(:picked_up_at) => binary(),
          optional(:pickup_at) => binary(),
          optional(:pickup_window_duration) => binary(),
          optional(:placed_at) => binary(),
          optional(:prep_time_duration) => binary(),
          optional(:ready_at) => binary(),
          optional(:recipient) => SquareUp.TypeSpecs.order_fulfillment_recipient(),
          optional(:rejected_at) => binary(),
          optional(:schedule_type) => binary()
        }

  @type subscription_event_subscription_event_type :: binary()
  @type void_transaction_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type v1_settlement_entry :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:fee_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:payment_id) => binary(),
          optional(:type) => binary()
        }

  @type error_category :: binary()
  @type retrieve_wage_setting_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:wage_setting) => SquareUp.TypeSpecs.wage_setting()
        }

  @type cancel_payment_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:payment) => SquareUp.TypeSpecs.payment()
        }

  @type remove_dispute_evidence_request :: %{}

  @type retrieve_dispute_response :: %{
          optional(:dispute) => SquareUp.TypeSpecs.dispute(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type list_break_types_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:location_id) => binary()
        }

  @type update_order_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:order) => SquareUp.TypeSpecs.order()
        }

  @type bulk_update_team_members_request :: %{required(:team_members) => map()}

  @type create_customer_group_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:group) => SquareUp.TypeSpecs.customer_group()
        }

  @type money :: %{optional(:amount) => integer(), optional(:currency) => binary()}

  @type get_team_member_wage_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:team_member_wage) => SquareUp.TypeSpecs.team_member_wage()
        }

  @type v1_update_order_request :: %{
          required(:action) => binary(),
          optional(:canceled_note) => binary(),
          optional(:completed_note) => binary(),
          optional(:refunded_note) => binary(),
          optional(:shipped_tracking_number) => binary()
        }

  @type tender :: %{
          optional(:additional_recipients) => [SquareUp.TypeSpecs.additional_recipient()],
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:bank_transfer_details) => SquareUp.TypeSpecs.tender_bank_transfer_details(),
          optional(:card_details) => SquareUp.TypeSpecs.tender_card_details(),
          optional(:cash_details) => SquareUp.TypeSpecs.tender_cash_details(),
          optional(:created_at) => binary(),
          optional(:customer_id) => binary(),
          optional(:id) => binary(),
          optional(:location_id) => binary(),
          optional(:note) => binary(),
          optional(:payment_id) => binary(),
          optional(:processing_fee_money) => SquareUp.TypeSpecs.money(),
          optional(:tip_money) => SquareUp.TypeSpecs.money(),
          optional(:transaction_id) => binary(),
          required(:type) => binary()
        }

  @type v1_create_refund_request_type :: binary()
  @type catalog_query_range :: %{
          optional(:attribute_max_value) => integer(),
          optional(:attribute_min_value) => integer(),
          required(:attribute_name) => binary()
        }

  @type invoice_sort :: %{required(:field) => binary(), optional(:order) => binary()}

  @type cancel_invoice_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:invoice) => SquareUp.TypeSpecs.invoice()
        }

  @type v1_list_categories_request :: %{}

  @type list_employee_wages_response :: %{
          optional(:cursor) => binary(),
          optional(:employee_wages) => [SquareUp.TypeSpecs.employee_wage()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type order_line_item_discount :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:applied_money) => SquareUp.TypeSpecs.money(),
          optional(:catalog_object_id) => binary(),
          optional(:metadata) => map(),
          optional(:name) => binary(),
          optional(:percentage) => binary(),
          optional(:pricing_rule_id) => binary(),
          optional(:reward_ids) => [binary()],
          optional(:scope) => binary(),
          optional(:type) => binary(),
          optional(:uid) => binary()
        }

  @type delete_shift_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type catalog_pricing_type :: binary()
  @type create_order_request :: %{
          optional(:idempotency_key) => binary(),
          optional(:location_id) => binary(),
          optional(:order) => SquareUp.TypeSpecs.order()
        }

  @type v1_list_orders_request :: %{
          optional(:batch_token) => binary(),
          optional(:limit) => integer(),
          optional(:order) => binary()
        }

  @type v1_list_settlements_response :: %{
          optional(:items) => [SquareUp.TypeSpecs.v1_settlement()]
        }

  @type v1_update_page_request :: %{required(:body) => SquareUp.TypeSpecs.v1_page()}

  @type payment :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:app_fee_money) => SquareUp.TypeSpecs.money(),
          optional(:billing_address) => SquareUp.TypeSpecs.address(),
          optional(:buyer_email_address) => binary(),
          optional(:card_details) => SquareUp.TypeSpecs.card_payment_details(),
          optional(:created_at) => binary(),
          optional(:customer_id) => binary(),
          optional(:delay_action) => binary(),
          optional(:delay_duration) => binary(),
          optional(:delayed_until) => binary(),
          optional(:employee_id) => binary(),
          optional(:id) => binary(),
          optional(:location_id) => binary(),
          optional(:note) => binary(),
          optional(:order_id) => binary(),
          optional(:processing_fee) => [SquareUp.TypeSpecs.processing_fee()],
          optional(:receipt_number) => binary(),
          optional(:receipt_url) => binary(),
          optional(:reference_id) => binary(),
          optional(:refund_ids) => [binary()],
          optional(:refunded_money) => SquareUp.TypeSpecs.money(),
          optional(:shipping_address) => SquareUp.TypeSpecs.address(),
          optional(:source_type) => binary(),
          optional(:statement_description_identifier) => binary(),
          optional(:status) => binary(),
          optional(:tip_money) => SquareUp.TypeSpecs.money(),
          optional(:total_money) => SquareUp.TypeSpecs.money(),
          optional(:updated_at) => binary()
        }

  @type v1_cash_drawer_shift_event_type :: binary()
  @type list_loyalty_programs_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:programs) => [SquareUp.TypeSpecs.loyalty_program()]
        }

  @type v1_fee :: %{
          optional(:adjustment_type) => binary(),
          optional(:applies_to_custom_amounts) => boolean(),
          optional(:calculation_phase) => binary(),
          optional(:enabled) => boolean(),
          optional(:id) => binary(),
          optional(:inclusion_type) => binary(),
          optional(:name) => binary(),
          optional(:rate) => binary(),
          optional(:type) => binary(),
          optional(:v2_id) => binary()
        }

  @type v1_list_items_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_item()]}

  @type tender_cash_details :: %{
          optional(:buyer_tendered_money) => SquareUp.TypeSpecs.money(),
          optional(:change_back_money) => SquareUp.TypeSpecs.money()
        }

  @type v1_payment_itemization :: %{
          optional(:discount_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:discounts) => [SquareUp.TypeSpecs.v1_payment_discount()],
          optional(:gross_sales_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:item_detail) => SquareUp.TypeSpecs.v1_payment_item_detail(),
          optional(:item_variation_name) => binary(),
          optional(:itemization_type) => binary(),
          optional(:modifiers) => [SquareUp.TypeSpecs.v1_payment_modifier()],
          optional(:name) => binary(),
          optional(:net_sales_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:notes) => binary(),
          optional(:quantity) => number(),
          optional(:single_quantity_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:taxes) => [SquareUp.TypeSpecs.v1_payment_tax()],
          optional(:total_money) => SquareUp.TypeSpecs.v1_money()
        }

  @type publish_invoice_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:invoice) => SquareUp.TypeSpecs.invoice()
        }

  @type employee_wage :: %{
          optional(:employee_id) => binary(),
          optional(:hourly_rate) => SquareUp.TypeSpecs.money(),
          optional(:id) => binary(),
          optional(:title) => binary()
        }

  @type update_shift_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:shift) => SquareUp.TypeSpecs.shift()
        }

  @type catalog_modifier_list :: %{
          optional(:modifiers) => [SquareUp.TypeSpecs.catalog_object()],
          optional(:name) => binary(),
          optional(:ordinal) => integer(),
          optional(:selection_type) => binary()
        }

  @type v1_inventory_entry :: %{
          optional(:quantity_on_hand) => number(),
          optional(:variation_id) => binary()
        }

  @type v1_retrieve_cash_drawer_shift_request :: %{}

  @type v1_tender_entry_method :: binary()
  @type update_item_modifier_lists_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:updated_at) => binary()
        }

  @type get_shift_request :: %{}

  @type list_disputes_request :: %{
          optional(:cursor) => binary(),
          optional(:location_id) => binary(),
          optional(:states) => [binary()]
        }

  @type add_group_to_customer_request :: %{}

  @type loyalty_event_redeem_reward :: %{
          required(:loyalty_program_id) => binary(),
          optional(:order_id) => binary(),
          optional(:reward_id) => binary()
        }

  @type v1_list_payments_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_payment()]}

  @type refund_payment_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:refund) => SquareUp.TypeSpecs.payment_refund()
        }

  @type v1_delete_modifier_option_request :: %{}

  @type v1_list_employees_request :: %{
          optional(:batch_token) => binary(),
          optional(:begin_created_at) => binary(),
          optional(:begin_updated_at) => binary(),
          optional(:end_created_at) => binary(),
          optional(:end_updated_at) => binary(),
          optional(:external_id) => binary(),
          optional(:limit) => integer(),
          optional(:order) => binary(),
          optional(:status) => binary()
        }

  @type cash_drawer_device :: %{optional(:id) => binary(), optional(:name) => binary()}

  @type search_loyalty_rewards_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:rewards) => [SquareUp.TypeSpecs.loyalty_reward()]
        }

  @type customer_query :: %{
          optional(:filter) => SquareUp.TypeSpecs.customer_filter(),
          optional(:sort) => SquareUp.TypeSpecs.customer_sort()
        }

  @type measurement_unit_generic :: binary()
  @type create_payment_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:payment) => SquareUp.TypeSpecs.payment()
        }

  @type loyalty_reward :: %{
          optional(:created_at) => binary(),
          optional(:id) => binary(),
          required(:loyalty_account_id) => binary(),
          optional(:order_id) => binary(),
          optional(:points) => integer(),
          optional(:redeemed_at) => binary(),
          required(:reward_tier_id) => binary(),
          optional(:status) => binary(),
          optional(:updated_at) => binary()
        }

  @type inventory_transfer :: %{
          optional(:catalog_object_id) => binary(),
          optional(:catalog_object_type) => binary(),
          optional(:created_at) => binary(),
          optional(:employee_id) => binary(),
          optional(:from_location_id) => binary(),
          optional(:id) => binary(),
          optional(:occurred_at) => binary(),
          optional(:quantity) => binary(),
          optional(:reference_id) => binary(),
          optional(:source) => SquareUp.TypeSpecs.source_application(),
          optional(:state) => binary(),
          optional(:to_location_id) => binary()
        }

  @type batch_retrieve_catalog_objects_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:objects) => [SquareUp.TypeSpecs.catalog_object()],
          optional(:related_objects) => [SquareUp.TypeSpecs.catalog_object()]
        }

  @type refund :: %{
          optional(:additional_recipients) => [SquareUp.TypeSpecs.additional_recipient()],
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:created_at) => binary(),
          required(:id) => binary(),
          required(:location_id) => binary(),
          optional(:processing_fee_money) => SquareUp.TypeSpecs.money(),
          required(:reason) => binary(),
          required(:status) => binary(),
          required(:tender_id) => binary(),
          required(:transaction_id) => binary()
        }

  @type v1_retrieve_employee_role_request :: %{}

  @type revoke_token_request :: %{
          optional(:access_token) => binary(),
          optional(:client_id) => binary(),
          optional(:merchant_id) => binary(),
          optional(:revoke_only_access_token) => boolean()
        }

  @type list_subscription_events_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer()
        }

  @type invoice_recipient :: %{
          optional(:address) => SquareUp.TypeSpecs.address(),
          optional(:company_name) => binary(),
          optional(:customer_id) => binary(),
          optional(:email_address) => binary(),
          optional(:family_name) => binary(),
          optional(:given_name) => binary(),
          optional(:phone_number) => binary()
        }

  @type retrieve_subscription_request :: %{}

  @type calculate_loyalty_points_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:points) => integer()
        }

  @type v1_bank_account :: %{
          optional(:account_number_suffix) => binary(),
          optional(:bank_name) => binary(),
          optional(:currency_code) => binary(),
          optional(:id) => binary(),
          optional(:merchant_id) => binary(),
          optional(:name) => binary(),
          optional(:routing_number) => binary(),
          optional(:type) => binary()
        }

  @type order_line_item_applied_discount :: %{
          optional(:applied_money) => SquareUp.TypeSpecs.money(),
          required(:discount_uid) => binary(),
          optional(:uid) => binary()
        }

  @type register_domain_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:status) => binary()
        }

  @type bank_account :: %{
          required(:account_number_suffix) => binary(),
          required(:account_type) => binary(),
          optional(:bank_name) => binary(),
          required(:country) => binary(),
          required(:creditable) => boolean(),
          required(:currency) => binary(),
          optional(:debit_mandate_reference_id) => binary(),
          required(:debitable) => boolean(),
          optional(:fingerprint) => binary(),
          required(:holder_name) => binary(),
          required(:id) => binary(),
          optional(:location_id) => binary(),
          required(:primary_bank_identification_number) => binary(),
          optional(:reference_id) => binary(),
          optional(:secondary_bank_identification_number) => binary(),
          required(:status) => binary(),
          optional(:version) => integer()
        }

  @type list_catalog_request :: %{optional(:cursor) => binary(), optional(:types) => binary()}

  @type update_customer_group_request :: %{
          required(:group) => SquareUp.TypeSpecs.customer_group()
        }

  @type delete_customer_card_request :: %{}

  @type accumulate_loyalty_points_request :: %{
          required(:accumulate_points) => SquareUp.TypeSpecs.loyalty_event_accumulate_points(),
          required(:idempotency_key) => binary(),
          required(:location_id) => binary()
        }

  @type create_customer_response :: %{
          optional(:customer) => SquareUp.TypeSpecs.customer(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type batch_retrieve_inventory_counts_response :: %{
          optional(:counts) => [SquareUp.TypeSpecs.inventory_count()],
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type retrieve_location_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:location) => SquareUp.TypeSpecs.location()
        }

  @type list_payments_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:payments) => [SquareUp.TypeSpecs.payment()]
        }

  @type search_orders_state_filter :: %{required(:states) => [binary()]}

  @type accumulate_loyalty_points_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:event) => SquareUp.TypeSpecs.loyalty_event()
        }

  @type create_shift_request :: %{
          optional(:idempotency_key) => binary(),
          required(:shift) => SquareUp.TypeSpecs.shift()
        }

  @type update_customer_group_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:group) => SquareUp.TypeSpecs.customer_group()
        }

  @type list_break_types_response :: %{
          optional(:break_types) => [SquareUp.TypeSpecs.break_type()],
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type batch_retrieve_orders_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:orders) => [SquareUp.TypeSpecs.order()]
        }

  @type list_transactions_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:transactions) => [SquareUp.TypeSpecs.transaction()]
        }

  @type catalog_custom_attribute_value :: %{
          optional(:boolean_value) => boolean(),
          optional(:custom_attribute_definition_id) => binary(),
          optional(:key) => binary(),
          optional(:name) => binary(),
          optional(:number_value) => binary(),
          optional(:selection_uid_values) => [binary()],
          optional(:string_value) => binary(),
          optional(:type) => binary()
        }

  @type tip_settings :: %{
          optional(:allow_tipping) => boolean(),
          optional(:custom_tip_field) => boolean(),
          optional(:separate_tip_screen) => boolean()
        }

  @type get_bank_account_request :: %{}

  @type add_group_to_customer_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type retrieve_employee_request :: %{}

  @type list_cash_drawer_shifts_request :: %{
          optional(:begin_time) => binary(),
          optional(:cursor) => binary(),
          optional(:end_time) => binary(),
          optional(:limit) => integer(),
          required(:location_id) => binary(),
          optional(:sort_order) => binary()
        }

  @type search_shifts_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:query) => SquareUp.TypeSpecs.shift_query()
        }

  @type batch_change_inventory_request :: %{
          optional(:changes) => [SquareUp.TypeSpecs.inventory_change()],
          optional(:idempotency_key) => binary(),
          optional(:ignore_unchanged_counts) => boolean()
        }

  @type location_type :: binary()
  @type exclude_strategy :: binary()
  @type additional_recipient :: %{
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          required(:description) => binary(),
          required(:location_id) => binary(),
          optional(:receivable_id) => binary()
        }

  @type v1_payment_itemization_itemization_type :: binary()
  @type adjust_loyalty_points_request :: %{
          required(:adjust_points) => SquareUp.TypeSpecs.loyalty_event_adjust_points(),
          required(:idempotency_key) => binary()
        }

  @type loyalty_event_type_filter :: %{required(:types) => [binary()]}

  @type search_orders_date_time_filter :: %{
          optional(:closed_at) => SquareUp.TypeSpecs.time_range(),
          optional(:created_at) => SquareUp.TypeSpecs.time_range(),
          optional(:updated_at) => SquareUp.TypeSpecs.time_range()
        }

  @type cancel_invoice_request :: %{required(:version) => integer()}

  @type v1_merchant_business_type :: binary()
  @type calculate_loyalty_points_request :: %{
          optional(:order_id) => binary(),
          optional(:transaction_amount_money) => SquareUp.TypeSpecs.money()
        }

  @type processing_fee :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:effective_at) => binary(),
          optional(:type) => binary()
        }

  @type create_customer_card_request :: %{
          optional(:billing_address) => SquareUp.TypeSpecs.address(),
          required(:card_nonce) => binary(),
          optional(:cardholder_name) => binary(),
          optional(:verification_token) => binary()
        }

  @type filter_value :: %{
          optional(:all) => [binary()],
          optional(:any) => [binary()],
          optional(:none) => [binary()]
        }

  @type retrieve_inventory_count_response :: %{
          optional(:counts) => [SquareUp.TypeSpecs.inventory_count()],
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type dispute_evidence_file :: %{
          optional(:filename) => binary(),
          optional(:filetype) => binary()
        }

  @type loyalty_event_create_reward :: %{
          required(:loyalty_program_id) => binary(),
          required(:points) => integer(),
          optional(:reward_id) => binary()
        }

  @type inventory_alert_type :: binary()
  @type v1_payment_surcharge :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:applied_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:name) => binary(),
          optional(:rate) => binary(),
          optional(:surcharge_id) => binary(),
          optional(:taxable) => boolean(),
          optional(:taxes) => [SquareUp.TypeSpecs.v1_payment_tax()],
          optional(:type) => binary()
        }

  @type v1_discount_discount_type :: binary()
  @type loyalty_event_source :: binary()
  @type catalog_quick_amounts_settings :: %{
          optional(:amounts) => [SquareUp.TypeSpecs.catalog_quick_amount()],
          optional(:eligible_for_auto_amounts) => boolean(),
          required(:option) => binary()
        }

  @type get_terminal_checkout_response :: %{
          optional(:checkout) => SquareUp.TypeSpecs.terminal_checkout(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type item_variation_location_overrides :: %{
          optional(:inventory_alert_threshold) => integer(),
          optional(:inventory_alert_type) => binary(),
          optional(:location_id) => binary(),
          optional(:price_money) => SquareUp.TypeSpecs.money(),
          optional(:pricing_type) => binary(),
          optional(:track_inventory) => boolean()
        }

  @type terminal_checkout :: %{
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:cancel_reason) => binary(),
          optional(:created_at) => binary(),
          optional(:deadline_duration) => binary(),
          required(:device_options) => SquareUp.TypeSpecs.device_checkout_options(),
          optional(:id) => binary(),
          optional(:note) => binary(),
          optional(:payment_ids) => [binary()],
          optional(:reference_id) => binary(),
          optional(:status) => binary(),
          optional(:updated_at) => binary()
        }

  @type bulk_update_team_members_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:team_members) => map()
        }

  @type loyalty_program :: %{
          required(:accrual_rules) => [SquareUp.TypeSpecs.loyalty_program_accrual_rule()],
          required(:created_at) => binary(),
          optional(:expiration_policy) => SquareUp.TypeSpecs.loyalty_program_expiration_policy(),
          required(:id) => binary(),
          required(:location_ids) => [binary()],
          required(:reward_tiers) => [SquareUp.TypeSpecs.loyalty_program_reward_tier()],
          required(:status) => binary(),
          required(:terminology) => SquareUp.TypeSpecs.loyalty_program_terminology(),
          required(:updated_at) => binary()
        }

  @type v1_list_orders_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_order()]}

  @type loyalty_event_query :: %{optional(:filter) => SquareUp.TypeSpecs.loyalty_event_filter()}

  @type search_orders_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:order_entries) => [SquareUp.TypeSpecs.order_entry()],
          optional(:orders) => [SquareUp.TypeSpecs.order()]
        }

  @type shift_wage :: %{
          optional(:hourly_rate) => SquareUp.TypeSpecs.money(),
          optional(:title) => binary()
        }

  @type v1_delete_modifier_list_request :: %{}

  @type cash_drawer_shift_summary :: %{
          optional(:closed_at) => binary(),
          optional(:closed_cash_money) => SquareUp.TypeSpecs.money(),
          optional(:description) => binary(),
          optional(:ended_at) => binary(),
          optional(:expected_cash_money) => SquareUp.TypeSpecs.money(),
          optional(:id) => binary(),
          optional(:opened_at) => binary(),
          optional(:opened_cash_money) => SquareUp.TypeSpecs.money(),
          optional(:state) => binary()
        }

  @type catalog_query_text :: %{required(:keywords) => [binary()]}

  @type search_orders_source_filter :: %{optional(:source_names) => [binary()]}

  @type job_assignment_pay_type :: binary()
  @type loyalty_event_date_time_filter :: %{
          required(:created_at) => SquareUp.TypeSpecs.time_range()
        }

  @type order_fulfillment_shipment_details :: %{
          optional(:cancel_reason) => binary(),
          optional(:canceled_at) => binary(),
          optional(:carrier) => binary(),
          optional(:expected_shipped_at) => binary(),
          optional(:failed_at) => binary(),
          optional(:failure_reason) => binary(),
          optional(:in_progress_at) => binary(),
          optional(:packaged_at) => binary(),
          optional(:placed_at) => binary(),
          optional(:recipient) => SquareUp.TypeSpecs.order_fulfillment_recipient(),
          optional(:shipped_at) => binary(),
          optional(:shipping_note) => binary(),
          optional(:shipping_type) => binary(),
          optional(:tracking_number) => binary(),
          optional(:tracking_url) => binary()
        }

  @type register_domain_request :: %{required(:domain_name) => binary()}

  @type v1_variation_inventory_alert_type :: binary()
  @type order_created :: %{
          optional(:created_at) => binary(),
          optional(:location_id) => binary(),
          optional(:order_id) => binary(),
          optional(:state) => binary(),
          optional(:version) => integer()
        }

  @type catalog_tax :: %{
          optional(:applies_to_custom_amounts) => boolean(),
          optional(:calculation_phase) => binary(),
          optional(:enabled) => boolean(),
          optional(:inclusion_type) => binary(),
          optional(:name) => binary(),
          optional(:percentage) => binary()
        }

  @type invoice_sort_field :: binary()
  @type v1_order_history_entry_action :: binary()
  @type v1_list_items_request :: %{optional(:batch_token) => binary()}

  @type order_quantity_unit :: %{
          optional(:measurement_unit) => SquareUp.TypeSpecs.measurement_unit(),
          optional(:precision) => integer()
        }

  @type v1_update_modifier_list_request_selection_type :: binary()
  @type create_checkout_response :: %{
          optional(:checkout) => SquareUp.TypeSpecs.checkout(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type disputed_payment :: %{optional(:payment_id) => binary()}

  @type catalog_item_modifier_list_info :: %{
          optional(:enabled) => boolean(),
          optional(:max_selected_modifiers) => integer(),
          optional(:min_selected_modifiers) => integer(),
          required(:modifier_list_id) => binary(),
          optional(:modifier_overrides) => [SquareUp.TypeSpecs.catalog_modifier_override()]
        }

  @type catalog_custom_attribute_definition_type :: binary()
  @type retrieve_inventory_adjustment_request :: %{}

  @type device :: %{optional(:id) => binary(), optional(:name) => binary()}

  @type v1_merchant_account_type :: binary()
  @type measurement_unit_custom :: %{
          required(:abbreviation) => binary(),
          required(:name) => binary()
        }

  @type coordinates :: %{optional(:latitude) => number(), optional(:longitude) => number()}

  @type list_dispute_evidence_request :: %{}

  @type order_source :: %{optional(:name) => binary()}

  @type measurement_unit_area :: binary()
  @type list_merchants_request :: %{optional(:cursor) => integer()}

  @type dispute_evidence_type :: binary()
  @type v1_tender :: %{
          optional(:card_brand) => binary(),
          optional(:change_back_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:employee_id) => binary(),
          optional(:entry_method) => binary(),
          optional(:id) => binary(),
          optional(:is_exchange) => boolean(),
          optional(:name) => binary(),
          optional(:pan_suffix) => binary(),
          optional(:payment_note) => binary(),
          optional(:receipt_url) => binary(),
          optional(:refunded_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:settled_at) => binary(),
          optional(:tendered_at) => binary(),
          optional(:tendered_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:total_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:type) => binary()
        }

  @type delete_customer_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type delete_invoice_request :: %{optional(:version) => integer()}

  @type v1_discount :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:color) => binary(),
          optional(:discount_type) => binary(),
          optional(:id) => binary(),
          optional(:name) => binary(),
          optional(:pin_required) => boolean(),
          optional(:rate) => binary(),
          optional(:v2_id) => binary()
        }

  @type v1_list_employees_request_status :: binary()
  @type v1_list_cash_drawer_shifts_request :: %{
          optional(:begin_time) => binary(),
          optional(:end_time) => binary(),
          optional(:order) => binary()
        }

  @type loyalty_program_status :: binary()
  @type v1_list_settlements_request :: %{
          optional(:batch_token) => binary(),
          optional(:begin_time) => binary(),
          optional(:end_time) => binary(),
          optional(:limit) => integer(),
          optional(:order) => binary(),
          optional(:status) => binary()
        }

  @type v1_apply_fee_request :: %{}

  @type order_line_item :: %{
          optional(:applied_discounts) => [SquareUp.TypeSpecs.order_line_item_applied_discount()],
          optional(:applied_taxes) => [SquareUp.TypeSpecs.order_line_item_applied_tax()],
          optional(:base_price_money) => SquareUp.TypeSpecs.money(),
          optional(:catalog_object_id) => binary(),
          optional(:gross_sales_money) => SquareUp.TypeSpecs.money(),
          optional(:metadata) => map(),
          optional(:modifiers) => [SquareUp.TypeSpecs.order_line_item_modifier()],
          optional(:name) => binary(),
          optional(:note) => binary(),
          required(:quantity) => binary(),
          optional(:quantity_unit) => SquareUp.TypeSpecs.order_quantity_unit(),
          optional(:total_discount_money) => SquareUp.TypeSpecs.money(),
          optional(:total_money) => SquareUp.TypeSpecs.money(),
          optional(:total_tax_money) => SquareUp.TypeSpecs.money(),
          optional(:uid) => binary(),
          optional(:variation_name) => binary(),
          optional(:variation_total_price_money) => SquareUp.TypeSpecs.money()
        }

  @type catalog_info_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:limits) => SquareUp.TypeSpecs.catalog_info_response_limits(),
          optional(:standard_unit_description_group) =>
            SquareUp.TypeSpecs.standard_unit_description_group()
        }

  @type customer_inclusion_exclusion :: binary()
  @type update_item_taxes_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:updated_at) => binary()
        }

  @type v1_retrieve_timecard_request :: %{}

  @type charge_request :: %{
          optional(:additional_recipients) => [SquareUp.TypeSpecs.additional_recipient()],
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:billing_address) => SquareUp.TypeSpecs.address(),
          optional(:buyer_email_address) => binary(),
          optional(:card_nonce) => binary(),
          optional(:customer_card_id) => binary(),
          optional(:customer_id) => binary(),
          optional(:delay_capture) => boolean(),
          required(:idempotency_key) => binary(),
          optional(:note) => binary(),
          optional(:order_id) => binary(),
          optional(:reference_id) => binary(),
          optional(:shipping_address) => SquareUp.TypeSpecs.address(),
          optional(:verification_token) => binary()
        }

  @type customer_sort :: %{optional(:field) => binary(), optional(:order) => binary()}

  @type retrieve_customer_segment_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:segment) => SquareUp.TypeSpecs.customer_segment()
        }

  @type order_updated :: %{
          optional(:created_at) => binary(),
          optional(:location_id) => binary(),
          optional(:order_id) => binary(),
          optional(:state) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type loyalty_event :: %{
          optional(:accumulate_points) => SquareUp.TypeSpecs.loyalty_event_accumulate_points(),
          optional(:adjust_points) => SquareUp.TypeSpecs.loyalty_event_adjust_points(),
          optional(:create_reward) => SquareUp.TypeSpecs.loyalty_event_create_reward(),
          required(:created_at) => binary(),
          optional(:delete_reward) => SquareUp.TypeSpecs.loyalty_event_delete_reward(),
          optional(:expire_points) => SquareUp.TypeSpecs.loyalty_event_expire_points(),
          required(:id) => binary(),
          optional(:location_id) => binary(),
          required(:loyalty_account_id) => binary(),
          optional(:other_event) => SquareUp.TypeSpecs.loyalty_event_other(),
          optional(:redeem_reward) => SquareUp.TypeSpecs.loyalty_event_redeem_reward(),
          required(:source) => binary(),
          required(:type) => binary()
        }

  @type v1_list_refunds_request :: %{
          optional(:batch_token) => binary(),
          optional(:begin_time) => binary(),
          optional(:end_time) => binary(),
          optional(:limit) => integer(),
          optional(:order) => binary()
        }

  @type inventory_physical_count :: %{
          optional(:catalog_object_id) => binary(),
          optional(:catalog_object_type) => binary(),
          optional(:created_at) => binary(),
          optional(:employee_id) => binary(),
          optional(:id) => binary(),
          optional(:location_id) => binary(),
          optional(:occurred_at) => binary(),
          optional(:quantity) => binary(),
          optional(:reference_id) => binary(),
          optional(:source) => SquareUp.TypeSpecs.source_application(),
          optional(:state) => binary()
        }

  @type search_subscriptions_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:subscriptions) => [SquareUp.TypeSpecs.subscription()]
        }

  @type renew_token_request :: %{optional(:access_token) => binary()}

  @type cancel_subscription_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:subscription) => SquareUp.TypeSpecs.subscription()
        }

  @type list_customers_request :: %{
          optional(:cursor) => binary(),
          optional(:sort_field) => binary(),
          optional(:sort_order) => binary()
        }

  @type v1_page_cell_object_type :: binary()
  @type get_bank_account_response :: %{
          optional(:bank_account) => SquareUp.TypeSpecs.bank_account(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type loyalty_event_filter :: %{
          optional(:date_time_filter) => SquareUp.TypeSpecs.loyalty_event_date_time_filter(),
          optional(:location_filter) => SquareUp.TypeSpecs.loyalty_event_location_filter(),
          optional(:loyalty_account_filter) =>
            SquareUp.TypeSpecs.loyalty_event_loyalty_account_filter(),
          optional(:order_filter) => SquareUp.TypeSpecs.loyalty_event_order_filter(),
          optional(:type_filter) => SquareUp.TypeSpecs.loyalty_event_type_filter()
        }

  @type v1_variation_pricing_type :: binary()
  @type create_customer_card_response :: %{
          optional(:card) => SquareUp.TypeSpecs.card(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type revoke_token_response :: %{optional(:success) => boolean()}

  @type break :: %{
          required(:break_type_id) => binary(),
          optional(:end_at) => binary(),
          required(:expected_duration) => binary(),
          optional(:id) => binary(),
          required(:is_paid) => boolean(),
          required(:name) => binary(),
          required(:start_at) => binary()
        }

  @type catalog_custom_attribute_definition_number_config :: %{optional(:precision) => integer()}

  @type workweek_config :: %{
          optional(:created_at) => binary(),
          optional(:id) => binary(),
          required(:start_of_day_local_time) => binary(),
          required(:start_of_week) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type error :: %{
          required(:category) => binary(),
          required(:code) => binary(),
          optional(:detail) => binary(),
          optional(:field) => binary()
        }

  @type bulk_create_team_members_request :: %{required(:team_members) => map()}

  @type search_catalog_objects_request :: %{
          optional(:begin_time) => binary(),
          optional(:cursor) => binary(),
          optional(:include_deleted_objects) => boolean(),
          optional(:include_related_objects) => boolean(),
          optional(:limit) => integer(),
          optional(:object_types) => [binary()],
          optional(:query) => SquareUp.TypeSpecs.catalog_query()
        }

  @type v1_remove_fee_request :: %{}

  @type v1_settlement_entry_type :: binary()
  @type accept_dispute_response :: %{
          optional(:dispute) => SquareUp.TypeSpecs.dispute(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type order_fulfillment_pickup_details_schedule_type :: binary()
  @type v1_delete_item_request :: %{}

  @type retrieve_merchant_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:merchant) => SquareUp.TypeSpecs.merchant()
        }

  @type v1_list_timecard_events_request :: %{}

  @type v1_modifier_list :: %{
          optional(:id) => binary(),
          optional(:modifier_options) => [SquareUp.TypeSpecs.v1_modifier_option()],
          optional(:name) => binary(),
          optional(:selection_type) => binary(),
          optional(:v2_id) => binary()
        }

  @type loyalty_program_reward_definition_scope :: binary()
  @type v1_timecard :: %{
          optional(:clockin_location_id) => binary(),
          optional(:clockin_time) => binary(),
          optional(:clockout_location_id) => binary(),
          optional(:clockout_time) => binary(),
          optional(:created_at) => binary(),
          optional(:deleted) => boolean(),
          optional(:doubletime_seconds_worked) => number(),
          required(:employee_id) => binary(),
          optional(:id) => binary(),
          optional(:overtime_seconds_worked) => number(),
          optional(:regular_seconds_worked) => number(),
          optional(:updated_at) => binary()
        }

  @type weekday :: binary()
  @type v1_list_categories_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_category()]}

  @type shift_sort :: %{optional(:field) => binary(), optional(:order) => binary()}

  @type terminal_checkout_query_sort :: %{optional(:sort_order) => binary()}

  @type order_fulfillment_updated_update :: %{
          optional(:fulfillment_uid) => binary(),
          optional(:new_state) => binary(),
          optional(:old_state) => binary()
        }

  @type v1_delete_page_cell_request :: %{
          optional(:column) => binary(),
          optional(:row) => binary()
        }

  @type update_customer_request :: %{
          optional(:address) => SquareUp.TypeSpecs.address(),
          optional(:birthday) => binary(),
          optional(:company_name) => binary(),
          optional(:email_address) => binary(),
          optional(:family_name) => binary(),
          optional(:given_name) => binary(),
          optional(:nickname) => binary(),
          optional(:note) => binary(),
          optional(:phone_number) => binary(),
          optional(:reference_id) => binary()
        }

  @type catalog_object_batch :: %{required(:objects) => [SquareUp.TypeSpecs.catalog_object()]}

  @type v1_create_discount_request :: %{optional(:body) => SquareUp.TypeSpecs.v1_discount()}

  @type order_state :: binary()
  @type update_invoice_request :: %{
          optional(:fields_to_clear) => [binary()],
          optional(:idempotency_key) => binary(),
          required(:invoice) => SquareUp.TypeSpecs.invoice()
        }

  @type merchant :: %{
          optional(:business_name) => binary(),
          required(:country) => binary(),
          optional(:currency) => binary(),
          optional(:id) => binary(),
          optional(:language_code) => binary(),
          optional(:main_location_id) => binary(),
          optional(:status) => binary()
        }

  @type v1_create_variation_request :: %{optional(:body) => SquareUp.TypeSpecs.v1_variation()}

  @type product_type :: binary()
  @type submit_evidence_response :: %{
          optional(:dispute) => SquareUp.TypeSpecs.dispute(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type tender_card_details_status :: binary()
  @type invoice_request_type :: binary()
  @type order_line_item_applied_tax :: %{
          optional(:applied_money) => SquareUp.TypeSpecs.money(),
          required(:tax_uid) => binary(),
          optional(:uid) => binary()
        }

  @type order_line_item_modifier :: %{
          optional(:base_price_money) => SquareUp.TypeSpecs.money(),
          optional(:catalog_object_id) => binary(),
          optional(:name) => binary(),
          optional(:total_price_money) => SquareUp.TypeSpecs.money(),
          optional(:uid) => binary()
        }

  @type v1_payment_tax_inclusion_type :: binary()
  @type tender_bank_transfer_details :: %{optional(:status) => binary()}

  @type v1_item_type :: binary()
  @type v1_update_category_request :: %{required(:body) => SquareUp.TypeSpecs.v1_category()}

  @type retrieve_merchant_request :: %{}

  @type create_team_member_request :: %{
          optional(:idempotency_key) => binary(),
          optional(:team_member) => SquareUp.TypeSpecs.team_member()
        }

  @type update_workweek_config_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:workweek_config) => SquareUp.TypeSpecs.workweek_config()
        }

  @type retrieve_loyalty_reward_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:reward) => SquareUp.TypeSpecs.loyalty_reward()
        }

  @type adjust_loyalty_points_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:event) => SquareUp.TypeSpecs.loyalty_event()
        }

  @type catalog_item :: %{
          optional(:abbreviation) => binary(),
          optional(:available_electronically) => boolean(),
          optional(:available_for_pickup) => boolean(),
          optional(:available_online) => boolean(),
          optional(:category_id) => binary(),
          optional(:description) => binary(),
          optional(:item_options) => [SquareUp.TypeSpecs.catalog_item_option_for_item()],
          optional(:label_color) => binary(),
          optional(:modifier_list_info) => [SquareUp.TypeSpecs.catalog_item_modifier_list_info()],
          optional(:name) => binary(),
          optional(:product_type) => binary(),
          optional(:skip_modifier_screen) => boolean(),
          optional(:tax_ids) => [binary()],
          optional(:variations) => [SquareUp.TypeSpecs.catalog_object()]
        }

  @type customer_filter :: %{
          optional(:created_at) => SquareUp.TypeSpecs.time_range(),
          optional(:creation_source) => SquareUp.TypeSpecs.customer_creation_source_filter(),
          optional(:email_address) => SquareUp.TypeSpecs.customer_text_filter(),
          optional(:group_ids) => SquareUp.TypeSpecs.filter_value(),
          optional(:phone_number) => SquareUp.TypeSpecs.customer_text_filter(),
          optional(:reference_id) => SquareUp.TypeSpecs.customer_text_filter(),
          optional(:updated_at) => SquareUp.TypeSpecs.time_range()
        }

  @type batch_delete_catalog_objects_response :: %{
          optional(:deleted_at) => binary(),
          optional(:deleted_object_ids) => [binary()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type list_payment_refunds_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:refunds) => [SquareUp.TypeSpecs.payment_refund()]
        }

  @type batch_retrieve_orders_request :: %{
          optional(:location_id) => binary(),
          required(:order_ids) => [binary()]
        }

  @type retrieve_location_request :: %{}

  @type dispute :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:brand_dispute_id) => binary(),
          optional(:card_brand) => binary(),
          optional(:created_at) => binary(),
          optional(:dispute_id) => binary(),
          optional(:disputed_payment) => SquareUp.TypeSpecs.disputed_payment(),
          optional(:due_at) => binary(),
          optional(:evidence_ids) => [binary()],
          optional(:location_id) => binary(),
          optional(:reason) => binary(),
          optional(:reported_date) => binary(),
          optional(:state) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type invoice_filter :: %{
          optional(:customer_ids) => [binary()],
          required(:location_ids) => [binary()]
        }

  @type v1_employee_role_permissions :: binary()
  @type v1_create_page_request :: %{optional(:body) => SquareUp.TypeSpecs.v1_page()}

  @type order :: %{
          optional(:closed_at) => binary(),
          optional(:created_at) => binary(),
          optional(:customer_id) => binary(),
          optional(:discounts) => [SquareUp.TypeSpecs.order_line_item_discount()],
          optional(:fulfillments) => [SquareUp.TypeSpecs.order_fulfillment()],
          optional(:id) => binary(),
          optional(:line_items) => [SquareUp.TypeSpecs.order_line_item()],
          required(:location_id) => binary(),
          optional(:metadata) => map(),
          optional(:net_amounts) => SquareUp.TypeSpecs.order_money_amounts(),
          optional(:pricing_options) => SquareUp.TypeSpecs.order_pricing_options(),
          optional(:reference_id) => binary(),
          optional(:refunds) => [SquareUp.TypeSpecs.refund()],
          optional(:return_amounts) => SquareUp.TypeSpecs.order_money_amounts(),
          optional(:returns) => [SquareUp.TypeSpecs.order_return()],
          optional(:rewards) => [SquareUp.TypeSpecs.order_reward()],
          optional(:rounding_adjustment) => SquareUp.TypeSpecs.order_rounding_adjustment(),
          optional(:service_charges) => [SquareUp.TypeSpecs.order_service_charge()],
          optional(:source) => SquareUp.TypeSpecs.order_source(),
          optional(:state) => binary(),
          optional(:taxes) => [SquareUp.TypeSpecs.order_line_item_tax()],
          optional(:tenders) => [SquareUp.TypeSpecs.tender()],
          optional(:total_discount_money) => SquareUp.TypeSpecs.money(),
          optional(:total_money) => SquareUp.TypeSpecs.money(),
          optional(:total_service_charge_money) => SquareUp.TypeSpecs.money(),
          optional(:total_tax_money) => SquareUp.TypeSpecs.money(),
          optional(:total_tip_money) => SquareUp.TypeSpecs.money(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type measurement_unit :: %{
          optional(:area_unit) => binary(),
          optional(:custom_unit) => SquareUp.TypeSpecs.measurement_unit_custom(),
          optional(:generic_unit) => binary(),
          optional(:length_unit) => binary(),
          optional(:time_unit) => binary(),
          optional(:type) => binary(),
          optional(:volume_unit) => binary(),
          optional(:weight_unit) => binary()
        }

  @type loyalty_event_adjust_points :: %{
          optional(:loyalty_program_id) => binary(),
          required(:points) => integer(),
          optional(:reason) => binary()
        }

  @type catalog_discount_modify_tax_basis :: binary()
  @type search_team_members_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:query) => SquareUp.TypeSpecs.search_team_members_query()
        }

  @type catalog_custom_attribute_definition_app_visibility :: binary()
  @type list_loyalty_programs_request :: %{}

  @type loyalty_event_type :: binary()
  @type update_shift_request :: %{required(:shift) => SquareUp.TypeSpecs.shift()}

  @type catalog_item_product_type :: binary()
  @type catalog_quick_amount_type :: binary()
  @type pay_order_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:order) => SquareUp.TypeSpecs.order()
        }

  @type team_member_assigned_locations_assignment_type :: binary()
  @type v1_payment_item_detail :: %{
          optional(:category_name) => binary(),
          optional(:item_id) => binary(),
          optional(:item_variation_id) => binary(),
          optional(:sku) => binary()
        }

  @type v1_item :: %{
          optional(:abbreviation) => binary(),
          optional(:available_for_pickup) => boolean(),
          optional(:available_online) => boolean(),
          optional(:category) => SquareUp.TypeSpecs.v1_category(),
          optional(:category_id) => binary(),
          optional(:color) => binary(),
          optional(:description) => binary(),
          optional(:fees) => [SquareUp.TypeSpecs.v1_fee()],
          optional(:id) => binary(),
          optional(:master_image) => SquareUp.TypeSpecs.v1_item_image(),
          optional(:modifier_lists) => [SquareUp.TypeSpecs.v1_modifier_list()],
          optional(:name) => binary(),
          optional(:taxable) => boolean(),
          optional(:type) => binary(),
          optional(:v2_id) => binary(),
          optional(:variations) => [SquareUp.TypeSpecs.v1_variation()],
          optional(:visibility) => binary()
        }

  @type update_break_type_request :: %{required(:break_type) => SquareUp.TypeSpecs.break_type()}

  @type create_order_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:order) => SquareUp.TypeSpecs.order()
        }

  @type v1_remove_modifier_list_request :: %{}

  @type v1_settlement_status :: binary()
  @type search_orders_filter :: %{
          optional(:customer_filter) => SquareUp.TypeSpecs.search_orders_customer_filter(),
          optional(:date_time_filter) => SquareUp.TypeSpecs.search_orders_date_time_filter(),
          optional(:fulfillment_filter) => SquareUp.TypeSpecs.search_orders_fulfillment_filter(),
          optional(:source_filter) => SquareUp.TypeSpecs.search_orders_source_filter(),
          optional(:state_filter) => SquareUp.TypeSpecs.search_orders_state_filter()
        }

  @type delete_break_type_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type order_line_item_tax :: %{
          optional(:applied_money) => SquareUp.TypeSpecs.money(),
          optional(:catalog_object_id) => binary(),
          optional(:metadata) => map(),
          optional(:name) => binary(),
          optional(:percentage) => binary(),
          optional(:scope) => binary(),
          optional(:type) => binary(),
          optional(:uid) => binary()
        }

  @type v1_delete_discount_request :: %{}

  @type get_break_type_request :: %{}

  @type customer_creation_source :: binary()
  @type checkout :: %{
          optional(:additional_recipients) => [SquareUp.TypeSpecs.additional_recipient()],
          optional(:ask_for_shipping_address) => boolean(),
          optional(:checkout_page_url) => binary(),
          optional(:created_at) => binary(),
          optional(:id) => binary(),
          optional(:merchant_support_email) => binary(),
          optional(:order) => SquareUp.TypeSpecs.order(),
          optional(:pre_populate_buyer_email) => binary(),
          optional(:pre_populate_shipping_address) => SquareUp.TypeSpecs.address(),
          optional(:redirect_url) => binary()
        }

  @type catalog_custom_attribute_definition_string_config :: %{
          optional(:enforce_uniqueness) => boolean()
        }

  @type cancel_payment_request :: %{}

  @type v1_retrieve_order_request :: %{}

  @type remove_group_from_customer_request :: %{}

  @type retrieve_customer_request :: %{}

  @type update_order_request :: %{
          optional(:fields_to_clear) => [binary()],
          optional(:idempotency_key) => binary(),
          optional(:order) => SquareUp.TypeSpecs.order()
        }

  @type list_locations_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:locations) => [SquareUp.TypeSpecs.location()]
        }

  @type catalog_query_item_variations_for_item_option_values :: %{
          optional(:item_option_value_ids) => [binary()]
        }

  @type v1_page_cell_placeholder_type :: binary()
  @type complete_payment_request :: %{}

  @type cancel_subscription_request :: %{}

  @type batch_upsert_catalog_objects_request :: %{
          required(:batches) => [SquareUp.TypeSpecs.catalog_object_batch()],
          required(:idempotency_key) => binary()
        }

  @type location :: %{
          optional(:address) => SquareUp.TypeSpecs.address(),
          optional(:business_email) => binary(),
          optional(:business_hours) => SquareUp.TypeSpecs.business_hours(),
          optional(:business_name) => binary(),
          optional(:capabilities) => [binary()],
          optional(:coordinates) => SquareUp.TypeSpecs.coordinates(),
          optional(:country) => binary(),
          optional(:created_at) => binary(),
          optional(:currency) => binary(),
          optional(:description) => binary(),
          optional(:facebook_url) => binary(),
          optional(:id) => binary(),
          optional(:instagram_username) => binary(),
          optional(:language_code) => binary(),
          optional(:logo_url) => binary(),
          optional(:mcc) => binary(),
          optional(:merchant_id) => binary(),
          optional(:name) => binary(),
          optional(:phone_number) => binary(),
          optional(:pos_background_url) => binary(),
          optional(:status) => binary(),
          optional(:timezone) => binary(),
          optional(:twitter_username) => binary(),
          optional(:type) => binary(),
          optional(:website_url) => binary()
        }

  @type inventory_change :: %{
          optional(:adjustment) => SquareUp.TypeSpecs.inventory_adjustment(),
          optional(:physical_count) => SquareUp.TypeSpecs.inventory_physical_count(),
          optional(:transfer) => SquareUp.TypeSpecs.inventory_transfer(),
          optional(:type) => binary()
        }

  @type ecom_visibility :: binary()
  @type loyalty_event_location_filter :: %{required(:location_ids) => [binary()]}

  @type invoice_request_method :: binary()
  @type v1_update_order_request_action :: binary()
  @type publish_invoice_request :: %{
          optional(:idempotency_key) => binary(),
          required(:version) => integer()
        }

  @type cancel_payment_by_idempotency_key_request :: %{required(:idempotency_key) => binary()}

  @type search_invoices_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          required(:query) => SquareUp.TypeSpecs.invoice_query()
        }

  @type catalog_item_option_for_item :: %{optional(:item_option_id) => binary()}

  @type invoice_query :: %{
          required(:filter) => SquareUp.TypeSpecs.invoice_filter(),
          optional(:sort) => SquareUp.TypeSpecs.invoice_sort()
        }

  @type catalog_item_variation :: %{
          optional(:inventory_alert_threshold) => integer(),
          optional(:inventory_alert_type) => binary(),
          optional(:item_id) => binary(),
          optional(:item_option_values) => [
            SquareUp.TypeSpecs.catalog_item_option_value_for_item_variation()
          ],
          optional(:location_overrides) => [
            SquareUp.TypeSpecs.item_variation_location_overrides()
          ],
          optional(:measurement_unit_id) => binary(),
          optional(:name) => binary(),
          optional(:ordinal) => integer(),
          optional(:price_money) => SquareUp.TypeSpecs.money(),
          optional(:pricing_type) => binary(),
          optional(:service_duration) => integer(),
          optional(:sku) => binary(),
          optional(:track_inventory) => boolean(),
          optional(:upc) => binary(),
          optional(:user_data) => binary()
        }

  @type upsert_catalog_object_request :: %{
          required(:idempotency_key) => binary(),
          required(:object) => SquareUp.TypeSpecs.catalog_object()
        }

  @type break_type :: %{
          required(:break_name) => binary(),
          optional(:created_at) => binary(),
          required(:expected_duration) => binary(),
          optional(:id) => binary(),
          required(:is_paid) => boolean(),
          required(:location_id) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type v1_delete_fee_request :: %{}

  @type create_terminal_checkout_response :: %{
          optional(:checkout) => SquareUp.TypeSpecs.terminal_checkout(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type capture_transaction_request :: %{}

  @type subscription_event :: %{
          required(:effective_date) => binary(),
          required(:id) => binary(),
          required(:plan_id) => binary(),
          required(:subscription_event_type) => binary()
        }

  @type v1_bank_account_type :: binary()
  @type catalog_info_response_limits :: %{
          optional(:batch_delete_max_object_ids) => integer(),
          optional(:batch_retrieve_max_object_ids) => integer(),
          optional(:batch_upsert_max_objects_per_batch) => integer(),
          optional(:batch_upsert_max_total_objects) => integer(),
          optional(:search_max_page_limit) => integer(),
          optional(:update_item_modifier_lists_max_item_ids) => integer(),
          optional(:update_item_modifier_lists_max_modifier_lists_to_disable) => integer(),
          optional(:update_item_modifier_lists_max_modifier_lists_to_enable) => integer(),
          optional(:update_item_taxes_max_item_ids) => integer(),
          optional(:update_item_taxes_max_taxes_to_disable) => integer(),
          optional(:update_item_taxes_max_taxes_to_enable) => integer()
        }

  @type retrieve_dispute_evidence_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:evidence) => SquareUp.TypeSpecs.dispute_evidence()
        }

  @type loyalty_program_terminology :: %{required(:one) => binary(), required(:other) => binary()}

  @type catalog_measurement_unit :: %{
          optional(:measurement_unit) => SquareUp.TypeSpecs.measurement_unit(),
          optional(:precision) => integer()
        }

  @type subscription_status :: binary()
  @type v1_modifier_list_selection_type :: binary()
  @type order_return_line_item :: %{
          optional(:applied_discounts) => [SquareUp.TypeSpecs.order_line_item_applied_discount()],
          optional(:applied_taxes) => [SquareUp.TypeSpecs.order_line_item_applied_tax()],
          optional(:base_price_money) => SquareUp.TypeSpecs.money(),
          optional(:catalog_object_id) => binary(),
          optional(:gross_return_money) => SquareUp.TypeSpecs.money(),
          optional(:name) => binary(),
          optional(:note) => binary(),
          required(:quantity) => binary(),
          optional(:quantity_unit) => SquareUp.TypeSpecs.order_quantity_unit(),
          optional(:return_modifiers) => [SquareUp.TypeSpecs.order_return_line_item_modifier()],
          optional(:source_line_item_uid) => binary(),
          optional(:total_discount_money) => SquareUp.TypeSpecs.money(),
          optional(:total_money) => SquareUp.TypeSpecs.money(),
          optional(:total_tax_money) => SquareUp.TypeSpecs.money(),
          optional(:uid) => binary(),
          optional(:variation_name) => binary(),
          optional(:variation_total_price_money) => SquareUp.TypeSpecs.money()
        }

  @type cancel_terminal_checkout_request :: %{}

  @type loyalty_program_reward_definition :: %{
          optional(:catalog_object_ids) => [binary()],
          required(:discount_type) => binary(),
          optional(:fixed_discount_money) => SquareUp.TypeSpecs.money(),
          optional(:max_discount_money) => SquareUp.TypeSpecs.money(),
          optional(:percentage_discount) => binary(),
          required(:scope) => binary()
        }

  @type charge_request_additional_recipient :: %{
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          required(:description) => binary(),
          required(:location_id) => binary()
        }

  @type catalog_query_items_for_modifier_list :: %{required(:modifier_list_ids) => [binary()]}

  @type v1_list_timecard_events_response :: %{
          optional(:items) => [SquareUp.TypeSpecs.v1_timecard_event()]
        }

  @type v1_retrieve_settlement_request :: %{}

  @type v1_delete_timecard_request :: %{}

  @type list_catalog_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:objects) => [SquareUp.TypeSpecs.catalog_object()]
        }

  @type list_customers_response :: %{
          optional(:cursor) => binary(),
          optional(:customers) => [SquareUp.TypeSpecs.customer()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type range :: %{optional(:max) => binary(), optional(:min) => binary()}

  @type shift_filter_status :: binary()
  @type list_transactions_request :: %{
          optional(:begin_time) => binary(),
          optional(:cursor) => binary(),
          optional(:end_time) => binary(),
          optional(:sort_order) => binary()
        }

  @type update_customer_response :: %{
          optional(:customer) => SquareUp.TypeSpecs.customer(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type v1_list_fees_request :: %{}

  @type update_subscription_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:subscription) => SquareUp.TypeSpecs.subscription()
        }

  @type catalog_discount :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:discount_type) => binary(),
          optional(:label_color) => binary(),
          optional(:modify_tax_basis) => binary(),
          optional(:name) => binary(),
          optional(:percentage) => binary(),
          optional(:pin_required) => boolean()
        }

  @type v1_apply_modifier_list_request :: %{}

  @type retrieve_inventory_changes_response :: %{
          optional(:changes) => [SquareUp.TypeSpecs.inventory_change()],
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type subscription :: %{
          optional(:canceled_date) => binary(),
          optional(:card_id) => binary(),
          optional(:created_at) => binary(),
          optional(:customer_id) => binary(),
          optional(:id) => binary(),
          optional(:invoice_ids) => [binary()],
          optional(:location_id) => binary(),
          optional(:paid_until_date) => binary(),
          optional(:plan_id) => binary(),
          optional(:price_override_money) => SquareUp.TypeSpecs.money(),
          optional(:start_date) => binary(),
          optional(:status) => binary(),
          optional(:tax_percentage) => binary(),
          optional(:timezone) => binary(),
          optional(:version) => integer()
        }

  @type get_invoice_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:invoice) => SquareUp.TypeSpecs.invoice()
        }

  @type loyalty_event_other :: %{
          required(:loyalty_program_id) => binary(),
          required(:points) => integer()
        }

  @type inventory_count :: %{
          optional(:calculated_at) => binary(),
          optional(:catalog_object_id) => binary(),
          optional(:catalog_object_type) => binary(),
          optional(:location_id) => binary(),
          optional(:quantity) => binary(),
          optional(:state) => binary()
        }

  @type pay_order_request :: %{
          required(:idempotency_key) => binary(),
          optional(:order_version) => integer(),
          optional(:payment_ids) => [binary()]
        }

  @type retrieve_loyalty_account_request :: %{}

  @type catalog_product_set :: %{
          optional(:all_products) => boolean(),
          optional(:name) => binary(),
          optional(:product_ids_all) => [binary()],
          optional(:product_ids_any) => [binary()],
          optional(:quantity_exact) => integer(),
          optional(:quantity_max) => integer(),
          optional(:quantity_min) => integer()
        }

  @type list_device_codes_request :: %{
          optional(:cursor) => binary(),
          optional(:location_id) => binary(),
          optional(:product_type) => binary()
        }

  @type shift_filter :: %{
          optional(:employee_ids) => [binary()],
          optional(:end) => SquareUp.TypeSpecs.time_range(),
          required(:location_ids) => [binary()],
          optional(:start) => SquareUp.TypeSpecs.time_range(),
          optional(:status) => binary(),
          required(:team_member_ids) => [binary()],
          optional(:workday) => SquareUp.TypeSpecs.shift_workday()
        }

  @type v1_create_item_request :: %{optional(:body) => SquareUp.TypeSpecs.v1_item()}

  @type list_cash_drawer_shift_events_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          required(:location_id) => binary()
        }

  @type inventory_state :: binary()
  @type update_wage_setting_request :: %{
          required(:wage_setting) => SquareUp.TypeSpecs.wage_setting()
        }

  @type order_fulfillment_pickup_details_curbside_pickup_details :: %{
          optional(:buyer_arrived_at) => binary(),
          optional(:curbside_details) => binary()
        }

  @type v1_list_cash_drawer_shifts_response :: %{
          optional(:items) => [SquareUp.TypeSpecs.v1_cash_drawer_shift()]
        }

  @type batch_upsert_catalog_objects_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:id_mappings) => [SquareUp.TypeSpecs.catalog_id_mapping()],
          optional(:objects) => [SquareUp.TypeSpecs.catalog_object()],
          optional(:updated_at) => binary()
        }

  @type create_terminal_checkout_request :: %{
          required(:checkout) => SquareUp.TypeSpecs.terminal_checkout(),
          required(:idempotency_key) => binary()
        }

  @type v1_list_refunds_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_refund()]}

  @type tax_calculation_phase :: binary()
  @type v1_list_locations_request :: %{}

  @type shift_workday_matcher :: binary()
  @type order_updated_object :: %{optional(:order_updated) => SquareUp.TypeSpecs.order_updated()}

  @type v1_discount_color :: binary()
  @type device_details :: %{optional(:device_id) => binary(), optional(:device_name) => binary()}

  @type loyalty_account_mapping :: %{
          optional(:created_at) => binary(),
          optional(:id) => binary(),
          required(:type) => binary(),
          required(:value) => binary()
        }

  @type list_merchants_response :: %{
          optional(:cursor) => integer(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:merchant) => [SquareUp.TypeSpecs.merchant()]
        }

  @type device_code_status :: binary()
  @type order_fulfillment_type :: binary()
  @type create_break_type_request :: %{
          required(:break_type) => SquareUp.TypeSpecs.break_type(),
          optional(:idempotency_key) => binary()
        }

  @type update_break_type_response :: %{
          optional(:break_type) => SquareUp.TypeSpecs.break_type(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type order_fulfillment_recipient :: %{
          optional(:address) => SquareUp.TypeSpecs.address(),
          optional(:customer_id) => binary(),
          optional(:display_name) => binary(),
          optional(:email_address) => binary(),
          optional(:phone_number) => binary()
        }

  @type refund_status :: binary()
  @type delete_loyalty_reward_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type loyalty_program_reward_tier :: %{
          required(:created_at) => binary(),
          required(:definition) => SquareUp.TypeSpecs.loyalty_program_reward_definition(),
          required(:id) => binary(),
          required(:name) => binary(),
          required(:points) => integer()
        }

  @type order_line_item_tax_type :: binary()
  @type order_fulfillment_updated :: %{
          optional(:created_at) => binary(),
          optional(:fulfillment_update) => [SquareUp.TypeSpecs.order_fulfillment_updated_update()],
          optional(:location_id) => binary(),
          optional(:order_id) => binary(),
          optional(:state) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type balance_payment_details :: %{
          optional(:account_id) => binary(),
          optional(:status) => binary()
        }

  @type v1_employee_status :: binary()
  @type create_customer_group_request :: %{
          required(:group) => SquareUp.TypeSpecs.customer_group(),
          optional(:idempotency_key) => binary()
        }

  @type catalog_query :: %{
          optional(:exact_query) => SquareUp.TypeSpecs.catalog_query_exact(),
          optional(:item_variations_for_item_option_values_query) =>
            SquareUp.TypeSpecs.catalog_query_item_variations_for_item_option_values(),
          optional(:items_for_item_options_query) =>
            SquareUp.TypeSpecs.catalog_query_items_for_item_options(),
          optional(:items_for_modifier_list_query) =>
            SquareUp.TypeSpecs.catalog_query_items_for_modifier_list(),
          optional(:items_for_tax_query) => SquareUp.TypeSpecs.catalog_query_items_for_tax(),
          optional(:prefix_query) => SquareUp.TypeSpecs.catalog_query_prefix(),
          optional(:range_query) => SquareUp.TypeSpecs.catalog_query_range(),
          optional(:sorted_attribute_query) =>
            SquareUp.TypeSpecs.catalog_query_sorted_attribute(),
          optional(:text_query) => SquareUp.TypeSpecs.catalog_query_text()
        }

  @type v1_payment_modifier :: %{
          optional(:applied_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:modifier_option_id) => binary(),
          optional(:name) => binary()
        }

  @type payment_options :: %{optional(:autocomplete) => boolean()}

  @type v1_update_fee_request :: %{required(:body) => SquareUp.TypeSpecs.v1_fee()}

  @type catalog_pricing_rule :: %{
          optional(:apply_products_id) => binary(),
          optional(:discount_id) => binary(),
          optional(:exclude_products_id) => binary(),
          optional(:exclude_strategy) => binary(),
          optional(:match_products_id) => binary(),
          optional(:name) => binary(),
          optional(:time_period_ids) => [binary()],
          optional(:valid_from_date) => binary(),
          optional(:valid_from_local_time) => binary(),
          optional(:valid_until_date) => binary(),
          optional(:valid_until_local_time) => binary()
        }

  @type search_catalog_objects_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:latest_time) => binary(),
          optional(:objects) => [SquareUp.TypeSpecs.catalog_object()],
          optional(:related_objects) => [SquareUp.TypeSpecs.catalog_object()]
        }

  @type search_loyalty_accounts_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:query) =>
            SquareUp.TypeSpecs.search_loyalty_accounts_request_loyalty_account_query()
        }

  @type batch_change_inventory_response :: %{
          optional(:counts) => [SquareUp.TypeSpecs.inventory_count()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type search_orders_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:location_ids) => [binary()],
          optional(:query) => SquareUp.TypeSpecs.search_orders_query(),
          optional(:return_entries) => boolean()
        }

  @type get_team_member_wage_request :: %{}

  @type product :: binary()
  @type retrieve_dispute_evidence_request :: %{}

  @type search_subscriptions_query :: %{
          optional(:filter) => SquareUp.TypeSpecs.search_subscriptions_filter()
        }

  @type merchant_status :: binary()
  @type country :: binary()
  @type team_member_status :: binary()
  @type create_refund_request :: %{
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          required(:idempotency_key) => binary(),
          optional(:reason) => binary(),
          required(:tender_id) => binary()
        }

  @type search_terminal_checkouts_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:query) => SquareUp.TypeSpecs.terminal_checkout_query()
        }

  @type inventory_change_type :: binary()
  @type date_range :: %{optional(:end_date) => binary(), optional(:start_date) => binary()}

  @type list_invoices_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:invoices) => [SquareUp.TypeSpecs.invoice()]
        }

  @type create_loyalty_reward_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:reward) => SquareUp.TypeSpecs.loyalty_reward()
        }

  @type create_catalog_image_request :: %{
          required(:idempotency_key) => binary(),
          optional(:image) => SquareUp.TypeSpecs.catalog_object(),
          optional(:object_id) => binary()
        }

  @type v1_list_payments_request :: %{
          optional(:batch_token) => binary(),
          optional(:begin_time) => binary(),
          optional(:end_time) => binary(),
          optional(:include_partial) => boolean(),
          optional(:limit) => integer(),
          optional(:order) => binary()
        }

  @type create_mobile_authorization_code_request :: %{optional(:location_id) => binary()}

  @type catalog_modifier :: %{
          optional(:modifier_list_id) => binary(),
          optional(:name) => binary(),
          optional(:ordinal) => integer(),
          optional(:price_money) => SquareUp.TypeSpecs.money()
        }

  @type order_return_discount :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:applied_money) => SquareUp.TypeSpecs.money(),
          optional(:catalog_object_id) => binary(),
          optional(:name) => binary(),
          optional(:percentage) => binary(),
          optional(:scope) => binary(),
          optional(:source_discount_uid) => binary(),
          optional(:type) => binary(),
          optional(:uid) => binary()
        }

  @type retrieve_dispute_request :: %{}

  @type list_customer_groups_request :: %{optional(:cursor) => binary()}

  @type v1_order_history_entry :: %{
          optional(:action) => binary(),
          optional(:created_at) => binary()
        }

  @type search_orders_query :: %{
          optional(:filter) => SquareUp.TypeSpecs.search_orders_filter(),
          optional(:sort) => SquareUp.TypeSpecs.search_orders_sort()
        }

  @type void_transaction_request :: %{}

  @type bank_account_type :: binary()
  @type order_money_amounts :: %{
          optional(:discount_money) => SquareUp.TypeSpecs.money(),
          optional(:service_charge_money) => SquareUp.TypeSpecs.money(),
          optional(:tax_money) => SquareUp.TypeSpecs.money(),
          optional(:tip_money) => SquareUp.TypeSpecs.money(),
          optional(:total_money) => SquareUp.TypeSpecs.money()
        }

  @type list_customer_segments_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:segments) => [SquareUp.TypeSpecs.customer_segment()]
        }

  @type bank_account_status :: binary()
  @type measurement_unit_weight :: binary()
  @type retrieve_team_member_request :: %{}

  @type retrieve_loyalty_reward_request :: %{}

  @type catalog_subscription_plan :: %{
          optional(:name) => binary(),
          optional(:phases) => [SquareUp.TypeSpecs.subscription_phase()]
        }

  @type loyalty_program_accrual_rule :: %{
          required(:accrual_type) => binary(),
          optional(:catalog_object_id) => binary(),
          optional(:points) => integer(),
          optional(:spend_amount_money) => SquareUp.TypeSpecs.money(),
          optional(:visit_minimum_amount_money) => SquareUp.TypeSpecs.money()
        }

  @type v1_order :: %{
          optional(:btc_price_satoshi) => number(),
          optional(:btc_receive_address) => binary(),
          optional(:buyer_email) => binary(),
          optional(:buyer_note) => binary(),
          optional(:canceled_note) => binary(),
          optional(:completed_note) => binary(),
          optional(:created_at) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:expires_at) => binary(),
          optional(:id) => binary(),
          optional(:order_history) => [SquareUp.TypeSpecs.v1_order_history_entry()],
          optional(:payment_id) => binary(),
          optional(:promo_code) => binary(),
          optional(:recipient_name) => binary(),
          optional(:recipient_phone_number) => binary(),
          optional(:refunded_note) => binary(),
          optional(:shipping_address) => SquareUp.TypeSpecs.address(),
          optional(:state) => binary(),
          optional(:subtotal_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:tender) => SquareUp.TypeSpecs.v1_tender(),
          optional(:total_discount_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:total_price_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:total_shipping_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:total_tax_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:updated_at) => binary()
        }

  @type loyalty_event_loyalty_account_filter :: %{required(:loyalty_account_id) => binary()}

  @type v1_delete_page_request :: %{}

  @type v1_page_cell :: %{
          optional(:column) => integer(),
          optional(:object_id) => binary(),
          optional(:object_type) => binary(),
          optional(:page_id) => binary(),
          optional(:placeholder_type) => binary(),
          optional(:row) => integer()
        }

  @type catalog_item_option_value_for_item_variation :: %{
          optional(:item_option_id) => binary(),
          optional(:item_option_value_id) => binary()
        }

  @type v1_modifier_option :: %{
          optional(:id) => binary(),
          optional(:modifier_list_id) => binary(),
          optional(:name) => binary(),
          optional(:on_by_default) => boolean(),
          optional(:ordinal) => integer(),
          optional(:price_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:v2_id) => binary()
        }

  @type search_loyalty_events_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:query) => SquareUp.TypeSpecs.loyalty_event_query()
        }

  @type v1_list_pages_request :: %{}

  @type catalog_item_option_value :: %{
          optional(:color) => binary(),
          optional(:description) => binary(),
          optional(:item_option_id) => binary(),
          optional(:item_variation_count) => integer(),
          optional(:name) => binary(),
          optional(:ordinal) => integer()
        }

  @type v1_list_inventory_response :: %{
          optional(:items) => [SquareUp.TypeSpecs.v1_inventory_entry()]
        }

  @type create_subscription_request :: %{
          optional(:canceled_date) => binary(),
          optional(:card_id) => binary(),
          required(:customer_id) => binary(),
          required(:idempotency_key) => binary(),
          required(:location_id) => binary(),
          required(:plan_id) => binary(),
          optional(:price_override_money) => SquareUp.TypeSpecs.money(),
          optional(:start_date) => binary(),
          optional(:tax_percentage) => binary(),
          optional(:timezone) => binary()
        }

  @type catalog_modifier_list_selection_type :: binary()
  @type delete_loyalty_reward_request :: %{}

  @type delete_customer_group_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type create_dispute_evidence_file_request :: %{
          optional(:content_type) => binary(),
          optional(:evidence_type) => binary(),
          required(:idempotency_key) => binary()
        }

  @type obtain_token_request :: %{
          required(:client_id) => binary(),
          required(:client_secret) => binary(),
          optional(:code) => binary(),
          required(:grant_type) => binary(),
          optional(:migration_token) => binary(),
          optional(:redirect_uri) => binary(),
          optional(:refresh_token) => binary()
        }

  @type customer_sort_field :: binary()
  @type loyalty_event_delete_reward :: %{
          required(:loyalty_program_id) => binary(),
          required(:points) => integer(),
          optional(:reward_id) => binary()
        }

  @type submit_evidence_request :: %{}

  @type shift_workday :: %{
          optional(:date_range) => SquareUp.TypeSpecs.date_range(),
          optional(:default_timezone) => binary(),
          optional(:match_shifts_by) => binary()
        }

  @type shift :: %{
          optional(:breaks) => [SquareUp.TypeSpecs.break()],
          optional(:created_at) => binary(),
          optional(:employee_id) => binary(),
          optional(:end_at) => binary(),
          optional(:id) => binary(),
          optional(:location_id) => binary(),
          required(:start_at) => binary(),
          optional(:status) => binary(),
          optional(:team_member_id) => binary(),
          optional(:timezone) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer(),
          optional(:wage) => SquareUp.TypeSpecs.shift_wage()
        }

  @type card_prepaid_type :: binary()
  @type list_cash_drawer_shifts_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:items) => [SquareUp.TypeSpecs.cash_drawer_shift_summary()]
        }

  @type v1_fee_adjustment_type :: binary()
  @type v1_list_modifier_lists_response :: %{
          optional(:items) => [SquareUp.TypeSpecs.v1_modifier_list()]
        }

  @type retrieve_wage_setting_request :: %{}

  @type cancel_terminal_checkout_response :: %{
          optional(:checkout) => SquareUp.TypeSpecs.terminal_checkout(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type list_refunds_request :: %{
          optional(:begin_time) => binary(),
          optional(:cursor) => binary(),
          optional(:end_time) => binary(),
          optional(:sort_order) => binary()
        }

  @type order_pricing_options :: %{optional(:auto_apply_discounts) => boolean()}

  @type v1_refund_type :: binary()
  @type tender_card_details :: %{
          optional(:card) => SquareUp.TypeSpecs.card(),
          optional(:entry_method) => binary(),
          optional(:status) => binary()
        }

  @type get_employee_wage_response :: %{
          optional(:employee_wage) => SquareUp.TypeSpecs.employee_wage(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type catalog_modifier_override :: %{
          required(:modifier_id) => binary(),
          optional(:on_by_default) => boolean()
        }

  @type v1_update_employee_role_request :: %{
          required(:body) => SquareUp.TypeSpecs.v1_employee_role()
        }

  @type delete_customer_card_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type address :: %{
          optional(:address_line_1) => binary(),
          optional(:address_line_2) => binary(),
          optional(:address_line_3) => binary(),
          optional(:administrative_district_level_1) => binary(),
          optional(:administrative_district_level_2) => binary(),
          optional(:administrative_district_level_3) => binary(),
          optional(:country) => binary(),
          optional(:first_name) => binary(),
          optional(:last_name) => binary(),
          optional(:locality) => binary(),
          optional(:organization) => binary(),
          optional(:postal_code) => binary(),
          optional(:sublocality) => binary(),
          optional(:sublocality_2) => binary(),
          optional(:sublocality_3) => binary()
        }

  @type loyalty_event_order_filter :: %{required(:order_id) => binary()}

  @type order_service_charge :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:applied_money) => SquareUp.TypeSpecs.money(),
          optional(:applied_taxes) => [SquareUp.TypeSpecs.order_line_item_applied_tax()],
          optional(:calculation_phase) => binary(),
          optional(:catalog_object_id) => binary(),
          optional(:metadata) => map(),
          optional(:name) => binary(),
          optional(:percentage) => binary(),
          optional(:taxable) => boolean(),
          optional(:total_money) => SquareUp.TypeSpecs.money(),
          optional(:total_tax_money) => SquareUp.TypeSpecs.money(),
          optional(:uid) => binary()
        }

  @type get_break_type_response :: %{
          optional(:break_type) => SquareUp.TypeSpecs.break_type(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type search_loyalty_accounts_request_loyalty_account_query :: %{
          optional(:mappings) => [SquareUp.TypeSpecs.loyalty_account_mapping()]
        }

  @type create_invoice_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:invoice) => SquareUp.TypeSpecs.invoice()
        }

  @type subscription_cadence :: binary()
  @type v1_cash_drawer_event_event_type :: binary()
  @type create_dispute_evidence_text_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:evidence) => SquareUp.TypeSpecs.dispute_evidence()
        }

  @type cash_drawer_shift :: %{
          optional(:cash_paid_in_money) => SquareUp.TypeSpecs.money(),
          optional(:cash_paid_out_money) => SquareUp.TypeSpecs.money(),
          optional(:cash_payment_money) => SquareUp.TypeSpecs.money(),
          optional(:cash_refunds_money) => SquareUp.TypeSpecs.money(),
          optional(:closed_at) => binary(),
          optional(:closed_cash_money) => SquareUp.TypeSpecs.money(),
          optional(:closing_employee_id) => binary(),
          optional(:description) => binary(),
          optional(:device) => SquareUp.TypeSpecs.cash_drawer_device(),
          optional(:employee_ids) => [binary()],
          optional(:ended_at) => binary(),
          optional(:ending_employee_id) => binary(),
          optional(:expected_cash_money) => SquareUp.TypeSpecs.money(),
          optional(:id) => binary(),
          optional(:opened_at) => binary(),
          optional(:opened_cash_money) => SquareUp.TypeSpecs.money(),
          optional(:opening_employee_id) => binary(),
          optional(:state) => binary()
        }

  @type error_code :: binary()
  @type retrieve_transaction_request :: %{}

  @type v1_fee_calculation_phase :: binary()
  @type search_terminal_checkouts_response :: %{
          optional(:checkouts) => [SquareUp.TypeSpecs.terminal_checkout()],
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type card_payment_details :: %{
          optional(:application_cryptogram) => binary(),
          optional(:application_identifier) => binary(),
          optional(:application_name) => binary(),
          optional(:auth_result_code) => binary(),
          optional(:avs_status) => binary(),
          optional(:card) => SquareUp.TypeSpecs.card(),
          optional(:cvv_status) => binary(),
          optional(:device_details) => SquareUp.TypeSpecs.device_details(),
          optional(:entry_method) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:refund_requires_card_presence) => boolean(),
          optional(:statement_description) => binary(),
          optional(:status) => binary(),
          optional(:verification_method) => binary(),
          optional(:verification_results) => binary()
        }

  @type measurement_unit_time :: binary()
  @type get_terminal_checkout_request :: %{}

  @type v1_tender_card_brand :: binary()
  @type catalog_object :: %{
          optional(:absent_at_location_ids) => [binary()],
          optional(:catalog_v1_ids) => [SquareUp.TypeSpecs.catalog_v1_id()],
          optional(:category_data) => SquareUp.TypeSpecs.catalog_category(),
          optional(:custom_attribute_definition_data) =>
            SquareUp.TypeSpecs.catalog_custom_attribute_definition(),
          optional(:custom_attribute_values) => map(),
          optional(:discount_data) => SquareUp.TypeSpecs.catalog_discount(),
          required(:id) => binary(),
          optional(:image_data) => SquareUp.TypeSpecs.catalog_image(),
          optional(:image_id) => binary(),
          optional(:is_deleted) => boolean(),
          optional(:item_data) => SquareUp.TypeSpecs.catalog_item(),
          optional(:item_option_data) => SquareUp.TypeSpecs.catalog_item_option(),
          optional(:item_option_value_data) => SquareUp.TypeSpecs.catalog_item_option_value(),
          optional(:item_variation_data) => SquareUp.TypeSpecs.catalog_item_variation(),
          optional(:measurement_unit_data) => SquareUp.TypeSpecs.catalog_measurement_unit(),
          optional(:modifier_data) => SquareUp.TypeSpecs.catalog_modifier(),
          optional(:modifier_list_data) => SquareUp.TypeSpecs.catalog_modifier_list(),
          optional(:present_at_all_locations) => boolean(),
          optional(:present_at_location_ids) => [binary()],
          optional(:pricing_rule_data) => SquareUp.TypeSpecs.catalog_pricing_rule(),
          optional(:product_set_data) => SquareUp.TypeSpecs.catalog_product_set(),
          optional(:quick_amounts_settings_data) =>
            SquareUp.TypeSpecs.catalog_quick_amounts_settings(),
          optional(:subscription_plan_data) => SquareUp.TypeSpecs.catalog_subscription_plan(),
          optional(:tax_data) => SquareUp.TypeSpecs.catalog_tax(),
          optional(:time_period_data) => SquareUp.TypeSpecs.catalog_time_period(),
          required(:type) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type list_cash_drawer_shift_events_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:events) => [SquareUp.TypeSpecs.cash_drawer_shift_event()]
        }

  @type subscription_phase :: %{
          required(:cadence) => binary(),
          optional(:ordinal) => integer(),
          optional(:periods) => integer(),
          required(:recurring_price_money) => SquareUp.TypeSpecs.money(),
          optional(:uid) => binary()
        }

  @type create_loyalty_account_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:loyalty_account) => SquareUp.TypeSpecs.loyalty_account()
        }

  @type create_invoice_request :: %{
          optional(:idempotency_key) => binary(),
          required(:invoice) => SquareUp.TypeSpecs.invoice()
        }

  @type v1_retrieve_business_request :: %{}

  @type v1_cash_drawer_shift :: %{
          optional(:cash_paid_in_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:cash_paid_out_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:cash_payment_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:cash_refunds_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:closed_at) => binary(),
          optional(:closed_cash_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:closing_employee_id) => binary(),
          optional(:description) => binary(),
          optional(:device) => SquareUp.TypeSpecs.device(),
          optional(:employee_ids) => [binary()],
          optional(:ended_at) => binary(),
          optional(:ending_employee_id) => binary(),
          optional(:event_type) => binary(),
          optional(:events) => [SquareUp.TypeSpecs.v1_cash_drawer_event()],
          optional(:expected_cash_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:id) => binary(),
          optional(:opened_at) => binary(),
          optional(:opening_employee_id) => binary(),
          optional(:starting_cash_money) => SquareUp.TypeSpecs.v1_money()
        }

  @type retrieve_inventory_changes_request :: %{
          optional(:cursor) => binary(),
          optional(:location_ids) => binary()
        }

  @type invoice_payment_reminder :: %{
          optional(:message) => binary(),
          optional(:relative_scheduled_days) => integer(),
          optional(:sent_at) => binary(),
          optional(:status) => binary(),
          optional(:uid) => binary()
        }

  @type invoice_payment_reminder_status :: binary()
  @type search_subscriptions_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:query) => SquareUp.TypeSpecs.search_subscriptions_query()
        }

  @type create_shift_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:shift) => SquareUp.TypeSpecs.shift()
        }

  @type invoice :: %{
          optional(:created_at) => binary(),
          optional(:description) => binary(),
          optional(:id) => binary(),
          optional(:invoice_number) => binary(),
          optional(:location_id) => binary(),
          optional(:next_payment_amount_money) => SquareUp.TypeSpecs.money(),
          optional(:order_id) => binary(),
          optional(:payment_requests) => [SquareUp.TypeSpecs.invoice_payment_request()],
          optional(:primary_recipient) => SquareUp.TypeSpecs.invoice_recipient(),
          optional(:public_url) => binary(),
          optional(:scheduled_at) => binary(),
          optional(:status) => binary(),
          optional(:timezone) => binary(),
          optional(:title) => binary(),
          optional(:updated_at) => binary(),
          optional(:version) => integer()
        }

  @type list_subscription_events_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:subscription_events) => [SquareUp.TypeSpecs.subscription_event()]
        }

  @type catalog_query_items_for_tax :: %{required(:tax_ids) => [binary()]}

  @type order_fulfillment_updated_object :: %{
          optional(:order_fulfillment_updated) => SquareUp.TypeSpecs.order_fulfillment_updated()
        }

  @type loyalty_program_accrual_rule_type :: binary()
  @type v1_refund :: %{
          optional(:created_at) => binary(),
          optional(:is_exchange) => boolean(),
          optional(:merchant_id) => binary(),
          optional(:payment_id) => binary(),
          optional(:processed_at) => binary(),
          optional(:reason) => binary(),
          optional(:refunded_additive_tax) => [SquareUp.TypeSpecs.v1_payment_tax()],
          optional(:refunded_additive_tax_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:refunded_discount_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:refunded_inclusive_tax) => [SquareUp.TypeSpecs.v1_payment_tax()],
          optional(:refunded_inclusive_tax_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:refunded_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:refunded_processing_fee_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:refunded_surcharge_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:refunded_surcharges) => [SquareUp.TypeSpecs.v1_payment_surcharge()],
          optional(:refunded_tax_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:refunded_tip_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:type) => binary()
        }

  @type search_loyalty_rewards_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:query) =>
            SquareUp.TypeSpecs.search_loyalty_rewards_request_loyalty_reward_query()
        }

  @type order_entry :: %{
          optional(:location_id) => binary(),
          optional(:order_id) => binary(),
          optional(:version) => integer()
        }

  @type v1_merchant :: %{
          optional(:account_capabilities) => [binary()],
          optional(:account_type) => binary(),
          optional(:business_address) => SquareUp.TypeSpecs.address(),
          optional(:business_name) => binary(),
          optional(:business_phone) => SquareUp.TypeSpecs.v1_phone_number(),
          optional(:business_type) => binary(),
          optional(:country_code) => binary(),
          optional(:currency_code) => binary(),
          optional(:email) => binary(),
          optional(:id) => binary(),
          optional(:language_code) => binary(),
          optional(:location_details) => SquareUp.TypeSpecs.v1_merchant_location_details(),
          optional(:market_url) => binary(),
          optional(:name) => binary(),
          optional(:shipping_address) => SquareUp.TypeSpecs.address()
        }

  @type update_invoice_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:invoice) => SquareUp.TypeSpecs.invoice()
        }

  @type list_employees_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:location_id) => binary(),
          optional(:status) => binary()
        }

  @type measurement_unit_unit_type :: binary()
  @type v1_delete_timecard_response :: %{}

  @type list_workweek_configs_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer()
        }

  @type v1_payment_discount :: %{
          optional(:applied_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:discount_id) => binary(),
          optional(:name) => binary()
        }

  @type v1_update_timecard_request :: %{required(:body) => SquareUp.TypeSpecs.v1_timecard()}

  @type list_payments_request :: %{
          optional(:begin_time) => binary(),
          optional(:card_brand) => binary(),
          optional(:cursor) => binary(),
          optional(:end_time) => binary(),
          optional(:last_4) => binary(),
          optional(:location_id) => binary(),
          optional(:sort_order) => binary(),
          optional(:total) => integer()
        }

  @type order_fulfillment_state :: binary()
  @type order_fulfillment :: %{
          optional(:metadata) => map(),
          optional(:pickup_details) => SquareUp.TypeSpecs.order_fulfillment_pickup_details(),
          optional(:shipment_details) => SquareUp.TypeSpecs.order_fulfillment_shipment_details(),
          optional(:state) => binary(),
          optional(:type) => binary(),
          optional(:uid) => binary()
        }

  @type update_team_member_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:team_member) => SquareUp.TypeSpecs.team_member()
        }

  @type v1_list_employees_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_employee()]}

  @type create_customer_request :: %{
          optional(:address) => SquareUp.TypeSpecs.address(),
          optional(:birthday) => binary(),
          optional(:company_name) => binary(),
          optional(:email_address) => binary(),
          optional(:family_name) => binary(),
          optional(:given_name) => binary(),
          optional(:idempotency_key) => binary(),
          optional(:nickname) => binary(),
          optional(:note) => binary(),
          optional(:phone_number) => binary(),
          optional(:reference_id) => binary()
        }

  @type list_employee_wages_request :: %{
          optional(:cursor) => binary(),
          optional(:employee_id) => binary(),
          optional(:limit) => integer()
        }

  @type order_line_item_tax_scope :: binary()
  @type update_workweek_config_request :: %{
          required(:workweek_config) => SquareUp.TypeSpecs.workweek_config()
        }

  @type cancel_payment_by_idempotency_key_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type update_wage_setting_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:wage_setting) => SquareUp.TypeSpecs.wage_setting()
        }

  @type v1_money :: %{optional(:amount) => integer(), optional(:currency_code) => binary()}

  @type catalog_discount_type :: binary()
  @type v1_employee :: %{
          optional(:authorized_location_ids) => [binary()],
          optional(:created_at) => binary(),
          optional(:email) => binary(),
          optional(:external_id) => binary(),
          required(:first_name) => binary(),
          optional(:id) => binary(),
          required(:last_name) => binary(),
          optional(:role_ids) => [binary()],
          optional(:status) => binary(),
          optional(:updated_at) => binary()
        }

  @type catalog_time_period :: %{optional(:event) => binary()}

  @type v1_list_employee_roles_request :: %{
          optional(:batch_token) => binary(),
          optional(:limit) => integer(),
          optional(:order) => binary()
        }

  @type search_loyalty_accounts_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:loyalty_accounts) => [SquareUp.TypeSpecs.loyalty_account()]
        }

  @type create_team_member_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:team_member) => SquareUp.TypeSpecs.team_member()
        }

  @type list_locations_request :: %{}

  @type v1_update_discount_request :: %{required(:body) => SquareUp.TypeSpecs.v1_discount()}

  @type v1_cash_drawer_event :: %{
          optional(:created_at) => binary(),
          optional(:description) => binary(),
          optional(:employee_id) => binary(),
          optional(:event_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:event_type) => binary(),
          optional(:id) => binary()
        }

  @type list_refunds_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:refunds) => [SquareUp.TypeSpecs.refund()]
        }

  @type v1_list_bank_accounts_request :: %{}

  @type retrieve_transaction_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:transaction) => SquareUp.TypeSpecs.transaction()
        }

  @type search_orders_sort :: %{
          required(:sort_field) => binary(),
          optional(:sort_order) => binary()
        }

  @type v1_timecard_event_event_type :: binary()
  @type search_team_members_filter :: %{
          optional(:location_ids) => [binary()],
          optional(:status) => binary()
        }

  @type catalog_custom_attribute_definition_selection_config_custom_attribute_selection :: %{
          required(:name) => binary(),
          optional(:uid) => binary()
        }

  @type v1_payment_tax :: %{
          optional(:applied_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:fee_id) => binary(),
          optional(:inclusion_type) => binary(),
          optional(:name) => binary(),
          optional(:rate) => binary()
        }

  @type get_payment_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:payment) => SquareUp.TypeSpecs.payment()
        }

  @type v1_retrieve_payment_request :: %{}

  @type employee_status :: binary()
  @type get_invoice_request :: %{}

  @type batch_retrieve_catalog_objects_request :: %{
          optional(:include_related_objects) => boolean(),
          required(:object_ids) => [binary()]
        }

  @type batch_retrieve_inventory_changes_response :: %{
          optional(:changes) => [SquareUp.TypeSpecs.inventory_change()],
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type retrieve_catalog_object_request :: %{optional(:include_related_objects) => boolean()}

  @type v1_create_modifier_list_request :: %{
          optional(:body) => SquareUp.TypeSpecs.v1_modifier_list()
        }

  @type v1_employee_role :: %{
          optional(:created_at) => binary(),
          optional(:id) => binary(),
          optional(:is_owner) => boolean(),
          required(:name) => binary(),
          required(:permissions) => [binary()],
          optional(:updated_at) => binary()
        }

  @type cash_drawer_shift_event :: %{
          optional(:created_at) => binary(),
          optional(:description) => binary(),
          optional(:employee_id) => binary(),
          optional(:event_money) => SquareUp.TypeSpecs.money(),
          optional(:event_type) => binary(),
          optional(:id) => binary()
        }

  @type cash_drawer_shift_state :: binary()
  @type obtain_token_response :: %{
          optional(:access_token) => binary(),
          optional(:expires_at) => binary(),
          optional(:id_token) => binary(),
          optional(:merchant_id) => binary(),
          optional(:plan_id) => binary(),
          optional(:refresh_token) => binary(),
          optional(:subscription_id) => binary(),
          optional(:token_type) => binary()
        }

  @type search_subscriptions_filter :: %{
          optional(:customer_ids) => [binary()],
          optional(:location_ids) => [binary()]
        }

  @type catalog_custom_attribute_definition_seller_visibility :: binary()
  @type invoice_payment_request :: %{
          optional(:card_id) => binary(),
          optional(:computed_amount_money) => SquareUp.TypeSpecs.money(),
          optional(:due_date) => binary(),
          optional(:fixed_amount_requested_money) => SquareUp.TypeSpecs.money(),
          optional(:percentage_requested) => binary(),
          optional(:reminders) => [SquareUp.TypeSpecs.invoice_payment_reminder()],
          optional(:request_method) => binary(),
          optional(:request_type) => binary(),
          optional(:rounding_adjustment_included_money) => SquareUp.TypeSpecs.money(),
          optional(:tipping_enabled) => boolean(),
          optional(:total_completed_amount_money) => SquareUp.TypeSpecs.money(),
          optional(:uid) => binary()
        }

  @type update_location_request :: %{optional(:location) => SquareUp.TypeSpecs.location()}

  @type v1_order_state :: binary()
  @type list_bank_accounts_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:location_id) => binary()
        }

  @type customer_group_info :: %{required(:id) => binary(), required(:name) => binary()}

  @type catalog_object_type :: binary()
  @type v1_list_discounts_request :: %{}

  @type list_customer_groups_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:groups) => [SquareUp.TypeSpecs.customer_group()]
        }

  @type payment_refund :: %{
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:app_fee_money) => SquareUp.TypeSpecs.money(),
          optional(:created_at) => binary(),
          required(:id) => binary(),
          optional(:location_id) => binary(),
          optional(:order_id) => binary(),
          optional(:payment_id) => binary(),
          optional(:processing_fee) => [SquareUp.TypeSpecs.processing_fee()],
          optional(:reason) => binary(),
          optional(:status) => binary(),
          optional(:updated_at) => binary()
        }

  @type search_customers_response :: %{
          optional(:cursor) => binary(),
          optional(:customers) => [SquareUp.TypeSpecs.customer()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type v1_list_timecards_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_timecard()]}

  @type v1_payment :: %{
          optional(:additive_tax) => [SquareUp.TypeSpecs.v1_payment_tax()],
          optional(:additive_tax_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:created_at) => binary(),
          optional(:creator_id) => binary(),
          optional(:device) => SquareUp.TypeSpecs.device(),
          optional(:discount_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:gross_sales_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:id) => binary(),
          optional(:inclusive_tax) => [SquareUp.TypeSpecs.v1_payment_tax()],
          optional(:inclusive_tax_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:is_partial) => boolean(),
          optional(:itemizations) => [SquareUp.TypeSpecs.v1_payment_itemization()],
          optional(:merchant_id) => binary(),
          optional(:net_sales_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:net_total_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:payment_url) => binary(),
          optional(:processing_fee_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:receipt_url) => binary(),
          optional(:refunded_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:refunds) => [SquareUp.TypeSpecs.v1_refund()],
          optional(:surcharge_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:surcharges) => [SquareUp.TypeSpecs.v1_payment_surcharge()],
          optional(:swedish_rounding_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:tax_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:tender) => [SquareUp.TypeSpecs.v1_tender()],
          optional(:tip_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:total_collected_money) => SquareUp.TypeSpecs.v1_money()
        }

  @type card :: %{
          optional(:billing_address) => SquareUp.TypeSpecs.address(),
          optional(:bin) => binary(),
          optional(:card_brand) => binary(),
          optional(:card_type) => binary(),
          optional(:cardholder_name) => binary(),
          optional(:exp_month) => integer(),
          optional(:exp_year) => integer(),
          optional(:fingerprint) => binary(),
          optional(:id) => binary(),
          optional(:last_4) => binary(),
          optional(:prepaid_type) => binary()
        }

  @type retrieve_subscription_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:subscription) => SquareUp.TypeSpecs.subscription()
        }

  @type delete_break_type_request :: %{}

  @type retrieve_inventory_physical_count_request :: %{}

  @type batch_delete_catalog_objects_request :: %{optional(:object_ids) => [binary()]}

  @type order_reward :: %{required(:id) => binary(), required(:reward_tier_id) => binary()}

  @type update_item_modifier_lists_request :: %{
          required(:item_ids) => [binary()],
          optional(:modifier_lists_to_disable) => [binary()],
          optional(:modifier_lists_to_enable) => [binary()]
        }

  @type v1_item_image :: %{optional(:id) => binary(), optional(:url) => binary()}

  @type v1_merchant_location_details :: %{optional(:nickname) => binary()}

  @type device_code :: %{
          optional(:code) => binary(),
          optional(:created_at) => binary(),
          optional(:device_id) => binary(),
          optional(:id) => binary(),
          optional(:location_id) => binary(),
          optional(:name) => binary(),
          optional(:pair_by) => binary(),
          optional(:paired_at) => binary(),
          required(:product_type) => binary(),
          optional(:status) => binary(),
          optional(:status_changed_at) => binary()
        }

  @type v1_update_modifier_list_request :: %{
          optional(:name) => binary(),
          optional(:selection_type) => binary()
        }

  @type invoice_status :: binary()
  @type v1_page :: %{
          optional(:cells) => [SquareUp.TypeSpecs.v1_page_cell()],
          optional(:id) => binary(),
          optional(:name) => binary(),
          optional(:page_index) => integer()
        }

  @type customer :: %{
          optional(:address) => SquareUp.TypeSpecs.address(),
          optional(:birthday) => binary(),
          optional(:cards) => [SquareUp.TypeSpecs.card()],
          optional(:company_name) => binary(),
          optional(:created_at) => binary(),
          optional(:creation_source) => binary(),
          optional(:email_address) => binary(),
          optional(:family_name) => binary(),
          optional(:given_name) => binary(),
          optional(:group_ids) => [binary()],
          optional(:groups) => [SquareUp.TypeSpecs.customer_group_info()],
          optional(:id) => binary(),
          optional(:nickname) => binary(),
          optional(:note) => binary(),
          optional(:phone_number) => binary(),
          optional(:preferences) => SquareUp.TypeSpecs.customer_preferences(),
          optional(:reference_id) => binary(),
          optional(:segment_ids) => [binary()],
          optional(:updated_at) => binary()
        }

  @type list_team_member_wages_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:team_member_wages) => [SquareUp.TypeSpecs.team_member_wage()]
        }

  @type transaction :: %{
          optional(:client_id) => binary(),
          optional(:created_at) => binary(),
          optional(:id) => binary(),
          optional(:location_id) => binary(),
          optional(:order_id) => binary(),
          optional(:product) => binary(),
          optional(:reference_id) => binary(),
          optional(:refunds) => [SquareUp.TypeSpecs.refund()],
          optional(:shipping_address) => SquareUp.TypeSpecs.address(),
          optional(:tenders) => [SquareUp.TypeSpecs.tender()]
        }

  @type catalog_custom_attribute_definition :: %{
          required(:allowed_object_types) => [binary()],
          optional(:app_visibility) => binary(),
          optional(:custom_attribute_usage_count) => integer(),
          optional(:description) => binary(),
          optional(:key) => binary(),
          required(:name) => binary(),
          optional(:number_config) =>
            SquareUp.TypeSpecs.catalog_custom_attribute_definition_number_config(),
          optional(:selection_config) =>
            SquareUp.TypeSpecs.catalog_custom_attribute_definition_selection_config(),
          optional(:seller_visibility) => binary(),
          optional(:source_application) => SquareUp.TypeSpecs.source_application(),
          optional(:string_config) =>
            SquareUp.TypeSpecs.catalog_custom_attribute_definition_string_config(),
          required(:type) => binary()
        }

  @type v1_list_pages_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_page()]}

  @type retrieve_inventory_count_request :: %{
          optional(:cursor) => binary(),
          optional(:location_ids) => binary()
        }

  @type renew_token_response :: %{
          optional(:access_token) => binary(),
          optional(:expires_at) => binary(),
          optional(:merchant_id) => binary(),
          optional(:plan_id) => binary(),
          optional(:subscription_id) => binary(),
          optional(:token_type) => binary()
        }

  @type standard_unit_description_group :: %{
          optional(:language_code) => binary(),
          optional(:standard_unit_descriptions) => [
            SquareUp.TypeSpecs.standard_unit_description()
          ]
        }

  @type v1_fee_type :: binary()
  @type dispute_evidence :: %{
          optional(:dispute_id) => binary(),
          optional(:evidence_id) => binary(),
          optional(:evidence_type) => binary(),
          optional(:uploaded_at) => binary()
        }

  @type terminal_checkout_query_filter :: %{
          optional(:created_at) => SquareUp.TypeSpecs.time_range(),
          optional(:device_id) => binary(),
          optional(:status) => binary()
        }

  @type get_payment_request :: %{}

  @type order_line_item_discount_type :: binary()
  @type list_bank_accounts_response :: %{
          optional(:bank_accounts) => [SquareUp.TypeSpecs.bank_account()],
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type search_orders_sort_field :: binary()
  @type search_orders_fulfillment_filter :: %{
          optional(:fulfillment_states) => [binary()],
          optional(:fulfillment_types) => [binary()]
        }

  @type order_return_service_charge :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:applied_money) => SquareUp.TypeSpecs.money(),
          optional(:applied_taxes) => [SquareUp.TypeSpecs.order_line_item_applied_tax()],
          optional(:calculation_phase) => binary(),
          optional(:catalog_object_id) => binary(),
          optional(:name) => binary(),
          optional(:percentage) => binary(),
          optional(:source_service_charge_uid) => binary(),
          optional(:taxable) => boolean(),
          optional(:total_money) => SquareUp.TypeSpecs.money(),
          optional(:total_tax_money) => SquareUp.TypeSpecs.money(),
          optional(:uid) => binary()
        }

  @type get_employee_wage_request :: %{}

  @type create_payment_request :: %{
          optional(:accept_partial_authorization) => boolean(),
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:app_fee_money) => SquareUp.TypeSpecs.money(),
          optional(:autocomplete) => boolean(),
          optional(:billing_address) => SquareUp.TypeSpecs.address(),
          optional(:buyer_email_address) => binary(),
          optional(:customer_id) => binary(),
          optional(:delay_duration) => binary(),
          required(:idempotency_key) => binary(),
          optional(:location_id) => binary(),
          optional(:note) => binary(),
          optional(:order_id) => binary(),
          optional(:reference_id) => binary(),
          optional(:shipping_address) => SquareUp.TypeSpecs.address(),
          required(:source_id) => binary(),
          optional(:statement_description_identifier) => binary(),
          optional(:tip_money) => SquareUp.TypeSpecs.money(),
          optional(:verification_token) => binary()
        }

  @type create_loyalty_account_request :: %{
          required(:idempotency_key) => binary(),
          required(:loyalty_account) => SquareUp.TypeSpecs.loyalty_account()
        }

  @type v1_item_color :: binary()
  @type retrieve_inventory_adjustment_response :: %{
          optional(:adjustment) => SquareUp.TypeSpecs.inventory_adjustment(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type accept_dispute_request :: %{}

  @type team_member_assigned_locations :: %{
          optional(:assignment_type) => binary(),
          optional(:location_ids) => [binary()]
        }

  @type catalog_info_request :: %{}

  @type v1_retrieve_bank_account_request :: %{}

  @type create_location_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:location) => SquareUp.TypeSpecs.location()
        }

  @type catalog_quick_amounts_settings_option :: binary()
  @type team_member :: %{
          optional(:assigned_locations) => SquareUp.TypeSpecs.team_member_assigned_locations(),
          optional(:created_at) => binary(),
          optional(:email_address) => binary(),
          optional(:family_name) => binary(),
          optional(:given_name) => binary(),
          optional(:id) => binary(),
          optional(:is_owner) => boolean(),
          optional(:phone_number) => binary(),
          optional(:reference_id) => binary(),
          optional(:status) => binary(),
          optional(:updated_at) => binary()
        }

  @type sort_order :: binary()
  @type order_rounding_adjustment :: %{
          optional(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:name) => binary(),
          optional(:uid) => binary()
        }

  @type v1_list_discounts_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_discount()]}

  @type customer_preferences :: %{optional(:email_unsubscribed) => boolean()}

  @type retrieve_customer_segment_request :: %{}

  @type create_break_type_response :: %{
          optional(:break_type) => SquareUp.TypeSpecs.break_type(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type day_of_week :: binary()
  @type terminal_checkout_query :: %{
          optional(:filter) => SquareUp.TypeSpecs.terminal_checkout_query_filter(),
          optional(:sort) => SquareUp.TypeSpecs.terminal_checkout_query_sort()
        }

  @type refund_payment_request :: %{
          required(:amount_money) => SquareUp.TypeSpecs.money(),
          optional(:app_fee_money) => SquareUp.TypeSpecs.money(),
          required(:idempotency_key) => binary(),
          required(:payment_id) => binary(),
          optional(:reason) => binary()
        }

  @type redeem_loyalty_reward_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:event) => SquareUp.TypeSpecs.loyalty_event()
        }

  @type v1_list_modifier_lists_request :: %{}

  @type card_square_product :: binary()
  @type catalog_query_sorted_attribute :: %{
          required(:attribute_name) => binary(),
          optional(:initial_attribute_value) => binary(),
          optional(:sort_order) => binary()
        }

  @type loyalty_event_accumulate_points :: %{
          optional(:loyalty_program_id) => binary(),
          optional(:order_id) => binary(),
          optional(:points) => integer()
        }

  @type update_item_taxes_request :: %{
          required(:item_ids) => [binary()],
          optional(:taxes_to_disable) => [binary()],
          optional(:taxes_to_enable) => [binary()]
        }

  @type create_checkout_request :: %{
          optional(:additional_recipients) => [
            SquareUp.TypeSpecs.charge_request_additional_recipient()
          ],
          optional(:ask_for_shipping_address) => boolean(),
          required(:idempotency_key) => binary(),
          optional(:merchant_support_email) => binary(),
          optional(:note) => binary(),
          required(:order) => SquareUp.TypeSpecs.create_order_request(),
          optional(:pre_populate_buyer_email) => binary(),
          optional(:pre_populate_shipping_address) => SquareUp.TypeSpecs.address(),
          optional(:redirect_url) => binary()
        }

  @type search_catalog_items_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:items) => [SquareUp.TypeSpecs.catalog_object()],
          optional(:matched_variation_ids) => [binary()]
        }

  @type create_device_code_response :: %{
          optional(:device_code) => SquareUp.TypeSpecs.device_code(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type location_capability :: binary()
  @type v1_settlement :: %{
          optional(:bank_account_id) => binary(),
          optional(:entries) => [SquareUp.TypeSpecs.v1_settlement_entry()],
          optional(:id) => binary(),
          optional(:initiated_at) => binary(),
          optional(:status) => binary(),
          optional(:total_money) => SquareUp.TypeSpecs.v1_money()
        }

  @type v1_list_settlements_request_status :: binary()
  @type list_workweek_configs_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:workweek_configs) => [SquareUp.TypeSpecs.workweek_config()]
        }

  @type business_hours_period :: %{
          optional(:day_of_week) => binary(),
          optional(:end_local_time) => binary(),
          optional(:start_local_time) => binary()
        }

  @type retrieve_loyalty_account_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:loyalty_account) => SquareUp.TypeSpecs.loyalty_account()
        }

  @type v1_timecard_event :: %{
          optional(:clockin_time) => binary(),
          optional(:clockout_time) => binary(),
          optional(:created_at) => binary(),
          optional(:event_type) => binary(),
          optional(:id) => binary()
        }

  @type create_subscription_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:subscription) => SquareUp.TypeSpecs.subscription()
        }

  @type v1_adjust_inventory_request_adjustment_type :: binary()
  @type catalog_query_prefix :: %{
          required(:attribute_name) => binary(),
          required(:attribute_prefix) => binary()
        }

  @type shift_query :: %{
          optional(:filter) => SquareUp.TypeSpecs.shift_filter(),
          optional(:sort) => SquareUp.TypeSpecs.shift_sort()
        }

  @type catalog_category :: %{optional(:name) => binary()}

  @type list_dispute_evidence_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:evidence) => [SquareUp.TypeSpecs.dispute_evidence()]
        }

  @type retrieve_cash_drawer_shift_request :: %{required(:location_id) => binary()}

  @type retrieve_catalog_object_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:object) => SquareUp.TypeSpecs.catalog_object(),
          optional(:related_objects) => [SquareUp.TypeSpecs.catalog_object()]
        }

  @type time_range :: %{optional(:end_at) => binary(), optional(:start_at) => binary()}

  @type retrieve_customer_group_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:group) => SquareUp.TypeSpecs.customer_group()
        }

  @type search_loyalty_events_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:events) => [SquareUp.TypeSpecs.loyalty_event()]
        }

  @type measurement_unit_volume :: binary()
  @type catalog_query_items_for_item_options :: %{optional(:item_option_ids) => [binary()]}

  @type v1_list_inventory_request :: %{
          optional(:batch_token) => binary(),
          optional(:limit) => integer()
        }

  @type batch_retrieve_inventory_changes_request :: %{
          optional(:catalog_object_ids) => [binary()],
          optional(:cursor) => binary(),
          optional(:location_ids) => [binary()],
          optional(:states) => [binary()],
          optional(:types) => [binary()],
          optional(:updated_after) => binary(),
          optional(:updated_before) => binary()
        }

  @type customer_creation_source_filter :: %{
          optional(:rule) => binary(),
          optional(:values) => [binary()]
        }

  @type tender_card_details_entry_method :: binary()
  @type create_loyalty_reward_request :: %{
          required(:idempotency_key) => binary(),
          required(:reward) => SquareUp.TypeSpecs.loyalty_reward()
        }

  @type search_invoices_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:invoices) => [SquareUp.TypeSpecs.invoice()]
        }

  @type create_catalog_image_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:image) => SquareUp.TypeSpecs.catalog_object()
        }

  @type v1_list_timecards_request :: %{
          optional(:batch_token) => binary(),
          optional(:begin_clockin_time) => binary(),
          optional(:begin_clockout_time) => binary(),
          optional(:begin_updated_at) => binary(),
          optional(:deleted) => boolean(),
          optional(:employee_id) => binary(),
          optional(:end_clockin_time) => binary(),
          optional(:end_clockout_time) => binary(),
          optional(:end_updated_at) => binary(),
          optional(:limit) => integer(),
          optional(:order) => binary()
        }

  @type create_dispute_evidence_file_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:evidence) => SquareUp.TypeSpecs.dispute_evidence()
        }

  @type order_line_item_discount_scope :: binary()
  @type get_shift_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:shift) => SquareUp.TypeSpecs.shift()
        }

  @type order_created_object :: %{optional(:order_created) => SquareUp.TypeSpecs.order_created()}

  @type catalog_v1_id :: %{
          optional(:catalog_v1_id) => binary(),
          optional(:location_id) => binary()
        }

  @type delete_invoice_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type v1_phone_number :: %{required(:calling_code) => binary(), required(:number) => binary()}

  @type v1_update_page_cell_request :: %{required(:body) => SquareUp.TypeSpecs.v1_page_cell()}

  @type register_domain_response_status :: binary()
  @type loyalty_account_mapping_type :: binary()
  @type v1_delete_variation_request :: %{}

  @type charge_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:transaction) => SquareUp.TypeSpecs.transaction()
        }

  @type get_device_code_request :: %{}

  @type v1_list_employee_roles_response :: %{
          optional(:items) => [SquareUp.TypeSpecs.v1_employee_role()]
        }

  @type list_invoices_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          required(:location_id) => binary()
        }

  @type v1_create_modifier_option_request :: %{
          optional(:body) => SquareUp.TypeSpecs.v1_modifier_option()
        }

  @type get_device_code_response :: %{
          optional(:device_code) => SquareUp.TypeSpecs.device_code(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type inventory_adjustment :: %{
          optional(:catalog_object_id) => binary(),
          optional(:catalog_object_type) => binary(),
          optional(:created_at) => binary(),
          optional(:employee_id) => binary(),
          optional(:from_state) => binary(),
          optional(:goods_receipt_id) => binary(),
          optional(:id) => binary(),
          optional(:location_id) => binary(),
          optional(:occurred_at) => binary(),
          optional(:purchase_order_id) => binary(),
          optional(:quantity) => binary(),
          optional(:reference_id) => binary(),
          optional(:refund_id) => binary(),
          optional(:source) => SquareUp.TypeSpecs.source_application(),
          optional(:to_state) => binary(),
          optional(:total_price_money) => SquareUp.TypeSpecs.money(),
          optional(:transaction_id) => binary()
        }

  @type get_bank_account_by_v1_id_request :: %{}

  @type create_device_code_request :: %{
          required(:device_code) => SquareUp.TypeSpecs.device_code(),
          required(:idempotency_key) => binary()
        }

  @type shift_sort_field :: binary()
  @type delete_customer_request :: %{}

  @type v1_list_bank_accounts_response :: %{
          optional(:items) => [SquareUp.TypeSpecs.v1_bank_account()]
        }

  @type v1_update_variation_request :: %{required(:body) => SquareUp.TypeSpecs.v1_variation()}

  @type cash_drawer_event_type :: binary()
  @type tender_bank_transfer_details_status :: binary()
  @type measurement_unit_length :: binary()
  @type customer_segment :: %{
          optional(:created_at) => binary(),
          optional(:id) => binary(),
          required(:name) => binary(),
          optional(:updated_at) => binary()
        }

  @type update_team_member_request :: %{
          optional(:team_member) => SquareUp.TypeSpecs.team_member()
        }

  @type search_customers_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:query) => SquareUp.TypeSpecs.customer_query()
        }

  @type currency :: binary()
  @type source_application :: %{
          optional(:application_id) => binary(),
          optional(:name) => binary(),
          optional(:product) => binary()
        }

  @type v1_create_fee_request :: %{optional(:body) => SquareUp.TypeSpecs.v1_fee()}

  @type retrieve_customer_group_request :: %{}

  @type device_checkout_options :: %{
          required(:device_id) => binary(),
          optional(:skip_receipt_screen) => boolean(),
          optional(:tip_settings) => SquareUp.TypeSpecs.tip_settings()
        }

  @type employee :: %{
          optional(:created_at) => binary(),
          optional(:email) => binary(),
          optional(:first_name) => binary(),
          optional(:id) => binary(),
          optional(:is_owner) => boolean(),
          optional(:last_name) => binary(),
          optional(:location_ids) => [binary()],
          optional(:phone_number) => binary(),
          optional(:status) => binary(),
          optional(:updated_at) => binary()
        }

  @type retrieve_team_member_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:team_member) => SquareUp.TypeSpecs.team_member()
        }

  @type v1_variation :: %{
          optional(:id) => binary(),
          optional(:inventory_alert_threshold) => integer(),
          optional(:inventory_alert_type) => binary(),
          optional(:item_id) => binary(),
          optional(:name) => binary(),
          optional(:ordinal) => integer(),
          optional(:price_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:pricing_type) => binary(),
          optional(:sku) => binary(),
          optional(:track_inventory) => boolean(),
          optional(:user_data) => binary(),
          optional(:v2_id) => binary()
        }

  @type list_disputes_response :: %{
          optional(:cursor) => binary(),
          optional(:disputes) => [SquareUp.TypeSpecs.dispute()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type tax_inclusion_type :: binary()
  @type tender_type :: binary()
  @type customer_group :: %{
          optional(:created_at) => binary(),
          optional(:id) => binary(),
          required(:name) => binary(),
          optional(:updated_at) => binary()
        }

  @type calculate_order_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:order) => SquareUp.TypeSpecs.order()
        }

  @type get_bank_account_by_v1_id_response :: %{
          optional(:bank_account) => SquareUp.TypeSpecs.bank_account(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type v1_retrieve_modifier_list_request :: %{}

  @type get_payment_refund_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:refund) => SquareUp.TypeSpecs.payment_refund()
        }

  @type delete_customer_group_request :: %{}

  @type delete_shift_request :: %{}

  @type v1_list_fees_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_fee()]}

  @type search_team_members_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:team_members) => [SquareUp.TypeSpecs.team_member()]
        }

  @type create_mobile_authorization_code_response :: %{
          optional(:authorization_code) => binary(),
          optional(:error) => SquareUp.TypeSpecs.error(),
          optional(:expires_at) => binary()
        }

  @type retrieve_employee_response :: %{
          optional(:employee) => SquareUp.TypeSpecs.employee(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type catalog_custom_attribute_definition_selection_config :: %{
          optional(:allowed_selections) => [
            SquareUp.TypeSpecs.catalog_custom_attribute_definition_selection_config_custom_attribute_selection()
          ],
          optional(:max_allowed_selections) => integer()
        }

  @type dispute_reason :: binary()
  @type transaction_type :: binary()
  @type search_team_members_query :: %{
          optional(:filter) => SquareUp.TypeSpecs.search_team_members_filter()
        }

  @type loyalty_event_expire_points :: %{
          required(:loyalty_program_id) => binary(),
          required(:points) => integer()
        }

  @type loyalty_account :: %{
          optional(:balance) => integer(),
          optional(:created_at) => binary(),
          optional(:customer_id) => binary(),
          optional(:enrolled_at) => binary(),
          optional(:id) => binary(),
          optional(:lifetime_points) => integer(),
          required(:mappings) => [SquareUp.TypeSpecs.loyalty_account_mapping()],
          required(:program_id) => binary(),
          optional(:updated_at) => binary()
        }

  @type list_team_member_wages_request :: %{
          optional(:cursor) => binary(),
          optional(:limit) => integer(),
          optional(:team_member_id) => binary()
        }

  @type retrieve_inventory_physical_count_response :: %{
          optional(:count) => SquareUp.TypeSpecs.inventory_physical_count(),
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type v1_payment_surcharge_type :: binary()
  @type custom_attribute_filter :: %{
          optional(:bool_filter) => boolean(),
          optional(:custom_attribute_definition_id) => binary(),
          optional(:key) => binary(),
          optional(:number_filter) => SquareUp.TypeSpecs.range(),
          optional(:selection_uids_filter) => [binary()],
          optional(:string_filter) => binary()
        }

  @type card_brand :: binary()
  @type order_return_tax :: %{
          optional(:applied_money) => SquareUp.TypeSpecs.money(),
          optional(:catalog_object_id) => binary(),
          optional(:name) => binary(),
          optional(:percentage) => binary(),
          optional(:scope) => binary(),
          optional(:source_tax_uid) => binary(),
          optional(:type) => binary(),
          optional(:uid) => binary()
        }

  @type catalog_image :: %{
          optional(:caption) => binary(),
          optional(:name) => binary(),
          optional(:url) => binary()
        }

  @type v1_category :: %{
          optional(:id) => binary(),
          optional(:name) => binary(),
          optional(:v2_id) => binary()
        }

  @type action_cancel_reason :: binary()
  @type v1_list_locations_response :: %{optional(:items) => [SquareUp.TypeSpecs.v1_merchant()]}

  @type search_catalog_items_request_stock_level :: binary()
  @type order_service_charge_calculation_phase :: binary()
  @type remove_group_from_customer_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type upsert_catalog_object_response :: %{
          optional(:catalog_object) => SquareUp.TypeSpecs.catalog_object(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:id_mappings) => [SquareUp.TypeSpecs.catalog_id_mapping()]
        }

  @type list_device_codes_response :: %{
          optional(:cursor) => binary(),
          optional(:device_codes) => [SquareUp.TypeSpecs.device_code()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type business_hours :: %{optional(:periods) => [SquareUp.TypeSpecs.business_hours_period()]}

  @type capture_transaction_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type v1_create_refund_request :: %{
          required(:payment_id) => binary(),
          required(:reason) => binary(),
          optional(:refunded_money) => SquareUp.TypeSpecs.v1_money(),
          optional(:request_idempotence_key) => binary(),
          required(:type) => binary()
        }

  @type v1_adjust_inventory_request :: %{
          optional(:adjustment_type) => binary(),
          optional(:memo) => binary(),
          optional(:quantity_delta) => number()
        }

  @type catalog_quick_amount :: %{
          required(:amount) => SquareUp.TypeSpecs.money(),
          optional(:ordinal) => integer(),
          optional(:score) => integer(),
          required(:type) => binary()
        }

  @type loyalty_program_expiration_policy :: %{required(:expiration_duration) => binary()}

  @type team_member_wage :: %{
          optional(:hourly_rate) => SquareUp.TypeSpecs.money(),
          optional(:id) => binary(),
          optional(:team_member_id) => binary(),
          optional(:title) => binary()
        }

  @type create_dispute_evidence_text_request :: %{
          required(:evidence_text) => binary(),
          optional(:evidence_type) => binary(),
          required(:idempotency_key) => binary()
        }

  @type delete_catalog_object_request :: %{}

  @type calculate_order_request :: %{
          required(:order) => SquareUp.TypeSpecs.order(),
          optional(:proposed_rewards) => [SquareUp.TypeSpecs.order_reward()]
        }

  @type get_payment_refund_request :: %{}

  @type update_location_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:location) => SquareUp.TypeSpecs.location()
        }

  @type search_orders_customer_filter :: %{optional(:customer_ids) => [binary()]}

  @type customer_text_filter :: %{optional(:exact) => binary(), optional(:fuzzy) => binary()}

  @type v1_update_employee_request :: %{required(:body) => SquareUp.TypeSpecs.v1_employee()}

  @type v1_create_employee_role_request :: %{
          optional(:employee_role) => SquareUp.TypeSpecs.v1_employee_role()
        }

  @type card_type :: binary()
  @type create_refund_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:refund) => SquareUp.TypeSpecs.refund()
        }

  @type search_shifts_response :: %{
          optional(:cursor) => binary(),
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:shifts) => [SquareUp.TypeSpecs.shift()]
        }

  @type update_subscription_request :: %{
          optional(:subscription) => SquareUp.TypeSpecs.subscription()
        }

  @type v1_update_item_request :: %{required(:body) => SquareUp.TypeSpecs.v1_item()}

  @type standard_unit_description :: %{
          optional(:abbreviation) => binary(),
          optional(:name) => binary(),
          optional(:unit) => SquareUp.TypeSpecs.measurement_unit()
        }

  @type v1_fee_inclusion_type :: binary()
  @type v1_update_modifier_option_request :: %{
          required(:body) => SquareUp.TypeSpecs.v1_modifier_option()
        }

  @type list_employees_response :: %{
          optional(:cursor) => binary(),
          optional(:employees) => [SquareUp.TypeSpecs.employee()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type catalog_query_exact :: %{
          required(:attribute_name) => binary(),
          required(:attribute_value) => binary()
        }

  @type remove_dispute_evidence_response :: %{optional(:errors) => [SquareUp.TypeSpecs.error()]}

  @type complete_payment_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:payment) => SquareUp.TypeSpecs.payment()
        }

  @type search_loyalty_rewards_request_loyalty_reward_query :: %{
          required(:loyalty_account_id) => binary(),
          optional(:status) => binary()
        }

  @type batch_retrieve_inventory_counts_request :: %{
          optional(:catalog_object_ids) => [binary()],
          optional(:cursor) => binary(),
          optional(:location_ids) => [binary()],
          optional(:states) => [binary()],
          optional(:updated_after) => binary()
        }

  @type delete_catalog_object_response :: %{
          optional(:deleted_at) => binary(),
          optional(:deleted_object_ids) => [binary()],
          optional(:errors) => [SquareUp.TypeSpecs.error()]
        }

  @type list_payment_refunds_request :: %{
          optional(:begin_time) => binary(),
          optional(:cursor) => binary(),
          optional(:end_time) => binary(),
          optional(:location_id) => binary(),
          optional(:sort_order) => binary(),
          optional(:source_type) => binary(),
          optional(:status) => binary()
        }

  @type dispute_state :: binary()
  @type search_catalog_items_request :: %{
          optional(:category_ids) => [binary()],
          optional(:cursor) => binary(),
          optional(:custom_attribute_filters) => [SquareUp.TypeSpecs.custom_attribute_filter()],
          optional(:enabled_location_ids) => [binary()],
          optional(:limit) => integer(),
          optional(:product_types) => [binary()],
          optional(:sort_order) => binary(),
          optional(:stock_levels) => [binary()],
          optional(:text_filter) => binary()
        }

  @type v1_item_visibility :: binary()
  @type list_customer_segments_request :: %{optional(:cursor) => binary()}

  @type job_assignment :: %{
          optional(:annual_rate) => SquareUp.TypeSpecs.money(),
          optional(:hourly_rate) => SquareUp.TypeSpecs.money(),
          required(:job_title) => binary(),
          required(:pay_type) => binary(),
          optional(:weekly_hours) => integer()
        }

  @type loyalty_program_reward_definition_type :: binary()
  @type location_status :: binary()
  @type catalog_id_mapping :: %{
          optional(:client_object_id) => binary(),
          optional(:object_id) => binary()
        }

  @type loyalty_reward_status :: binary()
  @type v1_create_category_request :: %{optional(:body) => SquareUp.TypeSpecs.v1_category()}

  @type catalog_item_option :: %{
          optional(:description) => binary(),
          optional(:display_name) => binary(),
          optional(:item_count) => integer(),
          optional(:name) => binary(),
          optional(:show_colors) => boolean(),
          optional(:values) => [SquareUp.TypeSpecs.catalog_object()]
        }

  @type order_return :: %{
          optional(:return_amounts) => SquareUp.TypeSpecs.order_money_amounts(),
          optional(:return_discounts) => [SquareUp.TypeSpecs.order_return_discount()],
          optional(:return_line_items) => [SquareUp.TypeSpecs.order_return_line_item()],
          optional(:return_service_charges) => [SquareUp.TypeSpecs.order_return_service_charge()],
          optional(:return_taxes) => [SquareUp.TypeSpecs.order_return_tax()],
          optional(:rounding_adjustment) => SquareUp.TypeSpecs.order_rounding_adjustment(),
          optional(:source_order_id) => binary(),
          optional(:uid) => binary()
        }

  @type transaction_product :: binary()
  @type v1_delete_category_request :: %{}

  @type v1_retrieve_item_request :: %{}

  @type bulk_create_team_members_response :: %{
          optional(:errors) => [SquareUp.TypeSpecs.error()],
          optional(:team_members) => map()
        }

  @type order_return_line_item_modifier :: %{
          optional(:base_price_money) => SquareUp.TypeSpecs.money(),
          optional(:catalog_object_id) => binary(),
          optional(:name) => binary(),
          optional(:source_modifier_uid) => binary(),
          optional(:total_price_money) => SquareUp.TypeSpecs.money(),
          optional(:uid) => binary()
        }

  @type v1_tender_type :: binary()
end
