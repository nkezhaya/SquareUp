defmodule SquareUp.TypeSpecs do
  @type wage_setting :: %{
          created_at: binary(),
          is_overtime_exempt: boolean(),
          job_assignments: [SquareUp.TypeSpecs.job_assignment()],
          team_member_id: binary(),
          updated_at: binary(),
          version: integer()
        }

  @type retrieve_customer_response :: %{
          customer: SquareUp.TypeSpecs.customer(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type create_location_request :: %{location: SquareUp.TypeSpecs.location()}

  @type v1_retrieve_employee_request :: %{}

  @type retrieve_cash_drawer_shift_response :: %{
          cash_drawer_shift: SquareUp.TypeSpecs.cash_drawer_shift(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type shift_status :: binary()
  @type redeem_loyalty_reward_request :: %{idempotency_key: binary(), location_id: binary()}

  @type order_fulfillment_pickup_details :: %{
          accepted_at: binary(),
          auto_complete_duration: binary(),
          cancel_reason: binary(),
          canceled_at: binary(),
          curbside_pickup_details:
            SquareUp.TypeSpecs.order_fulfillment_pickup_details_curbside_pickup_details(),
          expired_at: binary(),
          expires_at: binary(),
          is_curbside_pickup: boolean(),
          note: binary(),
          picked_up_at: binary(),
          pickup_at: binary(),
          pickup_window_duration: binary(),
          placed_at: binary(),
          prep_time_duration: binary(),
          ready_at: binary(),
          recipient: SquareUp.TypeSpecs.order_fulfillment_recipient(),
          rejected_at: binary(),
          schedule_type: binary()
        }

  @type subscription_event_subscription_event_type :: binary()
  @type void_transaction_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type v1_settlement_entry :: %{
          amount_money: SquareUp.TypeSpecs.v1_money(),
          fee_money: SquareUp.TypeSpecs.v1_money(),
          payment_id: binary(),
          type: binary()
        }

  @type error_category :: binary()
  @type retrieve_wage_setting_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          wage_setting: SquareUp.TypeSpecs.wage_setting()
        }

  @type cancel_payment_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          payment: SquareUp.TypeSpecs.payment()
        }

  @type remove_dispute_evidence_request :: %{}

  @type retrieve_dispute_response :: %{
          dispute: SquareUp.TypeSpecs.dispute(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type list_break_types_request :: %{cursor: binary(), limit: integer(), location_id: binary()}

  @type update_order_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          order: SquareUp.TypeSpecs.order()
        }

  @type bulk_update_team_members_request :: %{team_members: map()}

  @type create_customer_group_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          group: SquareUp.TypeSpecs.customer_group()
        }

  @type money :: %{amount: integer(), currency: binary()}

  @type get_team_member_wage_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          team_member_wage: SquareUp.TypeSpecs.team_member_wage()
        }

  @type v1_update_order_request :: %{
          action: binary(),
          canceled_note: binary(),
          completed_note: binary(),
          refunded_note: binary(),
          shipped_tracking_number: binary()
        }

  @type tender :: %{
          additional_recipients: [SquareUp.TypeSpecs.additional_recipient()],
          amount_money: SquareUp.TypeSpecs.money(),
          bank_transfer_details: SquareUp.TypeSpecs.tender_bank_transfer_details(),
          card_details: SquareUp.TypeSpecs.tender_card_details(),
          cash_details: SquareUp.TypeSpecs.tender_cash_details(),
          created_at: binary(),
          customer_id: binary(),
          id: binary(),
          location_id: binary(),
          note: binary(),
          payment_id: binary(),
          processing_fee_money: SquareUp.TypeSpecs.money(),
          tip_money: SquareUp.TypeSpecs.money(),
          transaction_id: binary(),
          type: binary()
        }

  @type v1_create_refund_request_type :: binary()
  @type catalog_query_range :: %{
          attribute_max_value: integer(),
          attribute_min_value: integer(),
          attribute_name: binary()
        }

  @type invoice_sort :: %{field: binary(), order: binary()}

  @type cancel_invoice_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          invoice: SquareUp.TypeSpecs.invoice()
        }

  @type v1_list_categories_request :: %{}

  @type list_employee_wages_response :: %{
          cursor: binary(),
          employee_wages: [SquareUp.TypeSpecs.employee_wage()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type order_line_item_discount :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          applied_money: SquareUp.TypeSpecs.money(),
          catalog_object_id: binary(),
          metadata: map(),
          name: binary(),
          percentage: binary(),
          pricing_rule_id: binary(),
          reward_ids: [binary()],
          scope: binary(),
          type: binary(),
          uid: binary()
        }

  @type delete_shift_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type catalog_pricing_type :: binary()
  @type create_order_request :: %{
          idempotency_key: binary(),
          location_id: binary(),
          order: SquareUp.TypeSpecs.order()
        }

  @type v1_list_orders_request :: %{batch_token: binary(), limit: integer(), order: binary()}

  @type v1_list_settlements_response :: %{items: [SquareUp.TypeSpecs.v1_settlement()]}

  @type v1_update_page_request :: %{body: SquareUp.TypeSpecs.v1_page()}

  @type payment :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          app_fee_money: SquareUp.TypeSpecs.money(),
          billing_address: SquareUp.TypeSpecs.address(),
          buyer_email_address: binary(),
          card_details: SquareUp.TypeSpecs.card_payment_details(),
          created_at: binary(),
          customer_id: binary(),
          delay_action: binary(),
          delay_duration: binary(),
          delayed_until: binary(),
          employee_id: binary(),
          id: binary(),
          location_id: binary(),
          note: binary(),
          order_id: binary(),
          processing_fee: [SquareUp.TypeSpecs.processing_fee()],
          receipt_number: binary(),
          receipt_url: binary(),
          reference_id: binary(),
          refund_ids: [binary()],
          refunded_money: SquareUp.TypeSpecs.money(),
          shipping_address: SquareUp.TypeSpecs.address(),
          source_type: binary(),
          statement_description_identifier: binary(),
          status: binary(),
          tip_money: SquareUp.TypeSpecs.money(),
          total_money: SquareUp.TypeSpecs.money(),
          updated_at: binary()
        }

  @type v1_cash_drawer_shift_event_type :: binary()
  @type list_loyalty_programs_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          programs: [SquareUp.TypeSpecs.loyalty_program()]
        }

  @type v1_fee :: %{
          adjustment_type: binary(),
          applies_to_custom_amounts: boolean(),
          calculation_phase: binary(),
          enabled: boolean(),
          id: binary(),
          inclusion_type: binary(),
          name: binary(),
          rate: binary(),
          type: binary(),
          v2_id: binary()
        }

  @type v1_list_items_response :: %{items: [SquareUp.TypeSpecs.v1_item()]}

  @type tender_cash_details :: %{
          buyer_tendered_money: SquareUp.TypeSpecs.money(),
          change_back_money: SquareUp.TypeSpecs.money()
        }

  @type v1_payment_itemization :: %{
          discount_money: SquareUp.TypeSpecs.v1_money(),
          discounts: [SquareUp.TypeSpecs.v1_payment_discount()],
          gross_sales_money: SquareUp.TypeSpecs.v1_money(),
          item_detail: SquareUp.TypeSpecs.v1_payment_item_detail(),
          item_variation_name: binary(),
          itemization_type: binary(),
          modifiers: [SquareUp.TypeSpecs.v1_payment_modifier()],
          name: binary(),
          net_sales_money: SquareUp.TypeSpecs.v1_money(),
          notes: binary(),
          quantity: number(),
          single_quantity_money: SquareUp.TypeSpecs.v1_money(),
          taxes: [SquareUp.TypeSpecs.v1_payment_tax()],
          total_money: SquareUp.TypeSpecs.v1_money()
        }

  @type publish_invoice_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          invoice: SquareUp.TypeSpecs.invoice()
        }

  @type employee_wage :: %{
          employee_id: binary(),
          hourly_rate: SquareUp.TypeSpecs.money(),
          id: binary(),
          title: binary()
        }

  @type update_shift_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          shift: SquareUp.TypeSpecs.shift()
        }

  @type catalog_modifier_list :: %{
          modifiers: [SquareUp.TypeSpecs.catalog_object()],
          name: binary(),
          ordinal: integer(),
          selection_type: binary()
        }

  @type v1_inventory_entry :: %{quantity_on_hand: number(), variation_id: binary()}

  @type v1_retrieve_cash_drawer_shift_request :: %{}

  @type v1_tender_entry_method :: binary()
  @type update_item_modifier_lists_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          updated_at: binary()
        }

  @type get_shift_request :: %{}

  @type list_disputes_request :: %{cursor: binary(), location_id: binary(), states: [binary()]}

  @type add_group_to_customer_request :: %{}

  @type loyalty_event_redeem_reward :: %{
          loyalty_program_id: binary(),
          order_id: binary(),
          reward_id: binary()
        }

  @type v1_list_payments_response :: %{items: [SquareUp.TypeSpecs.v1_payment()]}

  @type refund_payment_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          refund: SquareUp.TypeSpecs.payment_refund()
        }

  @type v1_delete_modifier_option_request :: %{}

  @type v1_list_employees_request :: %{
          batch_token: binary(),
          begin_created_at: binary(),
          begin_updated_at: binary(),
          end_created_at: binary(),
          end_updated_at: binary(),
          external_id: binary(),
          limit: integer(),
          order: binary(),
          status: binary()
        }

  @type cash_drawer_device :: %{id: binary(), name: binary()}

  @type search_loyalty_rewards_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          rewards: [SquareUp.TypeSpecs.loyalty_reward()]
        }

  @type customer_query :: %{
          filter: SquareUp.TypeSpecs.customer_filter(),
          sort: SquareUp.TypeSpecs.customer_sort()
        }

  @type measurement_unit_generic :: binary()
  @type create_payment_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          payment: SquareUp.TypeSpecs.payment()
        }

  @type loyalty_reward :: %{
          created_at: binary(),
          id: binary(),
          loyalty_account_id: binary(),
          order_id: binary(),
          points: integer(),
          redeemed_at: binary(),
          reward_tier_id: binary(),
          status: binary(),
          updated_at: binary()
        }

  @type inventory_transfer :: %{
          catalog_object_id: binary(),
          catalog_object_type: binary(),
          created_at: binary(),
          employee_id: binary(),
          from_location_id: binary(),
          id: binary(),
          occurred_at: binary(),
          quantity: binary(),
          reference_id: binary(),
          source: SquareUp.TypeSpecs.source_application(),
          state: binary(),
          to_location_id: binary()
        }

  @type batch_retrieve_catalog_objects_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          objects: [SquareUp.TypeSpecs.catalog_object()],
          related_objects: [SquareUp.TypeSpecs.catalog_object()]
        }

  @type refund :: %{
          additional_recipients: [SquareUp.TypeSpecs.additional_recipient()],
          amount_money: SquareUp.TypeSpecs.money(),
          created_at: binary(),
          id: binary(),
          location_id: binary(),
          processing_fee_money: SquareUp.TypeSpecs.money(),
          reason: binary(),
          status: binary(),
          tender_id: binary(),
          transaction_id: binary()
        }

  @type v1_retrieve_employee_role_request :: %{}

  @type revoke_token_request :: %{
          access_token: binary(),
          client_id: binary(),
          merchant_id: binary(),
          revoke_only_access_token: boolean()
        }

  @type list_subscription_events_request :: %{cursor: binary(), limit: integer()}

  @type invoice_recipient :: %{
          address: SquareUp.TypeSpecs.address(),
          company_name: binary(),
          customer_id: binary(),
          email_address: binary(),
          family_name: binary(),
          given_name: binary(),
          phone_number: binary()
        }

  @type retrieve_subscription_request :: %{}

  @type calculate_loyalty_points_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          points: integer()
        }

  @type v1_bank_account :: %{
          account_number_suffix: binary(),
          bank_name: binary(),
          currency_code: binary(),
          id: binary(),
          merchant_id: binary(),
          name: binary(),
          routing_number: binary(),
          type: binary()
        }

  @type order_line_item_applied_discount :: %{
          applied_money: SquareUp.TypeSpecs.money(),
          discount_uid: binary(),
          uid: binary()
        }

  @type register_domain_response :: %{errors: [SquareUp.TypeSpecs.error()], status: binary()}

  @type bank_account :: %{
          account_number_suffix: binary(),
          account_type: binary(),
          bank_name: binary(),
          country: binary(),
          creditable: boolean(),
          currency: binary(),
          debit_mandate_reference_id: binary(),
          debitable: boolean(),
          fingerprint: binary(),
          holder_name: binary(),
          id: binary(),
          location_id: binary(),
          primary_bank_identification_number: binary(),
          reference_id: binary(),
          secondary_bank_identification_number: binary(),
          status: binary(),
          version: integer()
        }

  @type list_catalog_request :: %{cursor: binary(), types: binary()}

  @type update_customer_group_request :: %{group: SquareUp.TypeSpecs.customer_group()}

  @type delete_customer_card_request :: %{}

  @type accumulate_loyalty_points_request :: %{
          accumulate_points: SquareUp.TypeSpecs.loyalty_event_accumulate_points(),
          idempotency_key: binary(),
          location_id: binary()
        }

  @type create_customer_response :: %{
          customer: SquareUp.TypeSpecs.customer(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type batch_retrieve_inventory_counts_response :: %{
          counts: [SquareUp.TypeSpecs.inventory_count()],
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type retrieve_location_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          location: SquareUp.TypeSpecs.location()
        }

  @type list_payments_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          payments: [SquareUp.TypeSpecs.payment()]
        }

  @type search_orders_state_filter :: %{states: [binary()]}

  @type accumulate_loyalty_points_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          event: SquareUp.TypeSpecs.loyalty_event()
        }

  @type create_shift_request :: %{idempotency_key: binary(), shift: SquareUp.TypeSpecs.shift()}

  @type update_customer_group_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          group: SquareUp.TypeSpecs.customer_group()
        }

  @type list_break_types_response :: %{
          break_types: [SquareUp.TypeSpecs.break_type()],
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type batch_retrieve_orders_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          orders: [SquareUp.TypeSpecs.order()]
        }

  @type list_transactions_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          transactions: [SquareUp.TypeSpecs.transaction()]
        }

  @type catalog_custom_attribute_value :: %{
          boolean_value: boolean(),
          custom_attribute_definition_id: binary(),
          key: binary(),
          name: binary(),
          number_value: binary(),
          selection_uid_values: [binary()],
          string_value: binary(),
          type: binary()
        }

  @type tip_settings :: %{
          allow_tipping: boolean(),
          custom_tip_field: boolean(),
          separate_tip_screen: boolean()
        }

  @type get_bank_account_request :: %{}

  @type add_group_to_customer_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type retrieve_employee_request :: %{}

  @type list_cash_drawer_shifts_request :: %{
          begin_time: binary(),
          cursor: binary(),
          end_time: binary(),
          limit: integer(),
          location_id: binary(),
          sort_order: binary()
        }

  @type search_shifts_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.shift_query()
        }

  @type batch_change_inventory_request :: %{
          changes: [SquareUp.TypeSpecs.inventory_change()],
          idempotency_key: binary(),
          ignore_unchanged_counts: boolean()
        }

  @type location_type :: binary()
  @type exclude_strategy :: binary()
  @type additional_recipient :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          description: binary(),
          location_id: binary(),
          receivable_id: binary()
        }

  @type v1_payment_itemization_itemization_type :: binary()
  @type adjust_loyalty_points_request :: %{
          adjust_points: SquareUp.TypeSpecs.loyalty_event_adjust_points(),
          idempotency_key: binary()
        }

  @type loyalty_event_type_filter :: %{types: [binary()]}

  @type search_orders_date_time_filter :: %{
          closed_at: SquareUp.TypeSpecs.time_range(),
          created_at: SquareUp.TypeSpecs.time_range(),
          updated_at: SquareUp.TypeSpecs.time_range()
        }

  @type cancel_invoice_request :: %{version: integer()}

  @type v1_merchant_business_type :: binary()
  @type calculate_loyalty_points_request :: %{
          order_id: binary(),
          transaction_amount_money: SquareUp.TypeSpecs.money()
        }

  @type processing_fee :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          effective_at: binary(),
          type: binary()
        }

  @type create_customer_card_request :: %{
          billing_address: SquareUp.TypeSpecs.address(),
          card_nonce: binary(),
          cardholder_name: binary(),
          verification_token: binary()
        }

  @type filter_value :: %{all: [binary()], any: [binary()], none: [binary()]}

  @type retrieve_inventory_count_response :: %{
          counts: [SquareUp.TypeSpecs.inventory_count()],
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type dispute_evidence_file :: %{filename: binary(), filetype: binary()}

  @type loyalty_event_create_reward :: %{
          loyalty_program_id: binary(),
          points: integer(),
          reward_id: binary()
        }

  @type inventory_alert_type :: binary()
  @type v1_payment_surcharge :: %{
          amount_money: SquareUp.TypeSpecs.v1_money(),
          applied_money: SquareUp.TypeSpecs.v1_money(),
          name: binary(),
          rate: binary(),
          surcharge_id: binary(),
          taxable: boolean(),
          taxes: [SquareUp.TypeSpecs.v1_payment_tax()],
          type: binary()
        }

  @type v1_discount_discount_type :: binary()
  @type loyalty_event_source :: binary()
  @type catalog_quick_amounts_settings :: %{
          amounts: [SquareUp.TypeSpecs.catalog_quick_amount()],
          eligible_for_auto_amounts: boolean(),
          option: binary()
        }

  @type get_terminal_checkout_response :: %{
          checkout: SquareUp.TypeSpecs.terminal_checkout(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type item_variation_location_overrides :: %{
          inventory_alert_threshold: integer(),
          inventory_alert_type: binary(),
          location_id: binary(),
          price_money: SquareUp.TypeSpecs.money(),
          pricing_type: binary(),
          track_inventory: boolean()
        }

  @type terminal_checkout :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          cancel_reason: binary(),
          created_at: binary(),
          deadline_duration: binary(),
          device_options: SquareUp.TypeSpecs.device_checkout_options(),
          id: binary(),
          note: binary(),
          payment_ids: [binary()],
          reference_id: binary(),
          status: binary(),
          updated_at: binary()
        }

  @type bulk_update_team_members_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          team_members: map()
        }

  @type loyalty_program :: %{
          accrual_rules: [SquareUp.TypeSpecs.loyalty_program_accrual_rule()],
          created_at: binary(),
          expiration_policy: SquareUp.TypeSpecs.loyalty_program_expiration_policy(),
          id: binary(),
          location_ids: [binary()],
          reward_tiers: [SquareUp.TypeSpecs.loyalty_program_reward_tier()],
          status: binary(),
          terminology: SquareUp.TypeSpecs.loyalty_program_terminology(),
          updated_at: binary()
        }

  @type v1_list_orders_response :: %{items: [SquareUp.TypeSpecs.v1_order()]}

  @type loyalty_event_query :: %{filter: SquareUp.TypeSpecs.loyalty_event_filter()}

  @type search_orders_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          order_entries: [SquareUp.TypeSpecs.order_entry()],
          orders: [SquareUp.TypeSpecs.order()]
        }

  @type shift_wage :: %{hourly_rate: SquareUp.TypeSpecs.money(), title: binary()}

  @type v1_delete_modifier_list_request :: %{}

  @type cash_drawer_shift_summary :: %{
          closed_at: binary(),
          closed_cash_money: SquareUp.TypeSpecs.money(),
          description: binary(),
          ended_at: binary(),
          expected_cash_money: SquareUp.TypeSpecs.money(),
          id: binary(),
          opened_at: binary(),
          opened_cash_money: SquareUp.TypeSpecs.money(),
          state: binary()
        }

  @type catalog_query_text :: %{keywords: [binary()]}

  @type search_orders_source_filter :: %{source_names: [binary()]}

  @type job_assignment_pay_type :: binary()
  @type loyalty_event_date_time_filter :: %{created_at: SquareUp.TypeSpecs.time_range()}

  @type order_fulfillment_shipment_details :: %{
          cancel_reason: binary(),
          canceled_at: binary(),
          carrier: binary(),
          expected_shipped_at: binary(),
          failed_at: binary(),
          failure_reason: binary(),
          in_progress_at: binary(),
          packaged_at: binary(),
          placed_at: binary(),
          recipient: SquareUp.TypeSpecs.order_fulfillment_recipient(),
          shipped_at: binary(),
          shipping_note: binary(),
          shipping_type: binary(),
          tracking_number: binary(),
          tracking_url: binary()
        }

  @type register_domain_request :: %{domain_name: binary()}

  @type v1_variation_inventory_alert_type :: binary()
  @type order_created :: %{
          created_at: binary(),
          location_id: binary(),
          order_id: binary(),
          state: binary(),
          version: integer()
        }

  @type catalog_tax :: %{
          applies_to_custom_amounts: boolean(),
          calculation_phase: binary(),
          enabled: boolean(),
          inclusion_type: binary(),
          name: binary(),
          percentage: binary()
        }

  @type invoice_sort_field :: binary()
  @type v1_order_history_entry_action :: binary()
  @type v1_list_items_request :: %{batch_token: binary()}

  @type order_quantity_unit :: %{
          measurement_unit: SquareUp.TypeSpecs.measurement_unit(),
          precision: integer()
        }

  @type v1_update_modifier_list_request_selection_type :: binary()
  @type create_checkout_response :: %{
          checkout: SquareUp.TypeSpecs.checkout(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type disputed_payment :: %{payment_id: binary()}

  @type catalog_item_modifier_list_info :: %{
          enabled: boolean(),
          max_selected_modifiers: integer(),
          min_selected_modifiers: integer(),
          modifier_list_id: binary(),
          modifier_overrides: [SquareUp.TypeSpecs.catalog_modifier_override()]
        }

  @type catalog_custom_attribute_definition_type :: binary()
  @type retrieve_inventory_adjustment_request :: %{}

  @type device :: %{id: binary(), name: binary()}

  @type v1_merchant_account_type :: binary()
  @type measurement_unit_custom :: %{abbreviation: binary(), name: binary()}

  @type coordinates :: %{latitude: number(), longitude: number()}

  @type list_dispute_evidence_request :: %{}

  @type order_source :: %{name: binary()}

  @type measurement_unit_area :: binary()
  @type list_merchants_request :: %{cursor: integer()}

  @type dispute_evidence_type :: binary()
  @type v1_tender :: %{
          card_brand: binary(),
          change_back_money: SquareUp.TypeSpecs.v1_money(),
          employee_id: binary(),
          entry_method: binary(),
          id: binary(),
          is_exchange: boolean(),
          name: binary(),
          pan_suffix: binary(),
          payment_note: binary(),
          receipt_url: binary(),
          refunded_money: SquareUp.TypeSpecs.v1_money(),
          settled_at: binary(),
          tendered_at: binary(),
          tendered_money: SquareUp.TypeSpecs.v1_money(),
          total_money: SquareUp.TypeSpecs.v1_money(),
          type: binary()
        }

  @type delete_customer_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type delete_invoice_request :: %{version: integer()}

  @type v1_discount :: %{
          amount_money: SquareUp.TypeSpecs.v1_money(),
          color: binary(),
          discount_type: binary(),
          id: binary(),
          name: binary(),
          pin_required: boolean(),
          rate: binary(),
          v2_id: binary()
        }

  @type v1_list_employees_request_status :: binary()
  @type v1_list_cash_drawer_shifts_request :: %{
          begin_time: binary(),
          end_time: binary(),
          order: binary()
        }

  @type loyalty_program_status :: binary()
  @type v1_list_settlements_request :: %{
          batch_token: binary(),
          begin_time: binary(),
          end_time: binary(),
          limit: integer(),
          order: binary(),
          status: binary()
        }

  @type v1_apply_fee_request :: %{}

  @type order_line_item :: %{
          applied_discounts: [SquareUp.TypeSpecs.order_line_item_applied_discount()],
          applied_taxes: [SquareUp.TypeSpecs.order_line_item_applied_tax()],
          base_price_money: SquareUp.TypeSpecs.money(),
          catalog_object_id: binary(),
          gross_sales_money: SquareUp.TypeSpecs.money(),
          metadata: map(),
          modifiers: [SquareUp.TypeSpecs.order_line_item_modifier()],
          name: binary(),
          note: binary(),
          quantity: binary(),
          quantity_unit: SquareUp.TypeSpecs.order_quantity_unit(),
          total_discount_money: SquareUp.TypeSpecs.money(),
          total_money: SquareUp.TypeSpecs.money(),
          total_tax_money: SquareUp.TypeSpecs.money(),
          uid: binary(),
          variation_name: binary(),
          variation_total_price_money: SquareUp.TypeSpecs.money()
        }

  @type catalog_info_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          limits: SquareUp.TypeSpecs.catalog_info_response_limits(),
          standard_unit_description_group: SquareUp.TypeSpecs.standard_unit_description_group()
        }

  @type customer_inclusion_exclusion :: binary()
  @type update_item_taxes_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          updated_at: binary()
        }

  @type v1_retrieve_timecard_request :: %{}

  @type charge_request :: %{
          additional_recipients: [SquareUp.TypeSpecs.additional_recipient()],
          amount_money: SquareUp.TypeSpecs.money(),
          billing_address: SquareUp.TypeSpecs.address(),
          buyer_email_address: binary(),
          card_nonce: binary(),
          customer_card_id: binary(),
          customer_id: binary(),
          delay_capture: boolean(),
          idempotency_key: binary(),
          note: binary(),
          order_id: binary(),
          reference_id: binary(),
          shipping_address: SquareUp.TypeSpecs.address(),
          verification_token: binary()
        }

  @type customer_sort :: %{field: binary(), order: binary()}

  @type retrieve_customer_segment_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          segment: SquareUp.TypeSpecs.customer_segment()
        }

  @type order_updated :: %{
          created_at: binary(),
          location_id: binary(),
          order_id: binary(),
          state: binary(),
          updated_at: binary(),
          version: integer()
        }

  @type loyalty_event :: %{
          accumulate_points: SquareUp.TypeSpecs.loyalty_event_accumulate_points(),
          adjust_points: SquareUp.TypeSpecs.loyalty_event_adjust_points(),
          create_reward: SquareUp.TypeSpecs.loyalty_event_create_reward(),
          created_at: binary(),
          delete_reward: SquareUp.TypeSpecs.loyalty_event_delete_reward(),
          expire_points: SquareUp.TypeSpecs.loyalty_event_expire_points(),
          id: binary(),
          location_id: binary(),
          loyalty_account_id: binary(),
          other_event: SquareUp.TypeSpecs.loyalty_event_other(),
          redeem_reward: SquareUp.TypeSpecs.loyalty_event_redeem_reward(),
          source: binary(),
          type: binary()
        }

  @type v1_list_refunds_request :: %{
          batch_token: binary(),
          begin_time: binary(),
          end_time: binary(),
          limit: integer(),
          order: binary()
        }

  @type inventory_physical_count :: %{
          catalog_object_id: binary(),
          catalog_object_type: binary(),
          created_at: binary(),
          employee_id: binary(),
          id: binary(),
          location_id: binary(),
          occurred_at: binary(),
          quantity: binary(),
          reference_id: binary(),
          source: SquareUp.TypeSpecs.source_application(),
          state: binary()
        }

  @type search_subscriptions_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          subscriptions: [SquareUp.TypeSpecs.subscription()]
        }

  @type renew_token_request :: %{access_token: binary()}

  @type cancel_subscription_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          subscription: SquareUp.TypeSpecs.subscription()
        }

  @type list_customers_request :: %{cursor: binary(), sort_field: binary(), sort_order: binary()}

  @type v1_page_cell_object_type :: binary()
  @type get_bank_account_response :: %{
          bank_account: SquareUp.TypeSpecs.bank_account(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type loyalty_event_filter :: %{
          date_time_filter: SquareUp.TypeSpecs.loyalty_event_date_time_filter(),
          location_filter: SquareUp.TypeSpecs.loyalty_event_location_filter(),
          loyalty_account_filter: SquareUp.TypeSpecs.loyalty_event_loyalty_account_filter(),
          order_filter: SquareUp.TypeSpecs.loyalty_event_order_filter(),
          type_filter: SquareUp.TypeSpecs.loyalty_event_type_filter()
        }

  @type v1_variation_pricing_type :: binary()
  @type create_customer_card_response :: %{
          card: SquareUp.TypeSpecs.card(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type revoke_token_response :: %{success: boolean()}

  @type break :: %{
          break_type_id: binary(),
          end_at: binary(),
          expected_duration: binary(),
          id: binary(),
          is_paid: boolean(),
          name: binary(),
          start_at: binary()
        }

  @type catalog_custom_attribute_definition_number_config :: %{precision: integer()}

  @type workweek_config :: %{
          created_at: binary(),
          id: binary(),
          start_of_day_local_time: binary(),
          start_of_week: binary(),
          updated_at: binary(),
          version: integer()
        }

  @type error :: %{category: binary(), code: binary(), detail: binary(), field: binary()}

  @type bulk_create_team_members_request :: %{team_members: map()}

  @type search_catalog_objects_request :: %{
          begin_time: binary(),
          cursor: binary(),
          include_deleted_objects: boolean(),
          include_related_objects: boolean(),
          limit: integer(),
          object_types: [binary()],
          query: SquareUp.TypeSpecs.catalog_query()
        }

  @type v1_remove_fee_request :: %{}

  @type v1_settlement_entry_type :: binary()
  @type accept_dispute_response :: %{
          dispute: SquareUp.TypeSpecs.dispute(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type order_fulfillment_pickup_details_schedule_type :: binary()
  @type v1_delete_item_request :: %{}

  @type retrieve_merchant_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          merchant: SquareUp.TypeSpecs.merchant()
        }

  @type v1_list_timecard_events_request :: %{}

  @type v1_modifier_list :: %{
          id: binary(),
          modifier_options: [SquareUp.TypeSpecs.v1_modifier_option()],
          name: binary(),
          selection_type: binary(),
          v2_id: binary()
        }

  @type loyalty_program_reward_definition_scope :: binary()
  @type v1_timecard :: %{
          clockin_location_id: binary(),
          clockin_time: binary(),
          clockout_location_id: binary(),
          clockout_time: binary(),
          created_at: binary(),
          deleted: boolean(),
          doubletime_seconds_worked: number(),
          employee_id: binary(),
          id: binary(),
          overtime_seconds_worked: number(),
          regular_seconds_worked: number(),
          updated_at: binary()
        }

  @type weekday :: binary()
  @type v1_list_categories_response :: %{items: [SquareUp.TypeSpecs.v1_category()]}

  @type shift_sort :: %{field: binary(), order: binary()}

  @type terminal_checkout_query_sort :: %{sort_order: binary()}

  @type order_fulfillment_updated_update :: %{
          fulfillment_uid: binary(),
          new_state: binary(),
          old_state: binary()
        }

  @type v1_delete_page_cell_request :: %{column: binary(), row: binary()}

  @type update_customer_request :: %{
          address: SquareUp.TypeSpecs.address(),
          birthday: binary(),
          company_name: binary(),
          email_address: binary(),
          family_name: binary(),
          given_name: binary(),
          nickname: binary(),
          note: binary(),
          phone_number: binary(),
          reference_id: binary()
        }

  @type catalog_object_batch :: %{objects: [SquareUp.TypeSpecs.catalog_object()]}

  @type v1_create_discount_request :: %{body: SquareUp.TypeSpecs.v1_discount()}

  @type order_state :: binary()
  @type update_invoice_request :: %{
          fields_to_clear: [binary()],
          idempotency_key: binary(),
          invoice: SquareUp.TypeSpecs.invoice()
        }

  @type merchant :: %{
          business_name: binary(),
          country: binary(),
          currency: binary(),
          id: binary(),
          language_code: binary(),
          main_location_id: binary(),
          status: binary()
        }

  @type v1_create_variation_request :: %{body: SquareUp.TypeSpecs.v1_variation()}

  @type product_type :: binary()
  @type submit_evidence_response :: %{
          dispute: SquareUp.TypeSpecs.dispute(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type tender_card_details_status :: binary()
  @type invoice_request_type :: binary()
  @type order_line_item_applied_tax :: %{
          applied_money: SquareUp.TypeSpecs.money(),
          tax_uid: binary(),
          uid: binary()
        }

  @type order_line_item_modifier :: %{
          base_price_money: SquareUp.TypeSpecs.money(),
          catalog_object_id: binary(),
          name: binary(),
          total_price_money: SquareUp.TypeSpecs.money(),
          uid: binary()
        }

  @type v1_payment_tax_inclusion_type :: binary()
  @type tender_bank_transfer_details :: %{status: binary()}

  @type v1_item_type :: binary()
  @type v1_update_category_request :: %{body: SquareUp.TypeSpecs.v1_category()}

  @type retrieve_merchant_request :: %{}

  @type create_team_member_request :: %{
          idempotency_key: binary(),
          team_member: SquareUp.TypeSpecs.team_member()
        }

  @type update_workweek_config_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          workweek_config: SquareUp.TypeSpecs.workweek_config()
        }

  @type retrieve_loyalty_reward_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          reward: SquareUp.TypeSpecs.loyalty_reward()
        }

  @type adjust_loyalty_points_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          event: SquareUp.TypeSpecs.loyalty_event()
        }

  @type catalog_item :: %{
          abbreviation: binary(),
          available_electronically: boolean(),
          available_for_pickup: boolean(),
          available_online: boolean(),
          category_id: binary(),
          description: binary(),
          item_options: [SquareUp.TypeSpecs.catalog_item_option_for_item()],
          label_color: binary(),
          modifier_list_info: [SquareUp.TypeSpecs.catalog_item_modifier_list_info()],
          name: binary(),
          product_type: binary(),
          skip_modifier_screen: boolean(),
          tax_ids: [binary()],
          variations: [SquareUp.TypeSpecs.catalog_object()]
        }

  @type customer_filter :: %{
          created_at: SquareUp.TypeSpecs.time_range(),
          creation_source: SquareUp.TypeSpecs.customer_creation_source_filter(),
          email_address: SquareUp.TypeSpecs.customer_text_filter(),
          group_ids: SquareUp.TypeSpecs.filter_value(),
          phone_number: SquareUp.TypeSpecs.customer_text_filter(),
          reference_id: SquareUp.TypeSpecs.customer_text_filter(),
          updated_at: SquareUp.TypeSpecs.time_range()
        }

  @type batch_delete_catalog_objects_response :: %{
          deleted_at: binary(),
          deleted_object_ids: [binary()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type list_payment_refunds_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          refunds: [SquareUp.TypeSpecs.payment_refund()]
        }

  @type batch_retrieve_orders_request :: %{location_id: binary(), order_ids: [binary()]}

  @type retrieve_location_request :: %{}

  @type dispute :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          brand_dispute_id: binary(),
          card_brand: binary(),
          created_at: binary(),
          dispute_id: binary(),
          disputed_payment: SquareUp.TypeSpecs.disputed_payment(),
          due_at: binary(),
          evidence_ids: [binary()],
          location_id: binary(),
          reason: binary(),
          reported_date: binary(),
          state: binary(),
          updated_at: binary(),
          version: integer()
        }

  @type invoice_filter :: %{customer_ids: [binary()], location_ids: [binary()]}

  @type v1_employee_role_permissions :: binary()
  @type v1_create_page_request :: %{body: SquareUp.TypeSpecs.v1_page()}

  @type order :: %{
          closed_at: binary(),
          created_at: binary(),
          customer_id: binary(),
          discounts: [SquareUp.TypeSpecs.order_line_item_discount()],
          fulfillments: [SquareUp.TypeSpecs.order_fulfillment()],
          id: binary(),
          line_items: [SquareUp.TypeSpecs.order_line_item()],
          location_id: binary(),
          metadata: map(),
          net_amounts: SquareUp.TypeSpecs.order_money_amounts(),
          pricing_options: SquareUp.TypeSpecs.order_pricing_options(),
          reference_id: binary(),
          refunds: [SquareUp.TypeSpecs.refund()],
          return_amounts: SquareUp.TypeSpecs.order_money_amounts(),
          returns: [SquareUp.TypeSpecs.order_return()],
          rewards: [SquareUp.TypeSpecs.order_reward()],
          rounding_adjustment: SquareUp.TypeSpecs.order_rounding_adjustment(),
          service_charges: [SquareUp.TypeSpecs.order_service_charge()],
          source: SquareUp.TypeSpecs.order_source(),
          state: binary(),
          taxes: [SquareUp.TypeSpecs.order_line_item_tax()],
          tenders: [SquareUp.TypeSpecs.tender()],
          total_discount_money: SquareUp.TypeSpecs.money(),
          total_money: SquareUp.TypeSpecs.money(),
          total_service_charge_money: SquareUp.TypeSpecs.money(),
          total_tax_money: SquareUp.TypeSpecs.money(),
          total_tip_money: SquareUp.TypeSpecs.money(),
          updated_at: binary(),
          version: integer()
        }

  @type measurement_unit :: %{
          area_unit: binary(),
          custom_unit: SquareUp.TypeSpecs.measurement_unit_custom(),
          generic_unit: binary(),
          length_unit: binary(),
          time_unit: binary(),
          type: binary(),
          volume_unit: binary(),
          weight_unit: binary()
        }

  @type loyalty_event_adjust_points :: %{
          loyalty_program_id: binary(),
          points: integer(),
          reason: binary()
        }

  @type catalog_discount_modify_tax_basis :: binary()
  @type search_team_members_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.search_team_members_query()
        }

  @type catalog_custom_attribute_definition_app_visibility :: binary()
  @type list_loyalty_programs_request :: %{}

  @type loyalty_event_type :: binary()
  @type update_shift_request :: %{shift: SquareUp.TypeSpecs.shift()}

  @type catalog_item_product_type :: binary()
  @type catalog_quick_amount_type :: binary()
  @type pay_order_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          order: SquareUp.TypeSpecs.order()
        }

  @type team_member_assigned_locations_assignment_type :: binary()
  @type v1_payment_item_detail :: %{
          category_name: binary(),
          item_id: binary(),
          item_variation_id: binary(),
          sku: binary()
        }

  @type v1_item :: %{
          abbreviation: binary(),
          available_for_pickup: boolean(),
          available_online: boolean(),
          category: SquareUp.TypeSpecs.v1_category(),
          category_id: binary(),
          color: binary(),
          description: binary(),
          fees: [SquareUp.TypeSpecs.v1_fee()],
          id: binary(),
          master_image: SquareUp.TypeSpecs.v1_item_image(),
          modifier_lists: [SquareUp.TypeSpecs.v1_modifier_list()],
          name: binary(),
          taxable: boolean(),
          type: binary(),
          v2_id: binary(),
          variations: [SquareUp.TypeSpecs.v1_variation()],
          visibility: binary()
        }

  @type update_break_type_request :: %{break_type: SquareUp.TypeSpecs.break_type()}

  @type create_order_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          order: SquareUp.TypeSpecs.order()
        }

  @type v1_remove_modifier_list_request :: %{}

  @type v1_settlement_status :: binary()
  @type search_orders_filter :: %{
          customer_filter: SquareUp.TypeSpecs.search_orders_customer_filter(),
          date_time_filter: SquareUp.TypeSpecs.search_orders_date_time_filter(),
          fulfillment_filter: SquareUp.TypeSpecs.search_orders_fulfillment_filter(),
          source_filter: SquareUp.TypeSpecs.search_orders_source_filter(),
          state_filter: SquareUp.TypeSpecs.search_orders_state_filter()
        }

  @type delete_break_type_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type order_line_item_tax :: %{
          applied_money: SquareUp.TypeSpecs.money(),
          catalog_object_id: binary(),
          metadata: map(),
          name: binary(),
          percentage: binary(),
          scope: binary(),
          type: binary(),
          uid: binary()
        }

  @type v1_delete_discount_request :: %{}

  @type get_break_type_request :: %{}

  @type customer_creation_source :: binary()
  @type checkout :: %{
          additional_recipients: [SquareUp.TypeSpecs.additional_recipient()],
          ask_for_shipping_address: boolean(),
          checkout_page_url: binary(),
          created_at: binary(),
          id: binary(),
          merchant_support_email: binary(),
          order: SquareUp.TypeSpecs.order(),
          pre_populate_buyer_email: binary(),
          pre_populate_shipping_address: SquareUp.TypeSpecs.address(),
          redirect_url: binary()
        }

  @type catalog_custom_attribute_definition_string_config :: %{enforce_uniqueness: boolean()}

  @type cancel_payment_request :: %{}

  @type v1_retrieve_order_request :: %{}

  @type remove_group_from_customer_request :: %{}

  @type retrieve_customer_request :: %{}

  @type update_order_request :: %{
          fields_to_clear: [binary()],
          idempotency_key: binary(),
          order: SquareUp.TypeSpecs.order()
        }

  @type list_locations_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          locations: [SquareUp.TypeSpecs.location()]
        }

  @type catalog_query_item_variations_for_item_option_values :: %{
          item_option_value_ids: [binary()]
        }

  @type v1_page_cell_placeholder_type :: binary()
  @type complete_payment_request :: %{}

  @type cancel_subscription_request :: %{}

  @type batch_upsert_catalog_objects_request :: %{
          batches: [SquareUp.TypeSpecs.catalog_object_batch()],
          idempotency_key: binary()
        }

  @type location :: %{
          address: SquareUp.TypeSpecs.address(),
          business_email: binary(),
          business_hours: SquareUp.TypeSpecs.business_hours(),
          business_name: binary(),
          capabilities: [binary()],
          coordinates: SquareUp.TypeSpecs.coordinates(),
          country: binary(),
          created_at: binary(),
          currency: binary(),
          description: binary(),
          facebook_url: binary(),
          id: binary(),
          instagram_username: binary(),
          language_code: binary(),
          logo_url: binary(),
          mcc: binary(),
          merchant_id: binary(),
          name: binary(),
          phone_number: binary(),
          pos_background_url: binary(),
          status: binary(),
          timezone: binary(),
          twitter_username: binary(),
          type: binary(),
          website_url: binary()
        }

  @type inventory_change :: %{
          adjustment: SquareUp.TypeSpecs.inventory_adjustment(),
          physical_count: SquareUp.TypeSpecs.inventory_physical_count(),
          transfer: SquareUp.TypeSpecs.inventory_transfer(),
          type: binary()
        }

  @type ecom_visibility :: binary()
  @type loyalty_event_location_filter :: %{location_ids: [binary()]}

  @type invoice_request_method :: binary()
  @type v1_update_order_request_action :: binary()
  @type publish_invoice_request :: %{idempotency_key: binary(), version: integer()}

  @type cancel_payment_by_idempotency_key_request :: %{idempotency_key: binary()}

  @type search_invoices_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.invoice_query()
        }

  @type catalog_item_option_for_item :: %{item_option_id: binary()}

  @type invoice_query :: %{
          filter: SquareUp.TypeSpecs.invoice_filter(),
          sort: SquareUp.TypeSpecs.invoice_sort()
        }

  @type catalog_item_variation :: %{
          inventory_alert_threshold: integer(),
          inventory_alert_type: binary(),
          item_id: binary(),
          item_option_values: [SquareUp.TypeSpecs.catalog_item_option_value_for_item_variation()],
          location_overrides: [SquareUp.TypeSpecs.item_variation_location_overrides()],
          measurement_unit_id: binary(),
          name: binary(),
          ordinal: integer(),
          price_money: SquareUp.TypeSpecs.money(),
          pricing_type: binary(),
          service_duration: integer(),
          sku: binary(),
          track_inventory: boolean(),
          upc: binary(),
          user_data: binary()
        }

  @type upsert_catalog_object_request :: %{
          idempotency_key: binary(),
          object: SquareUp.TypeSpecs.catalog_object()
        }

  @type break_type :: %{
          break_name: binary(),
          created_at: binary(),
          expected_duration: binary(),
          id: binary(),
          is_paid: boolean(),
          location_id: binary(),
          updated_at: binary(),
          version: integer()
        }

  @type v1_delete_fee_request :: %{}

  @type create_terminal_checkout_response :: %{
          checkout: SquareUp.TypeSpecs.terminal_checkout(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type capture_transaction_request :: %{}

  @type subscription_event :: %{
          effective_date: binary(),
          id: binary(),
          plan_id: binary(),
          subscription_event_type: binary()
        }

  @type v1_bank_account_type :: binary()
  @type catalog_info_response_limits :: %{
          batch_delete_max_object_ids: integer(),
          batch_retrieve_max_object_ids: integer(),
          batch_upsert_max_objects_per_batch: integer(),
          batch_upsert_max_total_objects: integer(),
          search_max_page_limit: integer(),
          update_item_modifier_lists_max_item_ids: integer(),
          update_item_modifier_lists_max_modifier_lists_to_disable: integer(),
          update_item_modifier_lists_max_modifier_lists_to_enable: integer(),
          update_item_taxes_max_item_ids: integer(),
          update_item_taxes_max_taxes_to_disable: integer(),
          update_item_taxes_max_taxes_to_enable: integer()
        }

  @type retrieve_dispute_evidence_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          evidence: SquareUp.TypeSpecs.dispute_evidence()
        }

  @type loyalty_program_terminology :: %{one: binary(), other: binary()}

  @type catalog_measurement_unit :: %{
          measurement_unit: SquareUp.TypeSpecs.measurement_unit(),
          precision: integer()
        }

  @type subscription_status :: binary()
  @type v1_modifier_list_selection_type :: binary()
  @type order_return_line_item :: %{
          applied_discounts: [SquareUp.TypeSpecs.order_line_item_applied_discount()],
          applied_taxes: [SquareUp.TypeSpecs.order_line_item_applied_tax()],
          base_price_money: SquareUp.TypeSpecs.money(),
          catalog_object_id: binary(),
          gross_return_money: SquareUp.TypeSpecs.money(),
          name: binary(),
          note: binary(),
          quantity: binary(),
          quantity_unit: SquareUp.TypeSpecs.order_quantity_unit(),
          return_modifiers: [SquareUp.TypeSpecs.order_return_line_item_modifier()],
          source_line_item_uid: binary(),
          total_discount_money: SquareUp.TypeSpecs.money(),
          total_money: SquareUp.TypeSpecs.money(),
          total_tax_money: SquareUp.TypeSpecs.money(),
          uid: binary(),
          variation_name: binary(),
          variation_total_price_money: SquareUp.TypeSpecs.money()
        }

  @type cancel_terminal_checkout_request :: %{}

  @type loyalty_program_reward_definition :: %{
          catalog_object_ids: [binary()],
          discount_type: binary(),
          fixed_discount_money: SquareUp.TypeSpecs.money(),
          max_discount_money: SquareUp.TypeSpecs.money(),
          percentage_discount: binary(),
          scope: binary()
        }

  @type charge_request_additional_recipient :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          description: binary(),
          location_id: binary()
        }

  @type catalog_query_items_for_modifier_list :: %{modifier_list_ids: [binary()]}

  @type v1_list_timecard_events_response :: %{items: [SquareUp.TypeSpecs.v1_timecard_event()]}

  @type v1_retrieve_settlement_request :: %{}

  @type v1_delete_timecard_request :: %{}

  @type list_catalog_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          objects: [SquareUp.TypeSpecs.catalog_object()]
        }

  @type list_customers_response :: %{
          cursor: binary(),
          customers: [SquareUp.TypeSpecs.customer()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type range :: %{max: binary(), min: binary()}

  @type shift_filter_status :: binary()
  @type list_transactions_request :: %{
          begin_time: binary(),
          cursor: binary(),
          end_time: binary(),
          sort_order: binary()
        }

  @type update_customer_response :: %{
          customer: SquareUp.TypeSpecs.customer(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type v1_list_fees_request :: %{}

  @type update_subscription_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          subscription: SquareUp.TypeSpecs.subscription()
        }

  @type catalog_discount :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          discount_type: binary(),
          label_color: binary(),
          modify_tax_basis: binary(),
          name: binary(),
          percentage: binary(),
          pin_required: boolean()
        }

  @type v1_apply_modifier_list_request :: %{}

  @type retrieve_inventory_changes_response :: %{
          changes: [SquareUp.TypeSpecs.inventory_change()],
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type subscription :: %{
          canceled_date: binary(),
          card_id: binary(),
          created_at: binary(),
          customer_id: binary(),
          id: binary(),
          invoice_ids: [binary()],
          location_id: binary(),
          paid_until_date: binary(),
          plan_id: binary(),
          price_override_money: SquareUp.TypeSpecs.money(),
          start_date: binary(),
          status: binary(),
          tax_percentage: binary(),
          timezone: binary(),
          version: integer()
        }

  @type get_invoice_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          invoice: SquareUp.TypeSpecs.invoice()
        }

  @type loyalty_event_other :: %{loyalty_program_id: binary(), points: integer()}

  @type inventory_count :: %{
          calculated_at: binary(),
          catalog_object_id: binary(),
          catalog_object_type: binary(),
          location_id: binary(),
          quantity: binary(),
          state: binary()
        }

  @type pay_order_request :: %{
          idempotency_key: binary(),
          order_version: integer(),
          payment_ids: [binary()]
        }

  @type retrieve_loyalty_account_request :: %{}

  @type catalog_product_set :: %{
          all_products: boolean(),
          name: binary(),
          product_ids_all: [binary()],
          product_ids_any: [binary()],
          quantity_exact: integer(),
          quantity_max: integer(),
          quantity_min: integer()
        }

  @type list_device_codes_request :: %{
          cursor: binary(),
          location_id: binary(),
          product_type: binary()
        }

  @type shift_filter :: %{
          employee_ids: [binary()],
          end: SquareUp.TypeSpecs.time_range(),
          location_ids: [binary()],
          start: SquareUp.TypeSpecs.time_range(),
          status: binary(),
          team_member_ids: [binary()],
          workday: SquareUp.TypeSpecs.shift_workday()
        }

  @type v1_create_item_request :: %{body: SquareUp.TypeSpecs.v1_item()}

  @type list_cash_drawer_shift_events_request :: %{
          cursor: binary(),
          limit: integer(),
          location_id: binary()
        }

  @type inventory_state :: binary()
  @type update_wage_setting_request :: %{wage_setting: SquareUp.TypeSpecs.wage_setting()}

  @type order_fulfillment_pickup_details_curbside_pickup_details :: %{
          buyer_arrived_at: binary(),
          curbside_details: binary()
        }

  @type v1_list_cash_drawer_shifts_response :: %{
          items: [SquareUp.TypeSpecs.v1_cash_drawer_shift()]
        }

  @type batch_upsert_catalog_objects_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          id_mappings: [SquareUp.TypeSpecs.catalog_id_mapping()],
          objects: [SquareUp.TypeSpecs.catalog_object()],
          updated_at: binary()
        }

  @type create_terminal_checkout_request :: %{
          checkout: SquareUp.TypeSpecs.terminal_checkout(),
          idempotency_key: binary()
        }

  @type v1_list_refunds_response :: %{items: [SquareUp.TypeSpecs.v1_refund()]}

  @type tax_calculation_phase :: binary()
  @type v1_list_locations_request :: %{}

  @type shift_workday_matcher :: binary()
  @type order_updated_object :: %{order_updated: SquareUp.TypeSpecs.order_updated()}

  @type v1_discount_color :: binary()
  @type device_details :: %{device_id: binary(), device_name: binary()}

  @type loyalty_account_mapping :: %{
          created_at: binary(),
          id: binary(),
          type: binary(),
          value: binary()
        }

  @type list_merchants_response :: %{
          cursor: integer(),
          errors: [SquareUp.TypeSpecs.error()],
          merchant: [SquareUp.TypeSpecs.merchant()]
        }

  @type device_code_status :: binary()
  @type order_fulfillment_type :: binary()
  @type create_break_type_request :: %{
          break_type: SquareUp.TypeSpecs.break_type(),
          idempotency_key: binary()
        }

  @type update_break_type_response :: %{
          break_type: SquareUp.TypeSpecs.break_type(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type order_fulfillment_recipient :: %{
          address: SquareUp.TypeSpecs.address(),
          customer_id: binary(),
          display_name: binary(),
          email_address: binary(),
          phone_number: binary()
        }

  @type refund_status :: binary()
  @type delete_loyalty_reward_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type loyalty_program_reward_tier :: %{
          created_at: binary(),
          definition: SquareUp.TypeSpecs.loyalty_program_reward_definition(),
          id: binary(),
          name: binary(),
          points: integer()
        }

  @type order_line_item_tax_type :: binary()
  @type order_fulfillment_updated :: %{
          created_at: binary(),
          fulfillment_update: [SquareUp.TypeSpecs.order_fulfillment_updated_update()],
          location_id: binary(),
          order_id: binary(),
          state: binary(),
          updated_at: binary(),
          version: integer()
        }

  @type balance_payment_details :: %{account_id: binary(), status: binary()}

  @type v1_employee_status :: binary()
  @type create_customer_group_request :: %{
          group: SquareUp.TypeSpecs.customer_group(),
          idempotency_key: binary()
        }

  @type catalog_query :: %{
          exact_query: SquareUp.TypeSpecs.catalog_query_exact(),
          item_variations_for_item_option_values_query:
            SquareUp.TypeSpecs.catalog_query_item_variations_for_item_option_values(),
          items_for_item_options_query: SquareUp.TypeSpecs.catalog_query_items_for_item_options(),
          items_for_modifier_list_query:
            SquareUp.TypeSpecs.catalog_query_items_for_modifier_list(),
          items_for_tax_query: SquareUp.TypeSpecs.catalog_query_items_for_tax(),
          prefix_query: SquareUp.TypeSpecs.catalog_query_prefix(),
          range_query: SquareUp.TypeSpecs.catalog_query_range(),
          sorted_attribute_query: SquareUp.TypeSpecs.catalog_query_sorted_attribute(),
          text_query: SquareUp.TypeSpecs.catalog_query_text()
        }

  @type v1_payment_modifier :: %{
          applied_money: SquareUp.TypeSpecs.v1_money(),
          modifier_option_id: binary(),
          name: binary()
        }

  @type payment_options :: %{autocomplete: boolean()}

  @type v1_update_fee_request :: %{body: SquareUp.TypeSpecs.v1_fee()}

  @type catalog_pricing_rule :: %{
          apply_products_id: binary(),
          discount_id: binary(),
          exclude_products_id: binary(),
          exclude_strategy: binary(),
          match_products_id: binary(),
          name: binary(),
          time_period_ids: [binary()],
          valid_from_date: binary(),
          valid_from_local_time: binary(),
          valid_until_date: binary(),
          valid_until_local_time: binary()
        }

  @type search_catalog_objects_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          latest_time: binary(),
          objects: [SquareUp.TypeSpecs.catalog_object()],
          related_objects: [SquareUp.TypeSpecs.catalog_object()]
        }

  @type search_loyalty_accounts_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.search_loyalty_accounts_request_loyalty_account_query()
        }

  @type batch_change_inventory_response :: %{
          counts: [SquareUp.TypeSpecs.inventory_count()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type search_orders_request :: %{
          cursor: binary(),
          limit: integer(),
          location_ids: [binary()],
          query: SquareUp.TypeSpecs.search_orders_query(),
          return_entries: boolean()
        }

  @type get_team_member_wage_request :: %{}

  @type product :: binary()
  @type retrieve_dispute_evidence_request :: %{}

  @type search_subscriptions_query :: %{filter: SquareUp.TypeSpecs.search_subscriptions_filter()}

  @type merchant_status :: binary()
  @type country :: binary()
  @type team_member_status :: binary()
  @type create_refund_request :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          idempotency_key: binary(),
          reason: binary(),
          tender_id: binary()
        }

  @type search_terminal_checkouts_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.terminal_checkout_query()
        }

  @type inventory_change_type :: binary()
  @type date_range :: %{end_date: binary(), start_date: binary()}

  @type list_invoices_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          invoices: [SquareUp.TypeSpecs.invoice()]
        }

  @type create_loyalty_reward_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          reward: SquareUp.TypeSpecs.loyalty_reward()
        }

  @type create_catalog_image_request :: %{
          idempotency_key: binary(),
          image: SquareUp.TypeSpecs.catalog_object(),
          object_id: binary()
        }

  @type v1_list_payments_request :: %{
          batch_token: binary(),
          begin_time: binary(),
          end_time: binary(),
          include_partial: boolean(),
          limit: integer(),
          order: binary()
        }

  @type create_mobile_authorization_code_request :: %{location_id: binary()}

  @type catalog_modifier :: %{
          modifier_list_id: binary(),
          name: binary(),
          ordinal: integer(),
          price_money: SquareUp.TypeSpecs.money()
        }

  @type order_return_discount :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          applied_money: SquareUp.TypeSpecs.money(),
          catalog_object_id: binary(),
          name: binary(),
          percentage: binary(),
          scope: binary(),
          source_discount_uid: binary(),
          type: binary(),
          uid: binary()
        }

  @type retrieve_dispute_request :: %{}

  @type list_customer_groups_request :: %{cursor: binary()}

  @type v1_order_history_entry :: %{action: binary(), created_at: binary()}

  @type search_orders_query :: %{
          filter: SquareUp.TypeSpecs.search_orders_filter(),
          sort: SquareUp.TypeSpecs.search_orders_sort()
        }

  @type void_transaction_request :: %{}

  @type bank_account_type :: binary()
  @type order_money_amounts :: %{
          discount_money: SquareUp.TypeSpecs.money(),
          service_charge_money: SquareUp.TypeSpecs.money(),
          tax_money: SquareUp.TypeSpecs.money(),
          tip_money: SquareUp.TypeSpecs.money(),
          total_money: SquareUp.TypeSpecs.money()
        }

  @type list_customer_segments_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          segments: [SquareUp.TypeSpecs.customer_segment()]
        }

  @type bank_account_status :: binary()
  @type measurement_unit_weight :: binary()
  @type retrieve_team_member_request :: %{}

  @type retrieve_loyalty_reward_request :: %{}

  @type catalog_subscription_plan :: %{
          name: binary(),
          phases: [SquareUp.TypeSpecs.subscription_phase()]
        }

  @type loyalty_program_accrual_rule :: %{
          accrual_type: binary(),
          catalog_object_id: binary(),
          points: integer(),
          spend_amount_money: SquareUp.TypeSpecs.money(),
          visit_minimum_amount_money: SquareUp.TypeSpecs.money()
        }

  @type v1_order :: %{
          btc_price_satoshi: number(),
          btc_receive_address: binary(),
          buyer_email: binary(),
          buyer_note: binary(),
          canceled_note: binary(),
          completed_note: binary(),
          created_at: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          expires_at: binary(),
          id: binary(),
          order_history: [SquareUp.TypeSpecs.v1_order_history_entry()],
          payment_id: binary(),
          promo_code: binary(),
          recipient_name: binary(),
          recipient_phone_number: binary(),
          refunded_note: binary(),
          shipping_address: SquareUp.TypeSpecs.address(),
          state: binary(),
          subtotal_money: SquareUp.TypeSpecs.v1_money(),
          tender: SquareUp.TypeSpecs.v1_tender(),
          total_discount_money: SquareUp.TypeSpecs.v1_money(),
          total_price_money: SquareUp.TypeSpecs.v1_money(),
          total_shipping_money: SquareUp.TypeSpecs.v1_money(),
          total_tax_money: SquareUp.TypeSpecs.v1_money(),
          updated_at: binary()
        }

  @type loyalty_event_loyalty_account_filter :: %{loyalty_account_id: binary()}

  @type v1_delete_page_request :: %{}

  @type v1_page_cell :: %{
          column: integer(),
          object_id: binary(),
          object_type: binary(),
          page_id: binary(),
          placeholder_type: binary(),
          row: integer()
        }

  @type catalog_item_option_value_for_item_variation :: %{
          item_option_id: binary(),
          item_option_value_id: binary()
        }

  @type v1_modifier_option :: %{
          id: binary(),
          modifier_list_id: binary(),
          name: binary(),
          on_by_default: boolean(),
          ordinal: integer(),
          price_money: SquareUp.TypeSpecs.v1_money(),
          v2_id: binary()
        }

  @type search_loyalty_events_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.loyalty_event_query()
        }

  @type v1_list_pages_request :: %{}

  @type catalog_item_option_value :: %{
          color: binary(),
          description: binary(),
          item_option_id: binary(),
          item_variation_count: integer(),
          name: binary(),
          ordinal: integer()
        }

  @type v1_list_inventory_response :: %{items: [SquareUp.TypeSpecs.v1_inventory_entry()]}

  @type create_subscription_request :: %{
          canceled_date: binary(),
          card_id: binary(),
          customer_id: binary(),
          idempotency_key: binary(),
          location_id: binary(),
          plan_id: binary(),
          price_override_money: SquareUp.TypeSpecs.money(),
          start_date: binary(),
          tax_percentage: binary(),
          timezone: binary()
        }

  @type catalog_modifier_list_selection_type :: binary()
  @type delete_loyalty_reward_request :: %{}

  @type delete_customer_group_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type create_dispute_evidence_file_request :: %{
          content_type: binary(),
          evidence_type: binary(),
          idempotency_key: binary()
        }

  @type obtain_token_request :: %{
          client_id: binary(),
          client_secret: binary(),
          code: binary(),
          grant_type: binary(),
          migration_token: binary(),
          redirect_uri: binary(),
          refresh_token: binary()
        }

  @type customer_sort_field :: binary()
  @type loyalty_event_delete_reward :: %{
          loyalty_program_id: binary(),
          points: integer(),
          reward_id: binary()
        }

  @type submit_evidence_request :: %{}

  @type shift_workday :: %{
          date_range: SquareUp.TypeSpecs.date_range(),
          default_timezone: binary(),
          match_shifts_by: binary()
        }

  @type shift :: %{
          breaks: [SquareUp.TypeSpecs.break()],
          created_at: binary(),
          employee_id: binary(),
          end_at: binary(),
          id: binary(),
          location_id: binary(),
          start_at: binary(),
          status: binary(),
          team_member_id: binary(),
          timezone: binary(),
          updated_at: binary(),
          version: integer(),
          wage: SquareUp.TypeSpecs.shift_wage()
        }

  @type card_prepaid_type :: binary()
  @type list_cash_drawer_shifts_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          items: [SquareUp.TypeSpecs.cash_drawer_shift_summary()]
        }

  @type v1_fee_adjustment_type :: binary()
  @type v1_list_modifier_lists_response :: %{items: [SquareUp.TypeSpecs.v1_modifier_list()]}

  @type retrieve_wage_setting_request :: %{}

  @type cancel_terminal_checkout_response :: %{
          checkout: SquareUp.TypeSpecs.terminal_checkout(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type list_refunds_request :: %{
          begin_time: binary(),
          cursor: binary(),
          end_time: binary(),
          sort_order: binary()
        }

  @type order_pricing_options :: %{auto_apply_discounts: boolean()}

  @type v1_refund_type :: binary()
  @type tender_card_details :: %{
          card: SquareUp.TypeSpecs.card(),
          entry_method: binary(),
          status: binary()
        }

  @type get_employee_wage_response :: %{
          employee_wage: SquareUp.TypeSpecs.employee_wage(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type catalog_modifier_override :: %{modifier_id: binary(), on_by_default: boolean()}

  @type v1_update_employee_role_request :: %{body: SquareUp.TypeSpecs.v1_employee_role()}

  @type delete_customer_card_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type address :: %{
          address_line_1: binary(),
          address_line_2: binary(),
          address_line_3: binary(),
          administrative_district_level_1: binary(),
          administrative_district_level_2: binary(),
          administrative_district_level_3: binary(),
          country: binary(),
          first_name: binary(),
          last_name: binary(),
          locality: binary(),
          organization: binary(),
          postal_code: binary(),
          sublocality: binary(),
          sublocality_2: binary(),
          sublocality_3: binary()
        }

  @type loyalty_event_order_filter :: %{order_id: binary()}

  @type order_service_charge :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          applied_money: SquareUp.TypeSpecs.money(),
          applied_taxes: [SquareUp.TypeSpecs.order_line_item_applied_tax()],
          calculation_phase: binary(),
          catalog_object_id: binary(),
          metadata: map(),
          name: binary(),
          percentage: binary(),
          taxable: boolean(),
          total_money: SquareUp.TypeSpecs.money(),
          total_tax_money: SquareUp.TypeSpecs.money(),
          uid: binary()
        }

  @type get_break_type_response :: %{
          break_type: SquareUp.TypeSpecs.break_type(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type search_loyalty_accounts_request_loyalty_account_query :: %{
          mappings: [SquareUp.TypeSpecs.loyalty_account_mapping()]
        }

  @type create_invoice_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          invoice: SquareUp.TypeSpecs.invoice()
        }

  @type subscription_cadence :: binary()
  @type v1_cash_drawer_event_event_type :: binary()
  @type create_dispute_evidence_text_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          evidence: SquareUp.TypeSpecs.dispute_evidence()
        }

  @type cash_drawer_shift :: %{
          cash_paid_in_money: SquareUp.TypeSpecs.money(),
          cash_paid_out_money: SquareUp.TypeSpecs.money(),
          cash_payment_money: SquareUp.TypeSpecs.money(),
          cash_refunds_money: SquareUp.TypeSpecs.money(),
          closed_at: binary(),
          closed_cash_money: SquareUp.TypeSpecs.money(),
          closing_employee_id: binary(),
          description: binary(),
          device: SquareUp.TypeSpecs.cash_drawer_device(),
          employee_ids: [binary()],
          ended_at: binary(),
          ending_employee_id: binary(),
          expected_cash_money: SquareUp.TypeSpecs.money(),
          id: binary(),
          opened_at: binary(),
          opened_cash_money: SquareUp.TypeSpecs.money(),
          opening_employee_id: binary(),
          state: binary()
        }

  @type error_code :: binary()
  @type retrieve_transaction_request :: %{}

  @type v1_fee_calculation_phase :: binary()
  @type search_terminal_checkouts_response :: %{
          checkouts: [SquareUp.TypeSpecs.terminal_checkout()],
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type card_payment_details :: %{
          application_cryptogram: binary(),
          application_identifier: binary(),
          application_name: binary(),
          auth_result_code: binary(),
          avs_status: binary(),
          card: SquareUp.TypeSpecs.card(),
          cvv_status: binary(),
          device_details: SquareUp.TypeSpecs.device_details(),
          entry_method: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          refund_requires_card_presence: boolean(),
          statement_description: binary(),
          status: binary(),
          verification_method: binary(),
          verification_results: binary()
        }

  @type measurement_unit_time :: binary()
  @type get_terminal_checkout_request :: %{}

  @type v1_tender_card_brand :: binary()
  @type catalog_object :: %{
          absent_at_location_ids: [binary()],
          catalog_v1_ids: [SquareUp.TypeSpecs.catalog_v1_id()],
          category_data: SquareUp.TypeSpecs.catalog_category(),
          custom_attribute_definition_data:
            SquareUp.TypeSpecs.catalog_custom_attribute_definition(),
          custom_attribute_values: map(),
          discount_data: SquareUp.TypeSpecs.catalog_discount(),
          id: binary(),
          image_data: SquareUp.TypeSpecs.catalog_image(),
          image_id: binary(),
          is_deleted: boolean(),
          item_data: SquareUp.TypeSpecs.catalog_item(),
          item_option_data: SquareUp.TypeSpecs.catalog_item_option(),
          item_option_value_data: SquareUp.TypeSpecs.catalog_item_option_value(),
          item_variation_data: SquareUp.TypeSpecs.catalog_item_variation(),
          measurement_unit_data: SquareUp.TypeSpecs.catalog_measurement_unit(),
          modifier_data: SquareUp.TypeSpecs.catalog_modifier(),
          modifier_list_data: SquareUp.TypeSpecs.catalog_modifier_list(),
          present_at_all_locations: boolean(),
          present_at_location_ids: [binary()],
          pricing_rule_data: SquareUp.TypeSpecs.catalog_pricing_rule(),
          product_set_data: SquareUp.TypeSpecs.catalog_product_set(),
          quick_amounts_settings_data: SquareUp.TypeSpecs.catalog_quick_amounts_settings(),
          subscription_plan_data: SquareUp.TypeSpecs.catalog_subscription_plan(),
          tax_data: SquareUp.TypeSpecs.catalog_tax(),
          time_period_data: SquareUp.TypeSpecs.catalog_time_period(),
          type: binary(),
          updated_at: binary(),
          version: integer()
        }

  @type list_cash_drawer_shift_events_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          events: [SquareUp.TypeSpecs.cash_drawer_shift_event()]
        }

  @type subscription_phase :: %{
          cadence: binary(),
          ordinal: integer(),
          periods: integer(),
          recurring_price_money: SquareUp.TypeSpecs.money(),
          uid: binary()
        }

  @type create_loyalty_account_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          loyalty_account: SquareUp.TypeSpecs.loyalty_account()
        }

  @type create_invoice_request :: %{
          idempotency_key: binary(),
          invoice: SquareUp.TypeSpecs.invoice()
        }

  @type v1_retrieve_business_request :: %{}

  @type v1_cash_drawer_shift :: %{
          cash_paid_in_money: SquareUp.TypeSpecs.v1_money(),
          cash_paid_out_money: SquareUp.TypeSpecs.v1_money(),
          cash_payment_money: SquareUp.TypeSpecs.v1_money(),
          cash_refunds_money: SquareUp.TypeSpecs.v1_money(),
          closed_at: binary(),
          closed_cash_money: SquareUp.TypeSpecs.v1_money(),
          closing_employee_id: binary(),
          description: binary(),
          device: SquareUp.TypeSpecs.device(),
          employee_ids: [binary()],
          ended_at: binary(),
          ending_employee_id: binary(),
          event_type: binary(),
          events: [SquareUp.TypeSpecs.v1_cash_drawer_event()],
          expected_cash_money: SquareUp.TypeSpecs.v1_money(),
          id: binary(),
          opened_at: binary(),
          opening_employee_id: binary(),
          starting_cash_money: SquareUp.TypeSpecs.v1_money()
        }

  @type retrieve_inventory_changes_request :: %{cursor: binary(), location_ids: binary()}

  @type invoice_payment_reminder :: %{
          message: binary(),
          relative_scheduled_days: integer(),
          sent_at: binary(),
          status: binary(),
          uid: binary()
        }

  @type invoice_payment_reminder_status :: binary()
  @type search_subscriptions_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.search_subscriptions_query()
        }

  @type create_shift_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          shift: SquareUp.TypeSpecs.shift()
        }

  @type invoice :: %{
          created_at: binary(),
          description: binary(),
          id: binary(),
          invoice_number: binary(),
          location_id: binary(),
          next_payment_amount_money: SquareUp.TypeSpecs.money(),
          order_id: binary(),
          payment_requests: [SquareUp.TypeSpecs.invoice_payment_request()],
          primary_recipient: SquareUp.TypeSpecs.invoice_recipient(),
          public_url: binary(),
          scheduled_at: binary(),
          status: binary(),
          timezone: binary(),
          title: binary(),
          updated_at: binary(),
          version: integer()
        }

  @type list_subscription_events_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          subscription_events: [SquareUp.TypeSpecs.subscription_event()]
        }

  @type catalog_query_items_for_tax :: %{tax_ids: [binary()]}

  @type order_fulfillment_updated_object :: %{
          order_fulfillment_updated: SquareUp.TypeSpecs.order_fulfillment_updated()
        }

  @type loyalty_program_accrual_rule_type :: binary()
  @type v1_refund :: %{
          created_at: binary(),
          is_exchange: boolean(),
          merchant_id: binary(),
          payment_id: binary(),
          processed_at: binary(),
          reason: binary(),
          refunded_additive_tax: [SquareUp.TypeSpecs.v1_payment_tax()],
          refunded_additive_tax_money: SquareUp.TypeSpecs.v1_money(),
          refunded_discount_money: SquareUp.TypeSpecs.v1_money(),
          refunded_inclusive_tax: [SquareUp.TypeSpecs.v1_payment_tax()],
          refunded_inclusive_tax_money: SquareUp.TypeSpecs.v1_money(),
          refunded_money: SquareUp.TypeSpecs.v1_money(),
          refunded_processing_fee_money: SquareUp.TypeSpecs.v1_money(),
          refunded_surcharge_money: SquareUp.TypeSpecs.v1_money(),
          refunded_surcharges: [SquareUp.TypeSpecs.v1_payment_surcharge()],
          refunded_tax_money: SquareUp.TypeSpecs.v1_money(),
          refunded_tip_money: SquareUp.TypeSpecs.v1_money(),
          type: binary()
        }

  @type search_loyalty_rewards_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.search_loyalty_rewards_request_loyalty_reward_query()
        }

  @type order_entry :: %{location_id: binary(), order_id: binary(), version: integer()}

  @type v1_merchant :: %{
          account_capabilities: [binary()],
          account_type: binary(),
          business_address: SquareUp.TypeSpecs.address(),
          business_name: binary(),
          business_phone: SquareUp.TypeSpecs.v1_phone_number(),
          business_type: binary(),
          country_code: binary(),
          currency_code: binary(),
          email: binary(),
          id: binary(),
          language_code: binary(),
          location_details: SquareUp.TypeSpecs.v1_merchant_location_details(),
          market_url: binary(),
          name: binary(),
          shipping_address: SquareUp.TypeSpecs.address()
        }

  @type update_invoice_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          invoice: SquareUp.TypeSpecs.invoice()
        }

  @type list_employees_request :: %{
          cursor: binary(),
          limit: integer(),
          location_id: binary(),
          status: binary()
        }

  @type measurement_unit_unit_type :: binary()
  @type v1_delete_timecard_response :: %{}

  @type list_workweek_configs_request :: %{cursor: binary(), limit: integer()}

  @type v1_payment_discount :: %{
          applied_money: SquareUp.TypeSpecs.v1_money(),
          discount_id: binary(),
          name: binary()
        }

  @type v1_update_timecard_request :: %{body: SquareUp.TypeSpecs.v1_timecard()}

  @type list_payments_request :: %{
          begin_time: binary(),
          card_brand: binary(),
          cursor: binary(),
          end_time: binary(),
          last_4: binary(),
          location_id: binary(),
          sort_order: binary(),
          total: integer()
        }

  @type order_fulfillment_state :: binary()
  @type order_fulfillment :: %{
          metadata: map(),
          pickup_details: SquareUp.TypeSpecs.order_fulfillment_pickup_details(),
          shipment_details: SquareUp.TypeSpecs.order_fulfillment_shipment_details(),
          state: binary(),
          type: binary(),
          uid: binary()
        }

  @type update_team_member_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          team_member: SquareUp.TypeSpecs.team_member()
        }

  @type v1_list_employees_response :: %{items: [SquareUp.TypeSpecs.v1_employee()]}

  @type create_customer_request :: %{
          address: SquareUp.TypeSpecs.address(),
          birthday: binary(),
          company_name: binary(),
          email_address: binary(),
          family_name: binary(),
          given_name: binary(),
          idempotency_key: binary(),
          nickname: binary(),
          note: binary(),
          phone_number: binary(),
          reference_id: binary()
        }

  @type list_employee_wages_request :: %{
          cursor: binary(),
          employee_id: binary(),
          limit: integer()
        }

  @type order_line_item_tax_scope :: binary()
  @type update_workweek_config_request :: %{workweek_config: SquareUp.TypeSpecs.workweek_config()}

  @type cancel_payment_by_idempotency_key_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type update_wage_setting_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          wage_setting: SquareUp.TypeSpecs.wage_setting()
        }

  @type v1_money :: %{amount: integer(), currency_code: binary()}

  @type catalog_discount_type :: binary()
  @type v1_employee :: %{
          authorized_location_ids: [binary()],
          created_at: binary(),
          email: binary(),
          external_id: binary(),
          first_name: binary(),
          id: binary(),
          last_name: binary(),
          role_ids: [binary()],
          status: binary(),
          updated_at: binary()
        }

  @type catalog_time_period :: %{event: binary()}

  @type v1_list_employee_roles_request :: %{
          batch_token: binary(),
          limit: integer(),
          order: binary()
        }

  @type search_loyalty_accounts_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          loyalty_accounts: [SquareUp.TypeSpecs.loyalty_account()]
        }

  @type create_team_member_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          team_member: SquareUp.TypeSpecs.team_member()
        }

  @type list_locations_request :: %{}

  @type v1_update_discount_request :: %{body: SquareUp.TypeSpecs.v1_discount()}

  @type v1_cash_drawer_event :: %{
          created_at: binary(),
          description: binary(),
          employee_id: binary(),
          event_money: SquareUp.TypeSpecs.v1_money(),
          event_type: binary(),
          id: binary()
        }

  @type list_refunds_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          refunds: [SquareUp.TypeSpecs.refund()]
        }

  @type v1_list_bank_accounts_request :: %{}

  @type retrieve_transaction_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          transaction: SquareUp.TypeSpecs.transaction()
        }

  @type search_orders_sort :: %{sort_field: binary(), sort_order: binary()}

  @type v1_timecard_event_event_type :: binary()
  @type search_team_members_filter :: %{location_ids: [binary()], status: binary()}

  @type catalog_custom_attribute_definition_selection_config_custom_attribute_selection :: %{
          name: binary(),
          uid: binary()
        }

  @type v1_payment_tax :: %{
          applied_money: SquareUp.TypeSpecs.v1_money(),
          errors: [SquareUp.TypeSpecs.error()],
          fee_id: binary(),
          inclusion_type: binary(),
          name: binary(),
          rate: binary()
        }

  @type get_payment_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          payment: SquareUp.TypeSpecs.payment()
        }

  @type v1_retrieve_payment_request :: %{}

  @type employee_status :: binary()
  @type get_invoice_request :: %{}

  @type batch_retrieve_catalog_objects_request :: %{
          include_related_objects: boolean(),
          object_ids: [binary()]
        }

  @type batch_retrieve_inventory_changes_response :: %{
          changes: [SquareUp.TypeSpecs.inventory_change()],
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type retrieve_catalog_object_request :: %{include_related_objects: boolean()}

  @type v1_create_modifier_list_request :: %{body: SquareUp.TypeSpecs.v1_modifier_list()}

  @type v1_employee_role :: %{
          created_at: binary(),
          id: binary(),
          is_owner: boolean(),
          name: binary(),
          permissions: [binary()],
          updated_at: binary()
        }

  @type cash_drawer_shift_event :: %{
          created_at: binary(),
          description: binary(),
          employee_id: binary(),
          event_money: SquareUp.TypeSpecs.money(),
          event_type: binary(),
          id: binary()
        }

  @type cash_drawer_shift_state :: binary()
  @type obtain_token_response :: %{
          access_token: binary(),
          expires_at: binary(),
          id_token: binary(),
          merchant_id: binary(),
          plan_id: binary(),
          refresh_token: binary(),
          subscription_id: binary(),
          token_type: binary()
        }

  @type search_subscriptions_filter :: %{customer_ids: [binary()], location_ids: [binary()]}

  @type catalog_custom_attribute_definition_seller_visibility :: binary()
  @type invoice_payment_request :: %{
          card_id: binary(),
          computed_amount_money: SquareUp.TypeSpecs.money(),
          due_date: binary(),
          fixed_amount_requested_money: SquareUp.TypeSpecs.money(),
          percentage_requested: binary(),
          reminders: [SquareUp.TypeSpecs.invoice_payment_reminder()],
          request_method: binary(),
          request_type: binary(),
          rounding_adjustment_included_money: SquareUp.TypeSpecs.money(),
          tipping_enabled: boolean(),
          total_completed_amount_money: SquareUp.TypeSpecs.money(),
          uid: binary()
        }

  @type update_location_request :: %{location: SquareUp.TypeSpecs.location()}

  @type v1_order_state :: binary()
  @type list_bank_accounts_request :: %{cursor: binary(), limit: integer(), location_id: binary()}

  @type customer_group_info :: %{id: binary(), name: binary()}

  @type catalog_object_type :: binary()
  @type v1_list_discounts_request :: %{}

  @type list_customer_groups_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          groups: [SquareUp.TypeSpecs.customer_group()]
        }

  @type payment_refund :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          app_fee_money: SquareUp.TypeSpecs.money(),
          created_at: binary(),
          id: binary(),
          location_id: binary(),
          order_id: binary(),
          payment_id: binary(),
          processing_fee: [SquareUp.TypeSpecs.processing_fee()],
          reason: binary(),
          status: binary(),
          updated_at: binary()
        }

  @type search_customers_response :: %{
          cursor: binary(),
          customers: [SquareUp.TypeSpecs.customer()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type v1_list_timecards_response :: %{items: [SquareUp.TypeSpecs.v1_timecard()]}

  @type v1_payment :: %{
          additive_tax: [SquareUp.TypeSpecs.v1_payment_tax()],
          additive_tax_money: SquareUp.TypeSpecs.v1_money(),
          created_at: binary(),
          creator_id: binary(),
          device: SquareUp.TypeSpecs.device(),
          discount_money: SquareUp.TypeSpecs.v1_money(),
          gross_sales_money: SquareUp.TypeSpecs.v1_money(),
          id: binary(),
          inclusive_tax: [SquareUp.TypeSpecs.v1_payment_tax()],
          inclusive_tax_money: SquareUp.TypeSpecs.v1_money(),
          is_partial: boolean(),
          itemizations: [SquareUp.TypeSpecs.v1_payment_itemization()],
          merchant_id: binary(),
          net_sales_money: SquareUp.TypeSpecs.v1_money(),
          net_total_money: SquareUp.TypeSpecs.v1_money(),
          payment_url: binary(),
          processing_fee_money: SquareUp.TypeSpecs.v1_money(),
          receipt_url: binary(),
          refunded_money: SquareUp.TypeSpecs.v1_money(),
          refunds: [SquareUp.TypeSpecs.v1_refund()],
          surcharge_money: SquareUp.TypeSpecs.v1_money(),
          surcharges: [SquareUp.TypeSpecs.v1_payment_surcharge()],
          swedish_rounding_money: SquareUp.TypeSpecs.v1_money(),
          tax_money: SquareUp.TypeSpecs.v1_money(),
          tender: [SquareUp.TypeSpecs.v1_tender()],
          tip_money: SquareUp.TypeSpecs.v1_money(),
          total_collected_money: SquareUp.TypeSpecs.v1_money()
        }

  @type card :: %{
          billing_address: SquareUp.TypeSpecs.address(),
          bin: binary(),
          card_brand: binary(),
          card_type: binary(),
          cardholder_name: binary(),
          exp_month: integer(),
          exp_year: integer(),
          fingerprint: binary(),
          id: binary(),
          last_4: binary(),
          prepaid_type: binary()
        }

  @type retrieve_subscription_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          subscription: SquareUp.TypeSpecs.subscription()
        }

  @type delete_break_type_request :: %{}

  @type retrieve_inventory_physical_count_request :: %{}

  @type batch_delete_catalog_objects_request :: %{object_ids: [binary()]}

  @type order_reward :: %{id: binary(), reward_tier_id: binary()}

  @type update_item_modifier_lists_request :: %{
          item_ids: [binary()],
          modifier_lists_to_disable: [binary()],
          modifier_lists_to_enable: [binary()]
        }

  @type v1_item_image :: %{id: binary(), url: binary()}

  @type v1_merchant_location_details :: %{nickname: binary()}

  @type device_code :: %{
          code: binary(),
          created_at: binary(),
          device_id: binary(),
          id: binary(),
          location_id: binary(),
          name: binary(),
          pair_by: binary(),
          paired_at: binary(),
          product_type: binary(),
          status: binary(),
          status_changed_at: binary()
        }

  @type v1_update_modifier_list_request :: %{name: binary(), selection_type: binary()}

  @type invoice_status :: binary()
  @type v1_page :: %{
          cells: [SquareUp.TypeSpecs.v1_page_cell()],
          id: binary(),
          name: binary(),
          page_index: integer()
        }

  @type customer :: %{
          address: SquareUp.TypeSpecs.address(),
          birthday: binary(),
          cards: [SquareUp.TypeSpecs.card()],
          company_name: binary(),
          created_at: binary(),
          creation_source: binary(),
          email_address: binary(),
          family_name: binary(),
          given_name: binary(),
          group_ids: [binary()],
          groups: [SquareUp.TypeSpecs.customer_group_info()],
          id: binary(),
          nickname: binary(),
          note: binary(),
          phone_number: binary(),
          preferences: SquareUp.TypeSpecs.customer_preferences(),
          reference_id: binary(),
          segment_ids: [binary()],
          updated_at: binary()
        }

  @type list_team_member_wages_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          team_member_wages: [SquareUp.TypeSpecs.team_member_wage()]
        }

  @type transaction :: %{
          client_id: binary(),
          created_at: binary(),
          id: binary(),
          location_id: binary(),
          order_id: binary(),
          product: binary(),
          reference_id: binary(),
          refunds: [SquareUp.TypeSpecs.refund()],
          shipping_address: SquareUp.TypeSpecs.address(),
          tenders: [SquareUp.TypeSpecs.tender()]
        }

  @type catalog_custom_attribute_definition :: %{
          allowed_object_types: [binary()],
          app_visibility: binary(),
          custom_attribute_usage_count: integer(),
          description: binary(),
          key: binary(),
          name: binary(),
          number_config: SquareUp.TypeSpecs.catalog_custom_attribute_definition_number_config(),
          selection_config:
            SquareUp.TypeSpecs.catalog_custom_attribute_definition_selection_config(),
          seller_visibility: binary(),
          source_application: SquareUp.TypeSpecs.source_application(),
          string_config: SquareUp.TypeSpecs.catalog_custom_attribute_definition_string_config(),
          type: binary()
        }

  @type v1_list_pages_response :: %{items: [SquareUp.TypeSpecs.v1_page()]}

  @type retrieve_inventory_count_request :: %{cursor: binary(), location_ids: binary()}

  @type renew_token_response :: %{
          access_token: binary(),
          expires_at: binary(),
          merchant_id: binary(),
          plan_id: binary(),
          subscription_id: binary(),
          token_type: binary()
        }

  @type standard_unit_description_group :: %{
          language_code: binary(),
          standard_unit_descriptions: [SquareUp.TypeSpecs.standard_unit_description()]
        }

  @type v1_fee_type :: binary()
  @type dispute_evidence :: %{
          dispute_id: binary(),
          evidence_id: binary(),
          evidence_type: binary(),
          uploaded_at: binary()
        }

  @type terminal_checkout_query_filter :: %{
          created_at: SquareUp.TypeSpecs.time_range(),
          device_id: binary(),
          status: binary()
        }

  @type get_payment_request :: %{}

  @type order_line_item_discount_type :: binary()
  @type list_bank_accounts_response :: %{
          bank_accounts: [SquareUp.TypeSpecs.bank_account()],
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type search_orders_sort_field :: binary()
  @type search_orders_fulfillment_filter :: %{
          fulfillment_states: [binary()],
          fulfillment_types: [binary()]
        }

  @type order_return_service_charge :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          applied_money: SquareUp.TypeSpecs.money(),
          applied_taxes: [SquareUp.TypeSpecs.order_line_item_applied_tax()],
          calculation_phase: binary(),
          catalog_object_id: binary(),
          name: binary(),
          percentage: binary(),
          source_service_charge_uid: binary(),
          taxable: boolean(),
          total_money: SquareUp.TypeSpecs.money(),
          total_tax_money: SquareUp.TypeSpecs.money(),
          uid: binary()
        }

  @type get_employee_wage_request :: %{}

  @type create_payment_request :: %{
          accept_partial_authorization: boolean(),
          amount_money: SquareUp.TypeSpecs.money(),
          app_fee_money: SquareUp.TypeSpecs.money(),
          autocomplete: boolean(),
          billing_address: SquareUp.TypeSpecs.address(),
          buyer_email_address: binary(),
          customer_id: binary(),
          delay_duration: binary(),
          idempotency_key: binary(),
          location_id: binary(),
          note: binary(),
          order_id: binary(),
          reference_id: binary(),
          shipping_address: SquareUp.TypeSpecs.address(),
          source_id: binary(),
          statement_description_identifier: binary(),
          tip_money: SquareUp.TypeSpecs.money(),
          verification_token: binary()
        }

  @type create_loyalty_account_request :: %{
          idempotency_key: binary(),
          loyalty_account: SquareUp.TypeSpecs.loyalty_account()
        }

  @type v1_item_color :: binary()
  @type retrieve_inventory_adjustment_response :: %{
          adjustment: SquareUp.TypeSpecs.inventory_adjustment(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type accept_dispute_request :: %{}

  @type team_member_assigned_locations :: %{assignment_type: binary(), location_ids: [binary()]}

  @type catalog_info_request :: %{}

  @type v1_retrieve_bank_account_request :: %{}

  @type create_location_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          location: SquareUp.TypeSpecs.location()
        }

  @type catalog_quick_amounts_settings_option :: binary()
  @type team_member :: %{
          assigned_locations: SquareUp.TypeSpecs.team_member_assigned_locations(),
          created_at: binary(),
          email_address: binary(),
          family_name: binary(),
          given_name: binary(),
          id: binary(),
          is_owner: boolean(),
          phone_number: binary(),
          reference_id: binary(),
          status: binary(),
          updated_at: binary()
        }

  @type sort_order :: binary()
  @type order_rounding_adjustment :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          name: binary(),
          uid: binary()
        }

  @type v1_list_discounts_response :: %{items: [SquareUp.TypeSpecs.v1_discount()]}

  @type customer_preferences :: %{email_unsubscribed: boolean()}

  @type retrieve_customer_segment_request :: %{}

  @type create_break_type_response :: %{
          break_type: SquareUp.TypeSpecs.break_type(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type day_of_week :: binary()
  @type terminal_checkout_query :: %{
          filter: SquareUp.TypeSpecs.terminal_checkout_query_filter(),
          sort: SquareUp.TypeSpecs.terminal_checkout_query_sort()
        }

  @type refund_payment_request :: %{
          amount_money: SquareUp.TypeSpecs.money(),
          app_fee_money: SquareUp.TypeSpecs.money(),
          idempotency_key: binary(),
          payment_id: binary(),
          reason: binary()
        }

  @type redeem_loyalty_reward_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          event: SquareUp.TypeSpecs.loyalty_event()
        }

  @type v1_list_modifier_lists_request :: %{}

  @type card_square_product :: binary()
  @type catalog_query_sorted_attribute :: %{
          attribute_name: binary(),
          initial_attribute_value: binary(),
          sort_order: binary()
        }

  @type loyalty_event_accumulate_points :: %{
          loyalty_program_id: binary(),
          order_id: binary(),
          points: integer()
        }

  @type update_item_taxes_request :: %{
          item_ids: [binary()],
          taxes_to_disable: [binary()],
          taxes_to_enable: [binary()]
        }

  @type create_checkout_request :: %{
          additional_recipients: [SquareUp.TypeSpecs.charge_request_additional_recipient()],
          ask_for_shipping_address: boolean(),
          idempotency_key: binary(),
          merchant_support_email: binary(),
          note: binary(),
          order: SquareUp.TypeSpecs.create_order_request(),
          pre_populate_buyer_email: binary(),
          pre_populate_shipping_address: SquareUp.TypeSpecs.address(),
          redirect_url: binary()
        }

  @type search_catalog_items_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          items: [SquareUp.TypeSpecs.catalog_object()],
          matched_variation_ids: [binary()]
        }

  @type create_device_code_response :: %{
          device_code: SquareUp.TypeSpecs.device_code(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type location_capability :: binary()
  @type v1_settlement :: %{
          bank_account_id: binary(),
          entries: [SquareUp.TypeSpecs.v1_settlement_entry()],
          id: binary(),
          initiated_at: binary(),
          status: binary(),
          total_money: SquareUp.TypeSpecs.v1_money()
        }

  @type v1_list_settlements_request_status :: binary()
  @type list_workweek_configs_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          workweek_configs: [SquareUp.TypeSpecs.workweek_config()]
        }

  @type business_hours_period :: %{
          day_of_week: binary(),
          end_local_time: binary(),
          start_local_time: binary()
        }

  @type retrieve_loyalty_account_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          loyalty_account: SquareUp.TypeSpecs.loyalty_account()
        }

  @type v1_timecard_event :: %{
          clockin_time: binary(),
          clockout_time: binary(),
          created_at: binary(),
          event_type: binary(),
          id: binary()
        }

  @type create_subscription_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          subscription: SquareUp.TypeSpecs.subscription()
        }

  @type v1_adjust_inventory_request_adjustment_type :: binary()
  @type catalog_query_prefix :: %{attribute_name: binary(), attribute_prefix: binary()}

  @type shift_query :: %{
          filter: SquareUp.TypeSpecs.shift_filter(),
          sort: SquareUp.TypeSpecs.shift_sort()
        }

  @type catalog_category :: %{name: binary()}

  @type list_dispute_evidence_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          evidence: [SquareUp.TypeSpecs.dispute_evidence()]
        }

  @type retrieve_cash_drawer_shift_request :: %{location_id: binary()}

  @type retrieve_catalog_object_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          object: SquareUp.TypeSpecs.catalog_object(),
          related_objects: [SquareUp.TypeSpecs.catalog_object()]
        }

  @type time_range :: %{end_at: binary(), start_at: binary()}

  @type retrieve_customer_group_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          group: SquareUp.TypeSpecs.customer_group()
        }

  @type search_loyalty_events_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          events: [SquareUp.TypeSpecs.loyalty_event()]
        }

  @type measurement_unit_volume :: binary()
  @type catalog_query_items_for_item_options :: %{item_option_ids: [binary()]}

  @type v1_list_inventory_request :: %{batch_token: binary(), limit: integer()}

  @type batch_retrieve_inventory_changes_request :: %{
          catalog_object_ids: [binary()],
          cursor: binary(),
          location_ids: [binary()],
          states: [binary()],
          types: [binary()],
          updated_after: binary(),
          updated_before: binary()
        }

  @type customer_creation_source_filter :: %{rule: binary(), values: [binary()]}

  @type tender_card_details_entry_method :: binary()
  @type create_loyalty_reward_request :: %{
          idempotency_key: binary(),
          reward: SquareUp.TypeSpecs.loyalty_reward()
        }

  @type search_invoices_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          invoices: [SquareUp.TypeSpecs.invoice()]
        }

  @type create_catalog_image_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          image: SquareUp.TypeSpecs.catalog_object()
        }

  @type v1_list_timecards_request :: %{
          batch_token: binary(),
          begin_clockin_time: binary(),
          begin_clockout_time: binary(),
          begin_updated_at: binary(),
          deleted: boolean(),
          employee_id: binary(),
          end_clockin_time: binary(),
          end_clockout_time: binary(),
          end_updated_at: binary(),
          limit: integer(),
          order: binary()
        }

  @type create_dispute_evidence_file_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          evidence: SquareUp.TypeSpecs.dispute_evidence()
        }

  @type order_line_item_discount_scope :: binary()
  @type get_shift_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          shift: SquareUp.TypeSpecs.shift()
        }

  @type order_created_object :: %{order_created: SquareUp.TypeSpecs.order_created()}

  @type catalog_v1_id :: %{catalog_v1_id: binary(), location_id: binary()}

  @type delete_invoice_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type v1_phone_number :: %{calling_code: binary(), number: binary()}

  @type v1_update_page_cell_request :: %{body: SquareUp.TypeSpecs.v1_page_cell()}

  @type register_domain_response_status :: binary()
  @type loyalty_account_mapping_type :: binary()
  @type v1_delete_variation_request :: %{}

  @type charge_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          transaction: SquareUp.TypeSpecs.transaction()
        }

  @type get_device_code_request :: %{}

  @type v1_list_employee_roles_response :: %{items: [SquareUp.TypeSpecs.v1_employee_role()]}

  @type list_invoices_request :: %{cursor: binary(), limit: integer(), location_id: binary()}

  @type v1_create_modifier_option_request :: %{body: SquareUp.TypeSpecs.v1_modifier_option()}

  @type get_device_code_response :: %{
          device_code: SquareUp.TypeSpecs.device_code(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type inventory_adjustment :: %{
          catalog_object_id: binary(),
          catalog_object_type: binary(),
          created_at: binary(),
          employee_id: binary(),
          from_state: binary(),
          goods_receipt_id: binary(),
          id: binary(),
          location_id: binary(),
          occurred_at: binary(),
          purchase_order_id: binary(),
          quantity: binary(),
          reference_id: binary(),
          refund_id: binary(),
          source: SquareUp.TypeSpecs.source_application(),
          to_state: binary(),
          total_price_money: SquareUp.TypeSpecs.money(),
          transaction_id: binary()
        }

  @type get_bank_account_by_v1_id_request :: %{}

  @type create_device_code_request :: %{
          device_code: SquareUp.TypeSpecs.device_code(),
          idempotency_key: binary()
        }

  @type shift_sort_field :: binary()
  @type delete_customer_request :: %{}

  @type v1_list_bank_accounts_response :: %{items: [SquareUp.TypeSpecs.v1_bank_account()]}

  @type v1_update_variation_request :: %{body: SquareUp.TypeSpecs.v1_variation()}

  @type cash_drawer_event_type :: binary()
  @type tender_bank_transfer_details_status :: binary()
  @type measurement_unit_length :: binary()
  @type customer_segment :: %{
          created_at: binary(),
          id: binary(),
          name: binary(),
          updated_at: binary()
        }

  @type update_team_member_request :: %{team_member: SquareUp.TypeSpecs.team_member()}

  @type search_customers_request :: %{
          cursor: binary(),
          limit: integer(),
          query: SquareUp.TypeSpecs.customer_query()
        }

  @type currency :: binary()
  @type source_application :: %{application_id: binary(), name: binary(), product: binary()}

  @type v1_create_fee_request :: %{body: SquareUp.TypeSpecs.v1_fee()}

  @type retrieve_customer_group_request :: %{}

  @type device_checkout_options :: %{
          device_id: binary(),
          skip_receipt_screen: boolean(),
          tip_settings: SquareUp.TypeSpecs.tip_settings()
        }

  @type employee :: %{
          created_at: binary(),
          email: binary(),
          first_name: binary(),
          id: binary(),
          is_owner: boolean(),
          last_name: binary(),
          location_ids: [binary()],
          phone_number: binary(),
          status: binary(),
          updated_at: binary()
        }

  @type retrieve_team_member_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          team_member: SquareUp.TypeSpecs.team_member()
        }

  @type v1_variation :: %{
          id: binary(),
          inventory_alert_threshold: integer(),
          inventory_alert_type: binary(),
          item_id: binary(),
          name: binary(),
          ordinal: integer(),
          price_money: SquareUp.TypeSpecs.v1_money(),
          pricing_type: binary(),
          sku: binary(),
          track_inventory: boolean(),
          user_data: binary(),
          v2_id: binary()
        }

  @type list_disputes_response :: %{
          cursor: binary(),
          disputes: [SquareUp.TypeSpecs.dispute()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type tax_inclusion_type :: binary()
  @type tender_type :: binary()
  @type customer_group :: %{
          created_at: binary(),
          id: binary(),
          name: binary(),
          updated_at: binary()
        }

  @type calculate_order_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          order: SquareUp.TypeSpecs.order()
        }

  @type get_bank_account_by_v1_id_response :: %{
          bank_account: SquareUp.TypeSpecs.bank_account(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type v1_retrieve_modifier_list_request :: %{}

  @type get_payment_refund_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          refund: SquareUp.TypeSpecs.payment_refund()
        }

  @type delete_customer_group_request :: %{}

  @type delete_shift_request :: %{}

  @type v1_list_fees_response :: %{items: [SquareUp.TypeSpecs.v1_fee()]}

  @type search_team_members_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          team_members: [SquareUp.TypeSpecs.team_member()]
        }

  @type create_mobile_authorization_code_response :: %{
          authorization_code: binary(),
          error: SquareUp.TypeSpecs.error(),
          expires_at: binary()
        }

  @type retrieve_employee_response :: %{
          employee: SquareUp.TypeSpecs.employee(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type catalog_custom_attribute_definition_selection_config :: %{
          allowed_selections: [
            SquareUp.TypeSpecs.catalog_custom_attribute_definition_selection_config_custom_attribute_selection()
          ],
          max_allowed_selections: integer()
        }

  @type dispute_reason :: binary()
  @type transaction_type :: binary()
  @type search_team_members_query :: %{filter: SquareUp.TypeSpecs.search_team_members_filter()}

  @type loyalty_event_expire_points :: %{loyalty_program_id: binary(), points: integer()}

  @type loyalty_account :: %{
          balance: integer(),
          created_at: binary(),
          customer_id: binary(),
          enrolled_at: binary(),
          id: binary(),
          lifetime_points: integer(),
          mappings: [SquareUp.TypeSpecs.loyalty_account_mapping()],
          program_id: binary(),
          updated_at: binary()
        }

  @type list_team_member_wages_request :: %{
          cursor: binary(),
          limit: integer(),
          team_member_id: binary()
        }

  @type retrieve_inventory_physical_count_response :: %{
          count: SquareUp.TypeSpecs.inventory_physical_count(),
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type v1_payment_surcharge_type :: binary()
  @type custom_attribute_filter :: %{
          bool_filter: boolean(),
          custom_attribute_definition_id: binary(),
          key: binary(),
          number_filter: SquareUp.TypeSpecs.range(),
          selection_uids_filter: [binary()],
          string_filter: binary()
        }

  @type card_brand :: binary()
  @type order_return_tax :: %{
          applied_money: SquareUp.TypeSpecs.money(),
          catalog_object_id: binary(),
          name: binary(),
          percentage: binary(),
          scope: binary(),
          source_tax_uid: binary(),
          type: binary(),
          uid: binary()
        }

  @type catalog_image :: %{caption: binary(), name: binary(), url: binary()}

  @type v1_category :: %{id: binary(), name: binary(), v2_id: binary()}

  @type action_cancel_reason :: binary()
  @type v1_list_locations_response :: %{items: [SquareUp.TypeSpecs.v1_merchant()]}

  @type search_catalog_items_request_stock_level :: binary()
  @type order_service_charge_calculation_phase :: binary()
  @type remove_group_from_customer_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type upsert_catalog_object_response :: %{
          catalog_object: SquareUp.TypeSpecs.catalog_object(),
          errors: [SquareUp.TypeSpecs.error()],
          id_mappings: [SquareUp.TypeSpecs.catalog_id_mapping()]
        }

  @type list_device_codes_response :: %{
          cursor: binary(),
          device_codes: [SquareUp.TypeSpecs.device_code()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type business_hours :: %{periods: [SquareUp.TypeSpecs.business_hours_period()]}

  @type capture_transaction_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type v1_create_refund_request :: %{
          payment_id: binary(),
          reason: binary(),
          refunded_money: SquareUp.TypeSpecs.v1_money(),
          request_idempotence_key: binary(),
          type: binary()
        }

  @type v1_adjust_inventory_request :: %{
          adjustment_type: binary(),
          memo: binary(),
          quantity_delta: number()
        }

  @type catalog_quick_amount :: %{
          amount: SquareUp.TypeSpecs.money(),
          ordinal: integer(),
          score: integer(),
          type: binary()
        }

  @type loyalty_program_expiration_policy :: %{expiration_duration: binary()}

  @type team_member_wage :: %{
          hourly_rate: SquareUp.TypeSpecs.money(),
          id: binary(),
          team_member_id: binary(),
          title: binary()
        }

  @type create_dispute_evidence_text_request :: %{
          evidence_text: binary(),
          evidence_type: binary(),
          idempotency_key: binary()
        }

  @type delete_catalog_object_request :: %{}

  @type calculate_order_request :: %{
          order: SquareUp.TypeSpecs.order(),
          proposed_rewards: [SquareUp.TypeSpecs.order_reward()]
        }

  @type get_payment_refund_request :: %{}

  @type update_location_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          location: SquareUp.TypeSpecs.location()
        }

  @type search_orders_customer_filter :: %{customer_ids: [binary()]}

  @type customer_text_filter :: %{exact: binary(), fuzzy: binary()}

  @type v1_update_employee_request :: %{body: SquareUp.TypeSpecs.v1_employee()}

  @type v1_create_employee_role_request :: %{employee_role: SquareUp.TypeSpecs.v1_employee_role()}

  @type card_type :: binary()
  @type create_refund_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          refund: SquareUp.TypeSpecs.refund()
        }

  @type search_shifts_response :: %{
          cursor: binary(),
          errors: [SquareUp.TypeSpecs.error()],
          shifts: [SquareUp.TypeSpecs.shift()]
        }

  @type update_subscription_request :: %{subscription: SquareUp.TypeSpecs.subscription()}

  @type v1_update_item_request :: %{body: SquareUp.TypeSpecs.v1_item()}

  @type standard_unit_description :: %{
          abbreviation: binary(),
          name: binary(),
          unit: SquareUp.TypeSpecs.measurement_unit()
        }

  @type v1_fee_inclusion_type :: binary()
  @type v1_update_modifier_option_request :: %{body: SquareUp.TypeSpecs.v1_modifier_option()}

  @type list_employees_response :: %{
          cursor: binary(),
          employees: [SquareUp.TypeSpecs.employee()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type catalog_query_exact :: %{attribute_name: binary(), attribute_value: binary()}

  @type remove_dispute_evidence_response :: %{errors: [SquareUp.TypeSpecs.error()]}

  @type complete_payment_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          payment: SquareUp.TypeSpecs.payment()
        }

  @type search_loyalty_rewards_request_loyalty_reward_query :: %{
          loyalty_account_id: binary(),
          status: binary()
        }

  @type batch_retrieve_inventory_counts_request :: %{
          catalog_object_ids: [binary()],
          cursor: binary(),
          location_ids: [binary()],
          states: [binary()],
          updated_after: binary()
        }

  @type delete_catalog_object_response :: %{
          deleted_at: binary(),
          deleted_object_ids: [binary()],
          errors: [SquareUp.TypeSpecs.error()]
        }

  @type list_payment_refunds_request :: %{
          begin_time: binary(),
          cursor: binary(),
          end_time: binary(),
          location_id: binary(),
          sort_order: binary(),
          source_type: binary(),
          status: binary()
        }

  @type dispute_state :: binary()
  @type search_catalog_items_request :: %{
          category_ids: [binary()],
          cursor: binary(),
          custom_attribute_filters: [SquareUp.TypeSpecs.custom_attribute_filter()],
          enabled_location_ids: [binary()],
          limit: integer(),
          product_types: [binary()],
          sort_order: binary(),
          stock_levels: [binary()],
          text_filter: binary()
        }

  @type v1_item_visibility :: binary()
  @type list_customer_segments_request :: %{cursor: binary()}

  @type job_assignment :: %{
          annual_rate: SquareUp.TypeSpecs.money(),
          hourly_rate: SquareUp.TypeSpecs.money(),
          job_title: binary(),
          pay_type: binary(),
          weekly_hours: integer()
        }

  @type loyalty_program_reward_definition_type :: binary()
  @type location_status :: binary()
  @type catalog_id_mapping :: %{client_object_id: binary(), object_id: binary()}

  @type loyalty_reward_status :: binary()
  @type v1_create_category_request :: %{body: SquareUp.TypeSpecs.v1_category()}

  @type catalog_item_option :: %{
          description: binary(),
          display_name: binary(),
          item_count: integer(),
          name: binary(),
          show_colors: boolean(),
          values: [SquareUp.TypeSpecs.catalog_object()]
        }

  @type order_return :: %{
          return_amounts: SquareUp.TypeSpecs.order_money_amounts(),
          return_discounts: [SquareUp.TypeSpecs.order_return_discount()],
          return_line_items: [SquareUp.TypeSpecs.order_return_line_item()],
          return_service_charges: [SquareUp.TypeSpecs.order_return_service_charge()],
          return_taxes: [SquareUp.TypeSpecs.order_return_tax()],
          rounding_adjustment: SquareUp.TypeSpecs.order_rounding_adjustment(),
          source_order_id: binary(),
          uid: binary()
        }

  @type transaction_product :: binary()
  @type v1_delete_category_request :: %{}

  @type v1_retrieve_item_request :: %{}

  @type bulk_create_team_members_response :: %{
          errors: [SquareUp.TypeSpecs.error()],
          team_members: map()
        }

  @type order_return_line_item_modifier :: %{
          base_price_money: SquareUp.TypeSpecs.money(),
          catalog_object_id: binary(),
          name: binary(),
          source_modifier_uid: binary(),
          total_price_money: SquareUp.TypeSpecs.money(),
          uid: binary()
        }

  @type v1_tender_type :: binary()
end
