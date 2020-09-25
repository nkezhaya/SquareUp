defmodule SquareUp.ResponseSchema do
  def wage_setting do
    %{
      created_at: :value,
      is_overtime_exempt: :value,
      job_assignments: [{:delegate, &SquareUp.ResponseSchema.job_assignment/0}],
      team_member_id: :value,
      updated_at: :value,
      version: :value
    }
  end

  def retrieve_customer_response do
    %{
      customer: {:delegate, &SquareUp.ResponseSchema.customer/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def create_location_request do
    %{location: {:delegate, &SquareUp.ResponseSchema.location/0}}
  end

  def v1_retrieve_employee_request do
    %{}
  end

  def retrieve_cash_drawer_shift_response do
    %{
      cash_drawer_shift: {:delegate, &SquareUp.ResponseSchema.cash_drawer_shift/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def shift_status do
    :value
  end

  def redeem_loyalty_reward_request do
    %{idempotency_key: :value, location_id: :value}
  end

  def order_fulfillment_pickup_details do
    %{
      accepted_at: :value,
      auto_complete_duration: :value,
      cancel_reason: :value,
      canceled_at: :value,
      curbside_pickup_details:
        {:delegate,
         &SquareUp.ResponseSchema.order_fulfillment_pickup_details_curbside_pickup_details/0},
      expired_at: :value,
      expires_at: :value,
      is_curbside_pickup: :value,
      note: :value,
      picked_up_at: :value,
      pickup_at: :value,
      pickup_window_duration: :value,
      placed_at: :value,
      prep_time_duration: :value,
      ready_at: :value,
      recipient: {:delegate, &SquareUp.ResponseSchema.order_fulfillment_recipient/0},
      rejected_at: :value,
      schedule_type: :value
    }
  end

  def subscription_event_subscription_event_type do
    :value
  end

  def void_transaction_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def v1_settlement_entry do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      fee_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      payment_id: :value,
      type: :value
    }
  end

  def error_category do
    :value
  end

  def retrieve_wage_setting_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      wage_setting: {:delegate, &SquareUp.ResponseSchema.wage_setting/0}
    }
  end

  def cancel_payment_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      payment: {:delegate, &SquareUp.ResponseSchema.payment/0}
    }
  end

  def remove_dispute_evidence_request do
    %{}
  end

  def retrieve_dispute_response do
    %{
      dispute: {:delegate, &SquareUp.ResponseSchema.dispute/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def list_break_types_request do
    %{cursor: :value, limit: :value, location_id: :value}
  end

  def update_order_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      order: {:delegate, &SquareUp.ResponseSchema.order/0}
    }
  end

  def bulk_update_team_members_request do
    %{team_members: :value}
  end

  def create_customer_group_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      group: {:delegate, &SquareUp.ResponseSchema.customer_group/0}
    }
  end

  def money do
    %{amount: :value, currency: :value}
  end

  def get_team_member_wage_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      team_member_wage: {:delegate, &SquareUp.ResponseSchema.team_member_wage/0}
    }
  end

  def v1_update_order_request do
    %{
      action: :value,
      canceled_note: :value,
      completed_note: :value,
      refunded_note: :value,
      shipped_tracking_number: :value
    }
  end

  def tender do
    %{
      additional_recipients: [{:delegate, &SquareUp.ResponseSchema.additional_recipient/0}],
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      bank_transfer_details: {:delegate, &SquareUp.ResponseSchema.tender_bank_transfer_details/0},
      card_details: {:delegate, &SquareUp.ResponseSchema.tender_card_details/0},
      cash_details: {:delegate, &SquareUp.ResponseSchema.tender_cash_details/0},
      created_at: :value,
      customer_id: :value,
      id: :value,
      location_id: :value,
      note: :value,
      payment_id: :value,
      processing_fee_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      tip_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      transaction_id: :value,
      type: :value
    }
  end

  def v1_create_refund_request_type do
    :value
  end

  def catalog_query_range do
    %{attribute_max_value: :value, attribute_min_value: :value, attribute_name: :value}
  end

  def invoice_sort do
    %{field: :value, order: :value}
  end

  def cancel_invoice_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      invoice: {:delegate, &SquareUp.ResponseSchema.invoice/0}
    }
  end

  def v1_list_categories_request do
    %{}
  end

  def list_employee_wages_response do
    %{
      cursor: :value,
      employee_wages: [{:delegate, &SquareUp.ResponseSchema.employee_wage/0}],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def order_line_item_discount do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      applied_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      catalog_object_id: :value,
      metadata: :value,
      name: :value,
      percentage: :value,
      pricing_rule_id: :value,
      reward_ids: [:value],
      scope: :value,
      type: :value,
      uid: :value
    }
  end

  def delete_shift_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def catalog_pricing_type do
    :value
  end

  def create_order_request do
    %{
      idempotency_key: :value,
      location_id: :value,
      order: {:delegate, &SquareUp.ResponseSchema.order/0}
    }
  end

  def v1_list_orders_request do
    %{batch_token: :value, limit: :value, order: :value}
  end

  def v1_list_settlements_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_settlement/0}]}
  end

  def v1_update_page_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_page/0}}
  end

  def payment do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      app_fee_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      billing_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      buyer_email_address: :value,
      card_details: {:delegate, &SquareUp.ResponseSchema.card_payment_details/0},
      created_at: :value,
      customer_id: :value,
      delay_action: :value,
      delay_duration: :value,
      delayed_until: :value,
      employee_id: :value,
      id: :value,
      location_id: :value,
      note: :value,
      order_id: :value,
      processing_fee: [{:delegate, &SquareUp.ResponseSchema.processing_fee/0}],
      receipt_number: :value,
      receipt_url: :value,
      reference_id: :value,
      refund_ids: [:value],
      refunded_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      shipping_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      source_type: :value,
      statement_description_identifier: :value,
      status: :value,
      tip_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      updated_at: :value
    }
  end

  def v1_cash_drawer_shift_event_type do
    :value
  end

  def list_loyalty_programs_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      programs: [{:delegate, &SquareUp.ResponseSchema.loyalty_program/0}]
    }
  end

  def v1_fee do
    %{
      adjustment_type: :value,
      applies_to_custom_amounts: :value,
      calculation_phase: :value,
      enabled: :value,
      id: :value,
      inclusion_type: :value,
      name: :value,
      rate: :value,
      type: :value,
      v2_id: :value
    }
  end

  def v1_list_items_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_item/0}]}
  end

  def tender_cash_details do
    %{
      buyer_tendered_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      change_back_money: {:delegate, &SquareUp.ResponseSchema.money/0}
    }
  end

  def v1_payment_itemization do
    %{
      discount_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      discounts: [{:delegate, &SquareUp.ResponseSchema.v1_payment_discount/0}],
      gross_sales_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      item_detail: {:delegate, &SquareUp.ResponseSchema.v1_payment_item_detail/0},
      item_variation_name: :value,
      itemization_type: :value,
      modifiers: [{:delegate, &SquareUp.ResponseSchema.v1_payment_modifier/0}],
      name: :value,
      net_sales_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      notes: :value,
      quantity: :value,
      single_quantity_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      taxes: [{:delegate, &SquareUp.ResponseSchema.v1_payment_tax/0}],
      total_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0}
    }
  end

  def publish_invoice_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      invoice: {:delegate, &SquareUp.ResponseSchema.invoice/0}
    }
  end

  def employee_wage do
    %{
      employee_id: :value,
      hourly_rate: {:delegate, &SquareUp.ResponseSchema.money/0},
      id: :value,
      title: :value
    }
  end

  def update_shift_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      shift: {:delegate, &SquareUp.ResponseSchema.shift/0}
    }
  end

  def catalog_modifier_list do
    %{
      modifiers: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}],
      name: :value,
      ordinal: :value,
      selection_type: :value
    }
  end

  def v1_inventory_entry do
    %{quantity_on_hand: :value, variation_id: :value}
  end

  def v1_retrieve_cash_drawer_shift_request do
    %{}
  end

  def v1_tender_entry_method do
    :value
  end

  def update_item_modifier_lists_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}], updated_at: :value}
  end

  def get_shift_request do
    %{}
  end

  def list_disputes_request do
    %{cursor: :value, location_id: :value, states: [:value]}
  end

  def add_group_to_customer_request do
    %{}
  end

  def loyalty_event_redeem_reward do
    %{loyalty_program_id: :value, order_id: :value, reward_id: :value}
  end

  def v1_list_payments_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_payment/0}]}
  end

  def refund_payment_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      refund: {:delegate, &SquareUp.ResponseSchema.payment_refund/0}
    }
  end

  def v1_delete_modifier_option_request do
    %{}
  end

  def v1_list_employees_request do
    %{
      batch_token: :value,
      begin_created_at: :value,
      begin_updated_at: :value,
      end_created_at: :value,
      end_updated_at: :value,
      external_id: :value,
      limit: :value,
      order: :value,
      status: :value
    }
  end

  def cash_drawer_device do
    %{id: :value, name: :value}
  end

  def search_loyalty_rewards_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      rewards: [{:delegate, &SquareUp.ResponseSchema.loyalty_reward/0}]
    }
  end

  def customer_query do
    %{
      filter: {:delegate, &SquareUp.ResponseSchema.customer_filter/0},
      sort: {:delegate, &SquareUp.ResponseSchema.customer_sort/0}
    }
  end

  def measurement_unit_generic do
    :value
  end

  def create_payment_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      payment: {:delegate, &SquareUp.ResponseSchema.payment/0}
    }
  end

  def loyalty_reward do
    %{
      created_at: :value,
      id: :value,
      loyalty_account_id: :value,
      order_id: :value,
      points: :value,
      redeemed_at: :value,
      reward_tier_id: :value,
      status: :value,
      updated_at: :value
    }
  end

  def inventory_transfer do
    %{
      catalog_object_id: :value,
      catalog_object_type: :value,
      created_at: :value,
      employee_id: :value,
      from_location_id: :value,
      id: :value,
      occurred_at: :value,
      quantity: :value,
      reference_id: :value,
      source: {:delegate, &SquareUp.ResponseSchema.source_application/0},
      state: :value,
      to_location_id: :value
    }
  end

  def batch_retrieve_catalog_objects_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      objects: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}],
      related_objects: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}]
    }
  end

  def refund do
    %{
      additional_recipients: [{:delegate, &SquareUp.ResponseSchema.additional_recipient/0}],
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      created_at: :value,
      id: :value,
      location_id: :value,
      processing_fee_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      reason: :value,
      status: :value,
      tender_id: :value,
      transaction_id: :value
    }
  end

  def v1_retrieve_employee_role_request do
    %{}
  end

  def revoke_token_request do
    %{
      access_token: :value,
      client_id: :value,
      merchant_id: :value,
      revoke_only_access_token: :value
    }
  end

  def list_subscription_events_request do
    %{cursor: :value, limit: :value}
  end

  def invoice_recipient do
    %{
      address: {:delegate, &SquareUp.ResponseSchema.address/0},
      company_name: :value,
      customer_id: :value,
      email_address: :value,
      family_name: :value,
      given_name: :value,
      phone_number: :value
    }
  end

  def retrieve_subscription_request do
    %{}
  end

  def calculate_loyalty_points_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}], points: :value}
  end

  def v1_bank_account do
    %{
      account_number_suffix: :value,
      bank_name: :value,
      currency_code: :value,
      id: :value,
      merchant_id: :value,
      name: :value,
      routing_number: :value,
      type: :value
    }
  end

  def order_line_item_applied_discount do
    %{
      applied_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      discount_uid: :value,
      uid: :value
    }
  end

  def register_domain_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}], status: :value}
  end

  def bank_account do
    %{
      account_number_suffix: :value,
      account_type: :value,
      bank_name: :value,
      country: :value,
      creditable: :value,
      currency: :value,
      debit_mandate_reference_id: :value,
      debitable: :value,
      fingerprint: :value,
      holder_name: :value,
      id: :value,
      location_id: :value,
      primary_bank_identification_number: :value,
      reference_id: :value,
      secondary_bank_identification_number: :value,
      status: :value,
      version: :value
    }
  end

  def list_catalog_request do
    %{cursor: :value, types: :value}
  end

  def update_customer_group_request do
    %{group: {:delegate, &SquareUp.ResponseSchema.customer_group/0}}
  end

  def delete_customer_card_request do
    %{}
  end

  def accumulate_loyalty_points_request do
    %{
      accumulate_points: {:delegate, &SquareUp.ResponseSchema.loyalty_event_accumulate_points/0},
      idempotency_key: :value,
      location_id: :value
    }
  end

  def create_customer_response do
    %{
      customer: {:delegate, &SquareUp.ResponseSchema.customer/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def batch_retrieve_inventory_counts_response do
    %{
      counts: [{:delegate, &SquareUp.ResponseSchema.inventory_count/0}],
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def retrieve_location_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      location: {:delegate, &SquareUp.ResponseSchema.location/0}
    }
  end

  def list_payments_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      payments: [{:delegate, &SquareUp.ResponseSchema.payment/0}]
    }
  end

  def search_orders_state_filter do
    %{states: [:value]}
  end

  def accumulate_loyalty_points_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      event: {:delegate, &SquareUp.ResponseSchema.loyalty_event/0}
    }
  end

  def create_shift_request do
    %{idempotency_key: :value, shift: {:delegate, &SquareUp.ResponseSchema.shift/0}}
  end

  def update_customer_group_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      group: {:delegate, &SquareUp.ResponseSchema.customer_group/0}
    }
  end

  def list_break_types_response do
    %{
      break_types: [{:delegate, &SquareUp.ResponseSchema.break_type/0}],
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def batch_retrieve_orders_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      orders: [{:delegate, &SquareUp.ResponseSchema.order/0}]
    }
  end

  def list_transactions_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      transactions: [{:delegate, &SquareUp.ResponseSchema.transaction/0}]
    }
  end

  def catalog_custom_attribute_value do
    %{
      boolean_value: :value,
      custom_attribute_definition_id: :value,
      key: :value,
      name: :value,
      number_value: :value,
      selection_uid_values: [:value],
      string_value: :value,
      type: :value
    }
  end

  def tip_settings do
    %{allow_tipping: :value, custom_tip_field: :value, separate_tip_screen: :value}
  end

  def get_bank_account_request do
    %{}
  end

  def add_group_to_customer_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def retrieve_employee_request do
    %{}
  end

  def list_cash_drawer_shifts_request do
    %{
      begin_time: :value,
      cursor: :value,
      end_time: :value,
      limit: :value,
      location_id: :value,
      sort_order: :value
    }
  end

  def search_shifts_request do
    %{cursor: :value, limit: :value, query: {:delegate, &SquareUp.ResponseSchema.shift_query/0}}
  end

  def batch_change_inventory_request do
    %{
      changes: [{:delegate, &SquareUp.ResponseSchema.inventory_change/0}],
      idempotency_key: :value,
      ignore_unchanged_counts: :value
    }
  end

  def location_type do
    :value
  end

  def exclude_strategy do
    :value
  end

  def additional_recipient do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      description: :value,
      location_id: :value,
      receivable_id: :value
    }
  end

  def v1_payment_itemization_itemization_type do
    :value
  end

  def adjust_loyalty_points_request do
    %{
      adjust_points: {:delegate, &SquareUp.ResponseSchema.loyalty_event_adjust_points/0},
      idempotency_key: :value
    }
  end

  def loyalty_event_type_filter do
    %{types: [:value]}
  end

  def search_orders_date_time_filter do
    %{
      closed_at: {:delegate, &SquareUp.ResponseSchema.time_range/0},
      created_at: {:delegate, &SquareUp.ResponseSchema.time_range/0},
      updated_at: {:delegate, &SquareUp.ResponseSchema.time_range/0}
    }
  end

  def cancel_invoice_request do
    %{version: :value}
  end

  def v1_merchant_business_type do
    :value
  end

  def calculate_loyalty_points_request do
    %{order_id: :value, transaction_amount_money: {:delegate, &SquareUp.ResponseSchema.money/0}}
  end

  def processing_fee do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      effective_at: :value,
      type: :value
    }
  end

  def create_customer_card_request do
    %{
      billing_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      card_nonce: :value,
      cardholder_name: :value,
      verification_token: :value
    }
  end

  def filter_value do
    %{all: [:value], any: [:value], none: [:value]}
  end

  def retrieve_inventory_count_response do
    %{
      counts: [{:delegate, &SquareUp.ResponseSchema.inventory_count/0}],
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def dispute_evidence_file do
    %{filename: :value, filetype: :value}
  end

  def loyalty_event_create_reward do
    %{loyalty_program_id: :value, points: :value, reward_id: :value}
  end

  def inventory_alert_type do
    :value
  end

  def v1_payment_surcharge do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      applied_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      name: :value,
      rate: :value,
      surcharge_id: :value,
      taxable: :value,
      taxes: [{:delegate, &SquareUp.ResponseSchema.v1_payment_tax/0}],
      type: :value
    }
  end

  def v1_discount_discount_type do
    :value
  end

  def loyalty_event_source do
    :value
  end

  def catalog_quick_amounts_settings do
    %{
      amounts: [{:delegate, &SquareUp.ResponseSchema.catalog_quick_amount/0}],
      eligible_for_auto_amounts: :value,
      option: :value
    }
  end

  def get_terminal_checkout_response do
    %{
      checkout: {:delegate, &SquareUp.ResponseSchema.terminal_checkout/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def item_variation_location_overrides do
    %{
      inventory_alert_threshold: :value,
      inventory_alert_type: :value,
      location_id: :value,
      price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      pricing_type: :value,
      track_inventory: :value
    }
  end

  def terminal_checkout do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      cancel_reason: :value,
      created_at: :value,
      deadline_duration: :value,
      device_options: {:delegate, &SquareUp.ResponseSchema.device_checkout_options/0},
      id: :value,
      note: :value,
      payment_ids: [:value],
      reference_id: :value,
      status: :value,
      updated_at: :value
    }
  end

  def bulk_update_team_members_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}], team_members: :value}
  end

  def loyalty_program do
    %{
      accrual_rules: [{:delegate, &SquareUp.ResponseSchema.loyalty_program_accrual_rule/0}],
      created_at: :value,
      expiration_policy:
        {:delegate, &SquareUp.ResponseSchema.loyalty_program_expiration_policy/0},
      id: :value,
      location_ids: [:value],
      reward_tiers: [{:delegate, &SquareUp.ResponseSchema.loyalty_program_reward_tier/0}],
      status: :value,
      terminology: {:delegate, &SquareUp.ResponseSchema.loyalty_program_terminology/0},
      updated_at: :value
    }
  end

  def v1_list_orders_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_order/0}]}
  end

  def loyalty_event_query do
    %{filter: {:delegate, &SquareUp.ResponseSchema.loyalty_event_filter/0}}
  end

  def search_orders_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      order_entries: [{:delegate, &SquareUp.ResponseSchema.order_entry/0}],
      orders: [{:delegate, &SquareUp.ResponseSchema.order/0}]
    }
  end

  def shift_wage do
    %{hourly_rate: {:delegate, &SquareUp.ResponseSchema.money/0}, title: :value}
  end

  def v1_delete_modifier_list_request do
    %{}
  end

  def cash_drawer_shift_summary do
    %{
      closed_at: :value,
      closed_cash_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      description: :value,
      ended_at: :value,
      expected_cash_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      id: :value,
      opened_at: :value,
      opened_cash_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      state: :value
    }
  end

  def catalog_query_text do
    %{keywords: [:value]}
  end

  def search_orders_source_filter do
    %{source_names: [:value]}
  end

  def job_assignment_pay_type do
    :value
  end

  def loyalty_event_date_time_filter do
    %{created_at: {:delegate, &SquareUp.ResponseSchema.time_range/0}}
  end

  def order_fulfillment_shipment_details do
    %{
      cancel_reason: :value,
      canceled_at: :value,
      carrier: :value,
      expected_shipped_at: :value,
      failed_at: :value,
      failure_reason: :value,
      in_progress_at: :value,
      packaged_at: :value,
      placed_at: :value,
      recipient: {:delegate, &SquareUp.ResponseSchema.order_fulfillment_recipient/0},
      shipped_at: :value,
      shipping_note: :value,
      shipping_type: :value,
      tracking_number: :value,
      tracking_url: :value
    }
  end

  def register_domain_request do
    %{domain_name: :value}
  end

  def v1_variation_inventory_alert_type do
    :value
  end

  def order_created do
    %{created_at: :value, location_id: :value, order_id: :value, state: :value, version: :value}
  end

  def catalog_tax do
    %{
      applies_to_custom_amounts: :value,
      calculation_phase: :value,
      enabled: :value,
      inclusion_type: :value,
      name: :value,
      percentage: :value
    }
  end

  def invoice_sort_field do
    :value
  end

  def v1_order_history_entry_action do
    :value
  end

  def v1_list_items_request do
    %{batch_token: :value}
  end

  def order_quantity_unit do
    %{
      measurement_unit: {:delegate, &SquareUp.ResponseSchema.measurement_unit/0},
      precision: :value
    }
  end

  def v1_update_modifier_list_request_selection_type do
    :value
  end

  def create_checkout_response do
    %{
      checkout: {:delegate, &SquareUp.ResponseSchema.checkout/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def disputed_payment do
    %{payment_id: :value}
  end

  def catalog_item_modifier_list_info do
    %{
      enabled: :value,
      max_selected_modifiers: :value,
      min_selected_modifiers: :value,
      modifier_list_id: :value,
      modifier_overrides: [{:delegate, &SquareUp.ResponseSchema.catalog_modifier_override/0}]
    }
  end

  def catalog_custom_attribute_definition_type do
    :value
  end

  def retrieve_inventory_adjustment_request do
    %{}
  end

  def device do
    %{id: :value, name: :value}
  end

  def v1_merchant_account_type do
    :value
  end

  def measurement_unit_custom do
    %{abbreviation: :value, name: :value}
  end

  def coordinates do
    %{latitude: :value, longitude: :value}
  end

  def list_dispute_evidence_request do
    %{}
  end

  def order_source do
    %{name: :value}
  end

  def measurement_unit_area do
    :value
  end

  def list_merchants_request do
    %{cursor: :value}
  end

  def dispute_evidence_type do
    :value
  end

  def v1_tender do
    %{
      card_brand: :value,
      change_back_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      employee_id: :value,
      entry_method: :value,
      id: :value,
      is_exchange: :value,
      name: :value,
      pan_suffix: :value,
      payment_note: :value,
      receipt_url: :value,
      refunded_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      settled_at: :value,
      tendered_at: :value,
      tendered_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      total_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      type: :value
    }
  end

  def delete_customer_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def delete_invoice_request do
    %{version: :value}
  end

  def v1_discount do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      color: :value,
      discount_type: :value,
      id: :value,
      name: :value,
      pin_required: :value,
      rate: :value,
      v2_id: :value
    }
  end

  def v1_list_employees_request_status do
    :value
  end

  def v1_list_cash_drawer_shifts_request do
    %{begin_time: :value, end_time: :value, order: :value}
  end

  def loyalty_program_status do
    :value
  end

  def v1_list_settlements_request do
    %{
      batch_token: :value,
      begin_time: :value,
      end_time: :value,
      limit: :value,
      order: :value,
      status: :value
    }
  end

  def v1_apply_fee_request do
    %{}
  end

  def order_line_item do
    %{
      applied_discounts: [
        {:delegate, &SquareUp.ResponseSchema.order_line_item_applied_discount/0}
      ],
      applied_taxes: [{:delegate, &SquareUp.ResponseSchema.order_line_item_applied_tax/0}],
      base_price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      catalog_object_id: :value,
      gross_sales_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      metadata: :value,
      modifiers: [{:delegate, &SquareUp.ResponseSchema.order_line_item_modifier/0}],
      name: :value,
      note: :value,
      quantity: :value,
      quantity_unit: {:delegate, &SquareUp.ResponseSchema.order_quantity_unit/0},
      total_discount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_tax_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      uid: :value,
      variation_name: :value,
      variation_total_price_money: {:delegate, &SquareUp.ResponseSchema.money/0}
    }
  end

  def catalog_info_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      limits: {:delegate, &SquareUp.ResponseSchema.catalog_info_response_limits/0},
      standard_unit_description_group:
        {:delegate, &SquareUp.ResponseSchema.standard_unit_description_group/0}
    }
  end

  def customer_inclusion_exclusion do
    :value
  end

  def update_item_taxes_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}], updated_at: :value}
  end

  def v1_retrieve_timecard_request do
    %{}
  end

  def charge_request do
    %{
      additional_recipients: [{:delegate, &SquareUp.ResponseSchema.additional_recipient/0}],
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      billing_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      buyer_email_address: :value,
      card_nonce: :value,
      customer_card_id: :value,
      customer_id: :value,
      delay_capture: :value,
      idempotency_key: :value,
      note: :value,
      order_id: :value,
      reference_id: :value,
      shipping_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      verification_token: :value
    }
  end

  def customer_sort do
    %{field: :value, order: :value}
  end

  def retrieve_customer_segment_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      segment: {:delegate, &SquareUp.ResponseSchema.customer_segment/0}
    }
  end

  def order_updated do
    %{
      created_at: :value,
      location_id: :value,
      order_id: :value,
      state: :value,
      updated_at: :value,
      version: :value
    }
  end

  def loyalty_event do
    %{
      accumulate_points: {:delegate, &SquareUp.ResponseSchema.loyalty_event_accumulate_points/0},
      adjust_points: {:delegate, &SquareUp.ResponseSchema.loyalty_event_adjust_points/0},
      create_reward: {:delegate, &SquareUp.ResponseSchema.loyalty_event_create_reward/0},
      created_at: :value,
      delete_reward: {:delegate, &SquareUp.ResponseSchema.loyalty_event_delete_reward/0},
      expire_points: {:delegate, &SquareUp.ResponseSchema.loyalty_event_expire_points/0},
      id: :value,
      location_id: :value,
      loyalty_account_id: :value,
      other_event: {:delegate, &SquareUp.ResponseSchema.loyalty_event_other/0},
      redeem_reward: {:delegate, &SquareUp.ResponseSchema.loyalty_event_redeem_reward/0},
      source: :value,
      type: :value
    }
  end

  def v1_list_refunds_request do
    %{batch_token: :value, begin_time: :value, end_time: :value, limit: :value, order: :value}
  end

  def inventory_physical_count do
    %{
      catalog_object_id: :value,
      catalog_object_type: :value,
      created_at: :value,
      employee_id: :value,
      id: :value,
      location_id: :value,
      occurred_at: :value,
      quantity: :value,
      reference_id: :value,
      source: {:delegate, &SquareUp.ResponseSchema.source_application/0},
      state: :value
    }
  end

  def search_subscriptions_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      subscriptions: [{:delegate, &SquareUp.ResponseSchema.subscription/0}]
    }
  end

  def renew_token_request do
    %{access_token: :value}
  end

  def cancel_subscription_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      subscription: {:delegate, &SquareUp.ResponseSchema.subscription/0}
    }
  end

  def list_customers_request do
    %{cursor: :value, sort_field: :value, sort_order: :value}
  end

  def v1_page_cell_object_type do
    :value
  end

  def get_bank_account_response do
    %{
      bank_account: {:delegate, &SquareUp.ResponseSchema.bank_account/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def loyalty_event_filter do
    %{
      date_time_filter: {:delegate, &SquareUp.ResponseSchema.loyalty_event_date_time_filter/0},
      location_filter: {:delegate, &SquareUp.ResponseSchema.loyalty_event_location_filter/0},
      loyalty_account_filter:
        {:delegate, &SquareUp.ResponseSchema.loyalty_event_loyalty_account_filter/0},
      order_filter: {:delegate, &SquareUp.ResponseSchema.loyalty_event_order_filter/0},
      type_filter: {:delegate, &SquareUp.ResponseSchema.loyalty_event_type_filter/0}
    }
  end

  def v1_variation_pricing_type do
    :value
  end

  def create_customer_card_response do
    %{
      card: {:delegate, &SquareUp.ResponseSchema.card/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def revoke_token_response do
    %{success: :value}
  end

  def break do
    %{
      break_type_id: :value,
      end_at: :value,
      expected_duration: :value,
      id: :value,
      is_paid: :value,
      name: :value,
      start_at: :value
    }
  end

  def catalog_custom_attribute_definition_number_config do
    %{precision: :value}
  end

  def workweek_config do
    %{
      created_at: :value,
      id: :value,
      start_of_day_local_time: :value,
      start_of_week: :value,
      updated_at: :value,
      version: :value
    }
  end

  def error do
    %{category: :value, code: :value, detail: :value, field: :value}
  end

  def bulk_create_team_members_request do
    %{team_members: :value}
  end

  def search_catalog_objects_request do
    %{
      begin_time: :value,
      cursor: :value,
      include_deleted_objects: :value,
      include_related_objects: :value,
      limit: :value,
      object_types: [:value],
      query: {:delegate, &SquareUp.ResponseSchema.catalog_query/0}
    }
  end

  def v1_remove_fee_request do
    %{}
  end

  def v1_settlement_entry_type do
    :value
  end

  def accept_dispute_response do
    %{
      dispute: {:delegate, &SquareUp.ResponseSchema.dispute/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def order_fulfillment_pickup_details_schedule_type do
    :value
  end

  def v1_delete_item_request do
    %{}
  end

  def retrieve_merchant_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      merchant: {:delegate, &SquareUp.ResponseSchema.merchant/0}
    }
  end

  def v1_list_timecard_events_request do
    %{}
  end

  def v1_modifier_list do
    %{
      id: :value,
      modifier_options: [{:delegate, &SquareUp.ResponseSchema.v1_modifier_option/0}],
      name: :value,
      selection_type: :value,
      v2_id: :value
    }
  end

  def loyalty_program_reward_definition_scope do
    :value
  end

  def v1_timecard do
    %{
      clockin_location_id: :value,
      clockin_time: :value,
      clockout_location_id: :value,
      clockout_time: :value,
      created_at: :value,
      deleted: :value,
      doubletime_seconds_worked: :value,
      employee_id: :value,
      id: :value,
      overtime_seconds_worked: :value,
      regular_seconds_worked: :value,
      updated_at: :value
    }
  end

  def weekday do
    :value
  end

  def v1_list_categories_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_category/0}]}
  end

  def shift_sort do
    %{field: :value, order: :value}
  end

  def terminal_checkout_query_sort do
    %{sort_order: :value}
  end

  def order_fulfillment_updated_update do
    %{fulfillment_uid: :value, new_state: :value, old_state: :value}
  end

  def v1_delete_page_cell_request do
    %{column: :value, row: :value}
  end

  def update_customer_request do
    %{
      address: {:delegate, &SquareUp.ResponseSchema.address/0},
      birthday: :value,
      company_name: :value,
      email_address: :value,
      family_name: :value,
      given_name: :value,
      nickname: :value,
      note: :value,
      phone_number: :value,
      reference_id: :value
    }
  end

  def catalog_object_batch do
    %{objects: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}]}
  end

  def v1_create_discount_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_discount/0}}
  end

  def order_state do
    :value
  end

  def update_invoice_request do
    %{
      fields_to_clear: [:value],
      idempotency_key: :value,
      invoice: {:delegate, &SquareUp.ResponseSchema.invoice/0}
    }
  end

  def merchant do
    %{
      business_name: :value,
      country: :value,
      currency: :value,
      id: :value,
      language_code: :value,
      main_location_id: :value,
      status: :value
    }
  end

  def v1_create_variation_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_variation/0}}
  end

  def product_type do
    :value
  end

  def submit_evidence_response do
    %{
      dispute: {:delegate, &SquareUp.ResponseSchema.dispute/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def tender_card_details_status do
    :value
  end

  def invoice_request_type do
    :value
  end

  def order_line_item_applied_tax do
    %{applied_money: {:delegate, &SquareUp.ResponseSchema.money/0}, tax_uid: :value, uid: :value}
  end

  def order_line_item_modifier do
    %{
      base_price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      catalog_object_id: :value,
      name: :value,
      total_price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      uid: :value
    }
  end

  def v1_payment_tax_inclusion_type do
    :value
  end

  def tender_bank_transfer_details do
    %{status: :value}
  end

  def v1_item_type do
    :value
  end

  def v1_update_category_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_category/0}}
  end

  def retrieve_merchant_request do
    %{}
  end

  def create_team_member_request do
    %{idempotency_key: :value, team_member: {:delegate, &SquareUp.ResponseSchema.team_member/0}}
  end

  def update_workweek_config_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      workweek_config: {:delegate, &SquareUp.ResponseSchema.workweek_config/0}
    }
  end

  def retrieve_loyalty_reward_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      reward: {:delegate, &SquareUp.ResponseSchema.loyalty_reward/0}
    }
  end

  def adjust_loyalty_points_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      event: {:delegate, &SquareUp.ResponseSchema.loyalty_event/0}
    }
  end

  def catalog_item do
    %{
      abbreviation: :value,
      available_electronically: :value,
      available_for_pickup: :value,
      available_online: :value,
      category_id: :value,
      description: :value,
      item_options: [{:delegate, &SquareUp.ResponseSchema.catalog_item_option_for_item/0}],
      label_color: :value,
      modifier_list_info: [
        {:delegate, &SquareUp.ResponseSchema.catalog_item_modifier_list_info/0}
      ],
      name: :value,
      product_type: :value,
      skip_modifier_screen: :value,
      tax_ids: [:value],
      variations: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}]
    }
  end

  def customer_filter do
    %{
      created_at: {:delegate, &SquareUp.ResponseSchema.time_range/0},
      creation_source: {:delegate, &SquareUp.ResponseSchema.customer_creation_source_filter/0},
      email_address: {:delegate, &SquareUp.ResponseSchema.customer_text_filter/0},
      group_ids: {:delegate, &SquareUp.ResponseSchema.filter_value/0},
      phone_number: {:delegate, &SquareUp.ResponseSchema.customer_text_filter/0},
      reference_id: {:delegate, &SquareUp.ResponseSchema.customer_text_filter/0},
      updated_at: {:delegate, &SquareUp.ResponseSchema.time_range/0}
    }
  end

  def batch_delete_catalog_objects_response do
    %{
      deleted_at: :value,
      deleted_object_ids: [:value],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def list_payment_refunds_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      refunds: [{:delegate, &SquareUp.ResponseSchema.payment_refund/0}]
    }
  end

  def batch_retrieve_orders_request do
    %{location_id: :value, order_ids: [:value]}
  end

  def retrieve_location_request do
    %{}
  end

  def dispute do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      brand_dispute_id: :value,
      card_brand: :value,
      created_at: :value,
      dispute_id: :value,
      disputed_payment: {:delegate, &SquareUp.ResponseSchema.disputed_payment/0},
      due_at: :value,
      evidence_ids: [:value],
      location_id: :value,
      reason: :value,
      reported_date: :value,
      state: :value,
      updated_at: :value,
      version: :value
    }
  end

  def invoice_filter do
    %{customer_ids: [:value], location_ids: [:value]}
  end

  def v1_employee_role_permissions do
    :value
  end

  def v1_create_page_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_page/0}}
  end

  def order do
    %{
      closed_at: :value,
      created_at: :value,
      customer_id: :value,
      discounts: [{:delegate, &SquareUp.ResponseSchema.order_line_item_discount/0}],
      fulfillments: [{:delegate, &SquareUp.ResponseSchema.order_fulfillment/0}],
      id: :value,
      line_items: [{:delegate, &SquareUp.ResponseSchema.order_line_item/0}],
      location_id: :value,
      metadata: :value,
      net_amounts: {:delegate, &SquareUp.ResponseSchema.order_money_amounts/0},
      pricing_options: {:delegate, &SquareUp.ResponseSchema.order_pricing_options/0},
      reference_id: :value,
      refunds: [{:delegate, &SquareUp.ResponseSchema.refund/0}],
      return_amounts: {:delegate, &SquareUp.ResponseSchema.order_money_amounts/0},
      returns: [{:delegate, &SquareUp.ResponseSchema.order_return/0}],
      rewards: [{:delegate, &SquareUp.ResponseSchema.order_reward/0}],
      rounding_adjustment: {:delegate, &SquareUp.ResponseSchema.order_rounding_adjustment/0},
      service_charges: [{:delegate, &SquareUp.ResponseSchema.order_service_charge/0}],
      source: {:delegate, &SquareUp.ResponseSchema.order_source/0},
      state: :value,
      taxes: [{:delegate, &SquareUp.ResponseSchema.order_line_item_tax/0}],
      tenders: [{:delegate, &SquareUp.ResponseSchema.tender/0}],
      total_discount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_service_charge_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_tax_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_tip_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      updated_at: :value,
      version: :value
    }
  end

  def measurement_unit do
    %{
      area_unit: :value,
      custom_unit: {:delegate, &SquareUp.ResponseSchema.measurement_unit_custom/0},
      generic_unit: :value,
      length_unit: :value,
      time_unit: :value,
      type: :value,
      volume_unit: :value,
      weight_unit: :value
    }
  end

  def loyalty_event_adjust_points do
    %{loyalty_program_id: :value, points: :value, reason: :value}
  end

  def catalog_discount_modify_tax_basis do
    :value
  end

  def search_team_members_request do
    %{
      cursor: :value,
      limit: :value,
      query: {:delegate, &SquareUp.ResponseSchema.search_team_members_query/0}
    }
  end

  def catalog_custom_attribute_definition_app_visibility do
    :value
  end

  def list_loyalty_programs_request do
    %{}
  end

  def loyalty_event_type do
    :value
  end

  def update_shift_request do
    %{shift: {:delegate, &SquareUp.ResponseSchema.shift/0}}
  end

  def catalog_item_product_type do
    :value
  end

  def catalog_quick_amount_type do
    :value
  end

  def pay_order_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      order: {:delegate, &SquareUp.ResponseSchema.order/0}
    }
  end

  def team_member_assigned_locations_assignment_type do
    :value
  end

  def v1_payment_item_detail do
    %{category_name: :value, item_id: :value, item_variation_id: :value, sku: :value}
  end

  def v1_item do
    %{
      abbreviation: :value,
      available_for_pickup: :value,
      available_online: :value,
      category: {:delegate, &SquareUp.ResponseSchema.v1_category/0},
      category_id: :value,
      color: :value,
      description: :value,
      fees: [{:delegate, &SquareUp.ResponseSchema.v1_fee/0}],
      id: :value,
      master_image: {:delegate, &SquareUp.ResponseSchema.v1_item_image/0},
      modifier_lists: [{:delegate, &SquareUp.ResponseSchema.v1_modifier_list/0}],
      name: :value,
      taxable: :value,
      type: :value,
      v2_id: :value,
      variations: [{:delegate, &SquareUp.ResponseSchema.v1_variation/0}],
      visibility: :value
    }
  end

  def update_break_type_request do
    %{break_type: {:delegate, &SquareUp.ResponseSchema.break_type/0}}
  end

  def create_order_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      order: {:delegate, &SquareUp.ResponseSchema.order/0}
    }
  end

  def v1_remove_modifier_list_request do
    %{}
  end

  def v1_settlement_status do
    :value
  end

  def search_orders_filter do
    %{
      customer_filter: {:delegate, &SquareUp.ResponseSchema.search_orders_customer_filter/0},
      date_time_filter: {:delegate, &SquareUp.ResponseSchema.search_orders_date_time_filter/0},
      fulfillment_filter:
        {:delegate, &SquareUp.ResponseSchema.search_orders_fulfillment_filter/0},
      source_filter: {:delegate, &SquareUp.ResponseSchema.search_orders_source_filter/0},
      state_filter: {:delegate, &SquareUp.ResponseSchema.search_orders_state_filter/0}
    }
  end

  def delete_break_type_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def order_line_item_tax do
    %{
      applied_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      catalog_object_id: :value,
      metadata: :value,
      name: :value,
      percentage: :value,
      scope: :value,
      type: :value,
      uid: :value
    }
  end

  def v1_delete_discount_request do
    %{}
  end

  def get_break_type_request do
    %{}
  end

  def customer_creation_source do
    :value
  end

  def checkout do
    %{
      additional_recipients: [{:delegate, &SquareUp.ResponseSchema.additional_recipient/0}],
      ask_for_shipping_address: :value,
      checkout_page_url: :value,
      created_at: :value,
      id: :value,
      merchant_support_email: :value,
      order: {:delegate, &SquareUp.ResponseSchema.order/0},
      pre_populate_buyer_email: :value,
      pre_populate_shipping_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      redirect_url: :value
    }
  end

  def catalog_custom_attribute_definition_string_config do
    %{enforce_uniqueness: :value}
  end

  def cancel_payment_request do
    %{}
  end

  def v1_retrieve_order_request do
    %{}
  end

  def remove_group_from_customer_request do
    %{}
  end

  def retrieve_customer_request do
    %{}
  end

  def update_order_request do
    %{
      fields_to_clear: [:value],
      idempotency_key: :value,
      order: {:delegate, &SquareUp.ResponseSchema.order/0}
    }
  end

  def list_locations_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      locations: [{:delegate, &SquareUp.ResponseSchema.location/0}]
    }
  end

  def catalog_query_item_variations_for_item_option_values do
    %{item_option_value_ids: [:value]}
  end

  def v1_page_cell_placeholder_type do
    :value
  end

  def complete_payment_request do
    %{}
  end

  def cancel_subscription_request do
    %{}
  end

  def batch_upsert_catalog_objects_request do
    %{
      batches: [{:delegate, &SquareUp.ResponseSchema.catalog_object_batch/0}],
      idempotency_key: :value
    }
  end

  def location do
    %{
      address: {:delegate, &SquareUp.ResponseSchema.address/0},
      business_email: :value,
      business_hours: {:delegate, &SquareUp.ResponseSchema.business_hours/0},
      business_name: :value,
      capabilities: [:value],
      coordinates: {:delegate, &SquareUp.ResponseSchema.coordinates/0},
      country: :value,
      created_at: :value,
      currency: :value,
      description: :value,
      facebook_url: :value,
      id: :value,
      instagram_username: :value,
      language_code: :value,
      logo_url: :value,
      mcc: :value,
      merchant_id: :value,
      name: :value,
      phone_number: :value,
      pos_background_url: :value,
      status: :value,
      timezone: :value,
      twitter_username: :value,
      type: :value,
      website_url: :value
    }
  end

  def inventory_change do
    %{
      adjustment: {:delegate, &SquareUp.ResponseSchema.inventory_adjustment/0},
      physical_count: {:delegate, &SquareUp.ResponseSchema.inventory_physical_count/0},
      transfer: {:delegate, &SquareUp.ResponseSchema.inventory_transfer/0},
      type: :value
    }
  end

  def ecom_visibility do
    :value
  end

  def loyalty_event_location_filter do
    %{location_ids: [:value]}
  end

  def invoice_request_method do
    :value
  end

  def v1_update_order_request_action do
    :value
  end

  def publish_invoice_request do
    %{idempotency_key: :value, version: :value}
  end

  def cancel_payment_by_idempotency_key_request do
    %{idempotency_key: :value}
  end

  def search_invoices_request do
    %{cursor: :value, limit: :value, query: {:delegate, &SquareUp.ResponseSchema.invoice_query/0}}
  end

  def catalog_item_option_for_item do
    %{item_option_id: :value}
  end

  def invoice_query do
    %{
      filter: {:delegate, &SquareUp.ResponseSchema.invoice_filter/0},
      sort: {:delegate, &SquareUp.ResponseSchema.invoice_sort/0}
    }
  end

  def catalog_item_variation do
    %{
      inventory_alert_threshold: :value,
      inventory_alert_type: :value,
      item_id: :value,
      item_option_values: [
        {:delegate, &SquareUp.ResponseSchema.catalog_item_option_value_for_item_variation/0}
      ],
      location_overrides: [
        {:delegate, &SquareUp.ResponseSchema.item_variation_location_overrides/0}
      ],
      measurement_unit_id: :value,
      name: :value,
      ordinal: :value,
      price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      pricing_type: :value,
      service_duration: :value,
      sku: :value,
      track_inventory: :value,
      upc: :value,
      user_data: :value
    }
  end

  def upsert_catalog_object_request do
    %{idempotency_key: :value, object: {:delegate, &SquareUp.ResponseSchema.catalog_object/0}}
  end

  def break_type do
    %{
      break_name: :value,
      created_at: :value,
      expected_duration: :value,
      id: :value,
      is_paid: :value,
      location_id: :value,
      updated_at: :value,
      version: :value
    }
  end

  def v1_delete_fee_request do
    %{}
  end

  def create_terminal_checkout_response do
    %{
      checkout: {:delegate, &SquareUp.ResponseSchema.terminal_checkout/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def capture_transaction_request do
    %{}
  end

  def subscription_event do
    %{effective_date: :value, id: :value, plan_id: :value, subscription_event_type: :value}
  end

  def v1_bank_account_type do
    :value
  end

  def catalog_info_response_limits do
    %{
      batch_delete_max_object_ids: :value,
      batch_retrieve_max_object_ids: :value,
      batch_upsert_max_objects_per_batch: :value,
      batch_upsert_max_total_objects: :value,
      search_max_page_limit: :value,
      update_item_modifier_lists_max_item_ids: :value,
      update_item_modifier_lists_max_modifier_lists_to_disable: :value,
      update_item_modifier_lists_max_modifier_lists_to_enable: :value,
      update_item_taxes_max_item_ids: :value,
      update_item_taxes_max_taxes_to_disable: :value,
      update_item_taxes_max_taxes_to_enable: :value
    }
  end

  def retrieve_dispute_evidence_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      evidence: {:delegate, &SquareUp.ResponseSchema.dispute_evidence/0}
    }
  end

  def loyalty_program_terminology do
    %{one: :value, other: :value}
  end

  def catalog_measurement_unit do
    %{
      measurement_unit: {:delegate, &SquareUp.ResponseSchema.measurement_unit/0},
      precision: :value
    }
  end

  def subscription_status do
    :value
  end

  def v1_modifier_list_selection_type do
    :value
  end

  def order_return_line_item do
    %{
      applied_discounts: [
        {:delegate, &SquareUp.ResponseSchema.order_line_item_applied_discount/0}
      ],
      applied_taxes: [{:delegate, &SquareUp.ResponseSchema.order_line_item_applied_tax/0}],
      base_price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      catalog_object_id: :value,
      gross_return_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      name: :value,
      note: :value,
      quantity: :value,
      quantity_unit: {:delegate, &SquareUp.ResponseSchema.order_quantity_unit/0},
      return_modifiers: [{:delegate, &SquareUp.ResponseSchema.order_return_line_item_modifier/0}],
      source_line_item_uid: :value,
      total_discount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_tax_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      uid: :value,
      variation_name: :value,
      variation_total_price_money: {:delegate, &SquareUp.ResponseSchema.money/0}
    }
  end

  def cancel_terminal_checkout_request do
    %{}
  end

  def loyalty_program_reward_definition do
    %{
      catalog_object_ids: [:value],
      discount_type: :value,
      fixed_discount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      max_discount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      percentage_discount: :value,
      scope: :value
    }
  end

  def charge_request_additional_recipient do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      description: :value,
      location_id: :value
    }
  end

  def catalog_query_items_for_modifier_list do
    %{modifier_list_ids: [:value]}
  end

  def v1_list_timecard_events_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_timecard_event/0}]}
  end

  def v1_retrieve_settlement_request do
    %{}
  end

  def v1_delete_timecard_request do
    %{}
  end

  def list_catalog_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      objects: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}]
    }
  end

  def list_customers_response do
    %{
      cursor: :value,
      customers: [{:delegate, &SquareUp.ResponseSchema.customer/0}],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def range do
    %{max: :value, min: :value}
  end

  def shift_filter_status do
    :value
  end

  def list_transactions_request do
    %{begin_time: :value, cursor: :value, end_time: :value, sort_order: :value}
  end

  def update_customer_response do
    %{
      customer: {:delegate, &SquareUp.ResponseSchema.customer/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def v1_list_fees_request do
    %{}
  end

  def update_subscription_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      subscription: {:delegate, &SquareUp.ResponseSchema.subscription/0}
    }
  end

  def catalog_discount do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      discount_type: :value,
      label_color: :value,
      modify_tax_basis: :value,
      name: :value,
      percentage: :value,
      pin_required: :value
    }
  end

  def v1_apply_modifier_list_request do
    %{}
  end

  def retrieve_inventory_changes_response do
    %{
      changes: [{:delegate, &SquareUp.ResponseSchema.inventory_change/0}],
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def subscription do
    %{
      canceled_date: :value,
      card_id: :value,
      created_at: :value,
      customer_id: :value,
      id: :value,
      invoice_ids: [:value],
      location_id: :value,
      paid_until_date: :value,
      plan_id: :value,
      price_override_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      start_date: :value,
      status: :value,
      tax_percentage: :value,
      timezone: :value,
      version: :value
    }
  end

  def get_invoice_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      invoice: {:delegate, &SquareUp.ResponseSchema.invoice/0}
    }
  end

  def loyalty_event_other do
    %{loyalty_program_id: :value, points: :value}
  end

  def inventory_count do
    %{
      calculated_at: :value,
      catalog_object_id: :value,
      catalog_object_type: :value,
      location_id: :value,
      quantity: :value,
      state: :value
    }
  end

  def pay_order_request do
    %{idempotency_key: :value, order_version: :value, payment_ids: [:value]}
  end

  def retrieve_loyalty_account_request do
    %{}
  end

  def catalog_product_set do
    %{
      all_products: :value,
      name: :value,
      product_ids_all: [:value],
      product_ids_any: [:value],
      quantity_exact: :value,
      quantity_max: :value,
      quantity_min: :value
    }
  end

  def list_device_codes_request do
    %{cursor: :value, location_id: :value, product_type: :value}
  end

  def shift_filter do
    %{
      employee_ids: [:value],
      end: {:delegate, &SquareUp.ResponseSchema.time_range/0},
      location_ids: [:value],
      start: {:delegate, &SquareUp.ResponseSchema.time_range/0},
      status: :value,
      team_member_ids: [:value],
      workday: {:delegate, &SquareUp.ResponseSchema.shift_workday/0}
    }
  end

  def v1_create_item_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_item/0}}
  end

  def list_cash_drawer_shift_events_request do
    %{cursor: :value, limit: :value, location_id: :value}
  end

  def inventory_state do
    :value
  end

  def update_wage_setting_request do
    %{wage_setting: {:delegate, &SquareUp.ResponseSchema.wage_setting/0}}
  end

  def order_fulfillment_pickup_details_curbside_pickup_details do
    %{buyer_arrived_at: :value, curbside_details: :value}
  end

  def v1_list_cash_drawer_shifts_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_cash_drawer_shift/0}]}
  end

  def batch_upsert_catalog_objects_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      id_mappings: [{:delegate, &SquareUp.ResponseSchema.catalog_id_mapping/0}],
      objects: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}],
      updated_at: :value
    }
  end

  def create_terminal_checkout_request do
    %{
      checkout: {:delegate, &SquareUp.ResponseSchema.terminal_checkout/0},
      idempotency_key: :value
    }
  end

  def v1_list_refunds_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_refund/0}]}
  end

  def tax_calculation_phase do
    :value
  end

  def v1_list_locations_request do
    %{}
  end

  def shift_workday_matcher do
    :value
  end

  def order_updated_object do
    %{order_updated: {:delegate, &SquareUp.ResponseSchema.order_updated/0}}
  end

  def v1_discount_color do
    :value
  end

  def device_details do
    %{device_id: :value, device_name: :value}
  end

  def loyalty_account_mapping do
    %{created_at: :value, id: :value, type: :value, value: :value}
  end

  def list_merchants_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      merchant: [{:delegate, &SquareUp.ResponseSchema.merchant/0}]
    }
  end

  def device_code_status do
    :value
  end

  def order_fulfillment_type do
    :value
  end

  def create_break_type_request do
    %{break_type: {:delegate, &SquareUp.ResponseSchema.break_type/0}, idempotency_key: :value}
  end

  def update_break_type_response do
    %{
      break_type: {:delegate, &SquareUp.ResponseSchema.break_type/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def order_fulfillment_recipient do
    %{
      address: {:delegate, &SquareUp.ResponseSchema.address/0},
      customer_id: :value,
      display_name: :value,
      email_address: :value,
      phone_number: :value
    }
  end

  def refund_status do
    :value
  end

  def delete_loyalty_reward_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def loyalty_program_reward_tier do
    %{
      created_at: :value,
      definition: {:delegate, &SquareUp.ResponseSchema.loyalty_program_reward_definition/0},
      id: :value,
      name: :value,
      points: :value
    }
  end

  def order_line_item_tax_type do
    :value
  end

  def order_fulfillment_updated do
    %{
      created_at: :value,
      fulfillment_update: [
        {:delegate, &SquareUp.ResponseSchema.order_fulfillment_updated_update/0}
      ],
      location_id: :value,
      order_id: :value,
      state: :value,
      updated_at: :value,
      version: :value
    }
  end

  def balance_payment_details do
    %{account_id: :value, status: :value}
  end

  def v1_employee_status do
    :value
  end

  def create_customer_group_request do
    %{group: {:delegate, &SquareUp.ResponseSchema.customer_group/0}, idempotency_key: :value}
  end

  def catalog_query do
    %{
      exact_query: {:delegate, &SquareUp.ResponseSchema.catalog_query_exact/0},
      item_variations_for_item_option_values_query:
        {:delegate,
         &SquareUp.ResponseSchema.catalog_query_item_variations_for_item_option_values/0},
      items_for_item_options_query:
        {:delegate, &SquareUp.ResponseSchema.catalog_query_items_for_item_options/0},
      items_for_modifier_list_query:
        {:delegate, &SquareUp.ResponseSchema.catalog_query_items_for_modifier_list/0},
      items_for_tax_query: {:delegate, &SquareUp.ResponseSchema.catalog_query_items_for_tax/0},
      prefix_query: {:delegate, &SquareUp.ResponseSchema.catalog_query_prefix/0},
      range_query: {:delegate, &SquareUp.ResponseSchema.catalog_query_range/0},
      sorted_attribute_query:
        {:delegate, &SquareUp.ResponseSchema.catalog_query_sorted_attribute/0},
      text_query: {:delegate, &SquareUp.ResponseSchema.catalog_query_text/0}
    }
  end

  def v1_payment_modifier do
    %{
      applied_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      modifier_option_id: :value,
      name: :value
    }
  end

  def payment_options do
    %{autocomplete: :value}
  end

  def v1_update_fee_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_fee/0}}
  end

  def catalog_pricing_rule do
    %{
      apply_products_id: :value,
      discount_id: :value,
      exclude_products_id: :value,
      exclude_strategy: :value,
      match_products_id: :value,
      name: :value,
      time_period_ids: [:value],
      valid_from_date: :value,
      valid_from_local_time: :value,
      valid_until_date: :value,
      valid_until_local_time: :value
    }
  end

  def search_catalog_objects_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      latest_time: :value,
      objects: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}],
      related_objects: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}]
    }
  end

  def search_loyalty_accounts_request do
    %{
      cursor: :value,
      limit: :value,
      query:
        {:delegate,
         &SquareUp.ResponseSchema.search_loyalty_accounts_request_loyalty_account_query/0}
    }
  end

  def batch_change_inventory_response do
    %{
      counts: [{:delegate, &SquareUp.ResponseSchema.inventory_count/0}],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def search_orders_request do
    %{
      cursor: :value,
      limit: :value,
      location_ids: [:value],
      query: {:delegate, &SquareUp.ResponseSchema.search_orders_query/0},
      return_entries: :value
    }
  end

  def get_team_member_wage_request do
    %{}
  end

  def product do
    :value
  end

  def retrieve_dispute_evidence_request do
    %{}
  end

  def search_subscriptions_query do
    %{filter: {:delegate, &SquareUp.ResponseSchema.search_subscriptions_filter/0}}
  end

  def merchant_status do
    :value
  end

  def country do
    :value
  end

  def team_member_status do
    :value
  end

  def create_refund_request do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      idempotency_key: :value,
      reason: :value,
      tender_id: :value
    }
  end

  def search_terminal_checkouts_request do
    %{
      cursor: :value,
      limit: :value,
      query: {:delegate, &SquareUp.ResponseSchema.terminal_checkout_query/0}
    }
  end

  def inventory_change_type do
    :value
  end

  def date_range do
    %{end_date: :value, start_date: :value}
  end

  def list_invoices_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      invoices: [{:delegate, &SquareUp.ResponseSchema.invoice/0}]
    }
  end

  def create_loyalty_reward_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      reward: {:delegate, &SquareUp.ResponseSchema.loyalty_reward/0}
    }
  end

  def create_catalog_image_request do
    %{
      idempotency_key: :value,
      image: {:delegate, &SquareUp.ResponseSchema.catalog_object/0},
      object_id: :value
    }
  end

  def v1_list_payments_request do
    %{
      batch_token: :value,
      begin_time: :value,
      end_time: :value,
      include_partial: :value,
      limit: :value,
      order: :value
    }
  end

  def create_mobile_authorization_code_request do
    %{location_id: :value}
  end

  def catalog_modifier do
    %{
      modifier_list_id: :value,
      name: :value,
      ordinal: :value,
      price_money: {:delegate, &SquareUp.ResponseSchema.money/0}
    }
  end

  def order_return_discount do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      applied_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      catalog_object_id: :value,
      name: :value,
      percentage: :value,
      scope: :value,
      source_discount_uid: :value,
      type: :value,
      uid: :value
    }
  end

  def retrieve_dispute_request do
    %{}
  end

  def list_customer_groups_request do
    %{cursor: :value}
  end

  def v1_order_history_entry do
    %{action: :value, created_at: :value}
  end

  def search_orders_query do
    %{
      filter: {:delegate, &SquareUp.ResponseSchema.search_orders_filter/0},
      sort: {:delegate, &SquareUp.ResponseSchema.search_orders_sort/0}
    }
  end

  def void_transaction_request do
    %{}
  end

  def bank_account_type do
    :value
  end

  def order_money_amounts do
    %{
      discount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      service_charge_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      tax_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      tip_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_money: {:delegate, &SquareUp.ResponseSchema.money/0}
    }
  end

  def list_customer_segments_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      segments: [{:delegate, &SquareUp.ResponseSchema.customer_segment/0}]
    }
  end

  def bank_account_status do
    :value
  end

  def measurement_unit_weight do
    :value
  end

  def retrieve_team_member_request do
    %{}
  end

  def retrieve_loyalty_reward_request do
    %{}
  end

  def catalog_subscription_plan do
    %{name: :value, phases: [{:delegate, &SquareUp.ResponseSchema.subscription_phase/0}]}
  end

  def loyalty_program_accrual_rule do
    %{
      accrual_type: :value,
      catalog_object_id: :value,
      points: :value,
      spend_amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      visit_minimum_amount_money: {:delegate, &SquareUp.ResponseSchema.money/0}
    }
  end

  def v1_order do
    %{
      btc_price_satoshi: :value,
      btc_receive_address: :value,
      buyer_email: :value,
      buyer_note: :value,
      canceled_note: :value,
      completed_note: :value,
      created_at: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      expires_at: :value,
      id: :value,
      order_history: [{:delegate, &SquareUp.ResponseSchema.v1_order_history_entry/0}],
      payment_id: :value,
      promo_code: :value,
      recipient_name: :value,
      recipient_phone_number: :value,
      refunded_note: :value,
      shipping_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      state: :value,
      subtotal_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      tender: {:delegate, &SquareUp.ResponseSchema.v1_tender/0},
      total_discount_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      total_price_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      total_shipping_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      total_tax_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      updated_at: :value
    }
  end

  def loyalty_event_loyalty_account_filter do
    %{loyalty_account_id: :value}
  end

  def v1_delete_page_request do
    %{}
  end

  def v1_page_cell do
    %{
      column: :value,
      object_id: :value,
      object_type: :value,
      page_id: :value,
      placeholder_type: :value,
      row: :value
    }
  end

  def catalog_item_option_value_for_item_variation do
    %{item_option_id: :value, item_option_value_id: :value}
  end

  def v1_modifier_option do
    %{
      id: :value,
      modifier_list_id: :value,
      name: :value,
      on_by_default: :value,
      ordinal: :value,
      price_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      v2_id: :value
    }
  end

  def search_loyalty_events_request do
    %{
      cursor: :value,
      limit: :value,
      query: {:delegate, &SquareUp.ResponseSchema.loyalty_event_query/0}
    }
  end

  def v1_list_pages_request do
    %{}
  end

  def catalog_item_option_value do
    %{
      color: :value,
      description: :value,
      item_option_id: :value,
      item_variation_count: :value,
      name: :value,
      ordinal: :value
    }
  end

  def v1_list_inventory_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_inventory_entry/0}]}
  end

  def create_subscription_request do
    %{
      canceled_date: :value,
      card_id: :value,
      customer_id: :value,
      idempotency_key: :value,
      location_id: :value,
      plan_id: :value,
      price_override_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      start_date: :value,
      tax_percentage: :value,
      timezone: :value
    }
  end

  def catalog_modifier_list_selection_type do
    :value
  end

  def delete_loyalty_reward_request do
    %{}
  end

  def delete_customer_group_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def create_dispute_evidence_file_request do
    %{content_type: :value, evidence_type: :value, idempotency_key: :value}
  end

  def obtain_token_request do
    %{
      client_id: :value,
      client_secret: :value,
      code: :value,
      grant_type: :value,
      migration_token: :value,
      redirect_uri: :value,
      refresh_token: :value
    }
  end

  def customer_sort_field do
    :value
  end

  def loyalty_event_delete_reward do
    %{loyalty_program_id: :value, points: :value, reward_id: :value}
  end

  def submit_evidence_request do
    %{}
  end

  def shift_workday do
    %{
      date_range: {:delegate, &SquareUp.ResponseSchema.date_range/0},
      default_timezone: :value,
      match_shifts_by: :value
    }
  end

  def shift do
    %{
      breaks: [{:delegate, &SquareUp.ResponseSchema.break/0}],
      created_at: :value,
      employee_id: :value,
      end_at: :value,
      id: :value,
      location_id: :value,
      start_at: :value,
      status: :value,
      team_member_id: :value,
      timezone: :value,
      updated_at: :value,
      version: :value,
      wage: {:delegate, &SquareUp.ResponseSchema.shift_wage/0}
    }
  end

  def card_prepaid_type do
    :value
  end

  def list_cash_drawer_shifts_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      items: [{:delegate, &SquareUp.ResponseSchema.cash_drawer_shift_summary/0}]
    }
  end

  def v1_fee_adjustment_type do
    :value
  end

  def v1_list_modifier_lists_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_modifier_list/0}]}
  end

  def retrieve_wage_setting_request do
    %{}
  end

  def cancel_terminal_checkout_response do
    %{
      checkout: {:delegate, &SquareUp.ResponseSchema.terminal_checkout/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def list_refunds_request do
    %{begin_time: :value, cursor: :value, end_time: :value, sort_order: :value}
  end

  def order_pricing_options do
    %{auto_apply_discounts: :value}
  end

  def v1_refund_type do
    :value
  end

  def tender_card_details do
    %{card: {:delegate, &SquareUp.ResponseSchema.card/0}, entry_method: :value, status: :value}
  end

  def get_employee_wage_response do
    %{
      employee_wage: {:delegate, &SquareUp.ResponseSchema.employee_wage/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def catalog_modifier_override do
    %{modifier_id: :value, on_by_default: :value}
  end

  def v1_update_employee_role_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}}
  end

  def delete_customer_card_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def address do
    %{
      address_line_1: :value,
      address_line_2: :value,
      address_line_3: :value,
      administrative_district_level_1: :value,
      administrative_district_level_2: :value,
      administrative_district_level_3: :value,
      country: :value,
      first_name: :value,
      last_name: :value,
      locality: :value,
      organization: :value,
      postal_code: :value,
      sublocality: :value,
      sublocality_2: :value,
      sublocality_3: :value
    }
  end

  def loyalty_event_order_filter do
    %{order_id: :value}
  end

  def order_service_charge do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      applied_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      applied_taxes: [{:delegate, &SquareUp.ResponseSchema.order_line_item_applied_tax/0}],
      calculation_phase: :value,
      catalog_object_id: :value,
      metadata: :value,
      name: :value,
      percentage: :value,
      taxable: :value,
      total_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_tax_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      uid: :value
    }
  end

  def get_break_type_response do
    %{
      break_type: {:delegate, &SquareUp.ResponseSchema.break_type/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def search_loyalty_accounts_request_loyalty_account_query do
    %{mappings: [{:delegate, &SquareUp.ResponseSchema.loyalty_account_mapping/0}]}
  end

  def create_invoice_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      invoice: {:delegate, &SquareUp.ResponseSchema.invoice/0}
    }
  end

  def subscription_cadence do
    :value
  end

  def v1_cash_drawer_event_event_type do
    :value
  end

  def create_dispute_evidence_text_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      evidence: {:delegate, &SquareUp.ResponseSchema.dispute_evidence/0}
    }
  end

  def cash_drawer_shift do
    %{
      cash_paid_in_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      cash_paid_out_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      cash_payment_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      cash_refunds_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      closed_at: :value,
      closed_cash_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      closing_employee_id: :value,
      description: :value,
      device: {:delegate, &SquareUp.ResponseSchema.cash_drawer_device/0},
      employee_ids: [:value],
      ended_at: :value,
      ending_employee_id: :value,
      expected_cash_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      id: :value,
      opened_at: :value,
      opened_cash_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      opening_employee_id: :value,
      state: :value
    }
  end

  def error_code do
    :value
  end

  def retrieve_transaction_request do
    %{}
  end

  def v1_fee_calculation_phase do
    :value
  end

  def search_terminal_checkouts_response do
    %{
      checkouts: [{:delegate, &SquareUp.ResponseSchema.terminal_checkout/0}],
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def card_payment_details do
    %{
      application_cryptogram: :value,
      application_identifier: :value,
      application_name: :value,
      auth_result_code: :value,
      avs_status: :value,
      card: {:delegate, &SquareUp.ResponseSchema.card/0},
      cvv_status: :value,
      device_details: {:delegate, &SquareUp.ResponseSchema.device_details/0},
      entry_method: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      refund_requires_card_presence: :value,
      statement_description: :value,
      status: :value,
      verification_method: :value,
      verification_results: :value
    }
  end

  def measurement_unit_time do
    :value
  end

  def get_terminal_checkout_request do
    %{}
  end

  def v1_tender_card_brand do
    :value
  end

  def catalog_object do
    %{
      absent_at_location_ids: [:value],
      catalog_v1_ids: [{:delegate, &SquareUp.ResponseSchema.catalog_v1_id/0}],
      category_data: {:delegate, &SquareUp.ResponseSchema.catalog_category/0},
      custom_attribute_definition_data:
        {:delegate, &SquareUp.ResponseSchema.catalog_custom_attribute_definition/0},
      custom_attribute_values: :value,
      discount_data: {:delegate, &SquareUp.ResponseSchema.catalog_discount/0},
      id: :value,
      image_data: {:delegate, &SquareUp.ResponseSchema.catalog_image/0},
      image_id: :value,
      is_deleted: :value,
      item_data: {:delegate, &SquareUp.ResponseSchema.catalog_item/0},
      item_option_data: {:delegate, &SquareUp.ResponseSchema.catalog_item_option/0},
      item_option_value_data: {:delegate, &SquareUp.ResponseSchema.catalog_item_option_value/0},
      item_variation_data: {:delegate, &SquareUp.ResponseSchema.catalog_item_variation/0},
      measurement_unit_data: {:delegate, &SquareUp.ResponseSchema.catalog_measurement_unit/0},
      modifier_data: {:delegate, &SquareUp.ResponseSchema.catalog_modifier/0},
      modifier_list_data: {:delegate, &SquareUp.ResponseSchema.catalog_modifier_list/0},
      present_at_all_locations: :value,
      present_at_location_ids: [:value],
      pricing_rule_data: {:delegate, &SquareUp.ResponseSchema.catalog_pricing_rule/0},
      product_set_data: {:delegate, &SquareUp.ResponseSchema.catalog_product_set/0},
      quick_amounts_settings_data:
        {:delegate, &SquareUp.ResponseSchema.catalog_quick_amounts_settings/0},
      subscription_plan_data: {:delegate, &SquareUp.ResponseSchema.catalog_subscription_plan/0},
      tax_data: {:delegate, &SquareUp.ResponseSchema.catalog_tax/0},
      time_period_data: {:delegate, &SquareUp.ResponseSchema.catalog_time_period/0},
      type: :value,
      updated_at: :value,
      version: :value
    }
  end

  def list_cash_drawer_shift_events_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      events: [{:delegate, &SquareUp.ResponseSchema.cash_drawer_shift_event/0}]
    }
  end

  def subscription_phase do
    %{
      cadence: :value,
      ordinal: :value,
      periods: :value,
      recurring_price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      uid: :value
    }
  end

  def create_loyalty_account_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      loyalty_account: {:delegate, &SquareUp.ResponseSchema.loyalty_account/0}
    }
  end

  def create_invoice_request do
    %{idempotency_key: :value, invoice: {:delegate, &SquareUp.ResponseSchema.invoice/0}}
  end

  def v1_retrieve_business_request do
    %{}
  end

  def v1_cash_drawer_shift do
    %{
      cash_paid_in_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      cash_paid_out_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      cash_payment_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      cash_refunds_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      closed_at: :value,
      closed_cash_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      closing_employee_id: :value,
      description: :value,
      device: {:delegate, &SquareUp.ResponseSchema.device/0},
      employee_ids: [:value],
      ended_at: :value,
      ending_employee_id: :value,
      event_type: :value,
      events: [{:delegate, &SquareUp.ResponseSchema.v1_cash_drawer_event/0}],
      expected_cash_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      id: :value,
      opened_at: :value,
      opening_employee_id: :value,
      starting_cash_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0}
    }
  end

  def retrieve_inventory_changes_request do
    %{cursor: :value, location_ids: :value}
  end

  def invoice_payment_reminder do
    %{
      message: :value,
      relative_scheduled_days: :value,
      sent_at: :value,
      status: :value,
      uid: :value
    }
  end

  def invoice_payment_reminder_status do
    :value
  end

  def search_subscriptions_request do
    %{
      cursor: :value,
      limit: :value,
      query: {:delegate, &SquareUp.ResponseSchema.search_subscriptions_query/0}
    }
  end

  def create_shift_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      shift: {:delegate, &SquareUp.ResponseSchema.shift/0}
    }
  end

  def invoice do
    %{
      created_at: :value,
      description: :value,
      id: :value,
      invoice_number: :value,
      location_id: :value,
      next_payment_amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      order_id: :value,
      payment_requests: [{:delegate, &SquareUp.ResponseSchema.invoice_payment_request/0}],
      primary_recipient: {:delegate, &SquareUp.ResponseSchema.invoice_recipient/0},
      public_url: :value,
      scheduled_at: :value,
      status: :value,
      timezone: :value,
      title: :value,
      updated_at: :value,
      version: :value
    }
  end

  def list_subscription_events_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      subscription_events: [{:delegate, &SquareUp.ResponseSchema.subscription_event/0}]
    }
  end

  def catalog_query_items_for_tax do
    %{tax_ids: [:value]}
  end

  def order_fulfillment_updated_object do
    %{
      order_fulfillment_updated: {:delegate, &SquareUp.ResponseSchema.order_fulfillment_updated/0}
    }
  end

  def loyalty_program_accrual_rule_type do
    :value
  end

  def v1_refund do
    %{
      created_at: :value,
      is_exchange: :value,
      merchant_id: :value,
      payment_id: :value,
      processed_at: :value,
      reason: :value,
      refunded_additive_tax: [{:delegate, &SquareUp.ResponseSchema.v1_payment_tax/0}],
      refunded_additive_tax_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      refunded_discount_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      refunded_inclusive_tax: [{:delegate, &SquareUp.ResponseSchema.v1_payment_tax/0}],
      refunded_inclusive_tax_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      refunded_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      refunded_processing_fee_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      refunded_surcharge_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      refunded_surcharges: [{:delegate, &SquareUp.ResponseSchema.v1_payment_surcharge/0}],
      refunded_tax_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      refunded_tip_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      type: :value
    }
  end

  def search_loyalty_rewards_request do
    %{
      cursor: :value,
      limit: :value,
      query:
        {:delegate,
         &SquareUp.ResponseSchema.search_loyalty_rewards_request_loyalty_reward_query/0}
    }
  end

  def order_entry do
    %{location_id: :value, order_id: :value, version: :value}
  end

  def v1_merchant do
    %{
      account_capabilities: [:value],
      account_type: :value,
      business_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      business_name: :value,
      business_phone: {:delegate, &SquareUp.ResponseSchema.v1_phone_number/0},
      business_type: :value,
      country_code: :value,
      currency_code: :value,
      email: :value,
      id: :value,
      language_code: :value,
      location_details: {:delegate, &SquareUp.ResponseSchema.v1_merchant_location_details/0},
      market_url: :value,
      name: :value,
      shipping_address: {:delegate, &SquareUp.ResponseSchema.address/0}
    }
  end

  def update_invoice_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      invoice: {:delegate, &SquareUp.ResponseSchema.invoice/0}
    }
  end

  def list_employees_request do
    %{cursor: :value, limit: :value, location_id: :value, status: :value}
  end

  def measurement_unit_unit_type do
    :value
  end

  def v1_delete_timecard_response do
    %{}
  end

  def list_workweek_configs_request do
    %{cursor: :value, limit: :value}
  end

  def v1_payment_discount do
    %{
      applied_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      discount_id: :value,
      name: :value
    }
  end

  def v1_update_timecard_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_timecard/0}}
  end

  def list_payments_request do
    %{
      begin_time: :value,
      card_brand: :value,
      cursor: :value,
      end_time: :value,
      last_4: :value,
      location_id: :value,
      sort_order: :value,
      total: :value
    }
  end

  def order_fulfillment_state do
    :value
  end

  def order_fulfillment do
    %{
      metadata: :value,
      pickup_details: {:delegate, &SquareUp.ResponseSchema.order_fulfillment_pickup_details/0},
      shipment_details:
        {:delegate, &SquareUp.ResponseSchema.order_fulfillment_shipment_details/0},
      state: :value,
      type: :value,
      uid: :value
    }
  end

  def update_team_member_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      team_member: {:delegate, &SquareUp.ResponseSchema.team_member/0}
    }
  end

  def v1_list_employees_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_employee/0}]}
  end

  def create_customer_request do
    %{
      address: {:delegate, &SquareUp.ResponseSchema.address/0},
      birthday: :value,
      company_name: :value,
      email_address: :value,
      family_name: :value,
      given_name: :value,
      idempotency_key: :value,
      nickname: :value,
      note: :value,
      phone_number: :value,
      reference_id: :value
    }
  end

  def list_employee_wages_request do
    %{cursor: :value, employee_id: :value, limit: :value}
  end

  def order_line_item_tax_scope do
    :value
  end

  def update_workweek_config_request do
    %{workweek_config: {:delegate, &SquareUp.ResponseSchema.workweek_config/0}}
  end

  def cancel_payment_by_idempotency_key_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def update_wage_setting_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      wage_setting: {:delegate, &SquareUp.ResponseSchema.wage_setting/0}
    }
  end

  def v1_money do
    %{amount: :value, currency_code: :value}
  end

  def catalog_discount_type do
    :value
  end

  def v1_employee do
    %{
      authorized_location_ids: [:value],
      created_at: :value,
      email: :value,
      external_id: :value,
      first_name: :value,
      id: :value,
      last_name: :value,
      role_ids: [:value],
      status: :value,
      updated_at: :value
    }
  end

  def catalog_time_period do
    %{event: :value}
  end

  def v1_list_employee_roles_request do
    %{batch_token: :value, limit: :value, order: :value}
  end

  def search_loyalty_accounts_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      loyalty_accounts: [{:delegate, &SquareUp.ResponseSchema.loyalty_account/0}]
    }
  end

  def create_team_member_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      team_member: {:delegate, &SquareUp.ResponseSchema.team_member/0}
    }
  end

  def list_locations_request do
    %{}
  end

  def v1_update_discount_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_discount/0}}
  end

  def v1_cash_drawer_event do
    %{
      created_at: :value,
      description: :value,
      employee_id: :value,
      event_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      event_type: :value,
      id: :value
    }
  end

  def list_refunds_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      refunds: [{:delegate, &SquareUp.ResponseSchema.refund/0}]
    }
  end

  def v1_list_bank_accounts_request do
    %{}
  end

  def retrieve_transaction_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      transaction: {:delegate, &SquareUp.ResponseSchema.transaction/0}
    }
  end

  def search_orders_sort do
    %{sort_field: :value, sort_order: :value}
  end

  def v1_timecard_event_event_type do
    :value
  end

  def search_team_members_filter do
    %{location_ids: [:value], status: :value}
  end

  def catalog_custom_attribute_definition_selection_config_custom_attribute_selection do
    %{name: :value, uid: :value}
  end

  def v1_payment_tax do
    %{
      applied_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      fee_id: :value,
      inclusion_type: :value,
      name: :value,
      rate: :value
    }
  end

  def get_payment_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      payment: {:delegate, &SquareUp.ResponseSchema.payment/0}
    }
  end

  def v1_retrieve_payment_request do
    %{}
  end

  def employee_status do
    :value
  end

  def get_invoice_request do
    %{}
  end

  def batch_retrieve_catalog_objects_request do
    %{include_related_objects: :value, object_ids: [:value]}
  end

  def batch_retrieve_inventory_changes_response do
    %{
      changes: [{:delegate, &SquareUp.ResponseSchema.inventory_change/0}],
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def retrieve_catalog_object_request do
    %{include_related_objects: :value}
  end

  def v1_create_modifier_list_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_modifier_list/0}}
  end

  def v1_employee_role do
    %{
      created_at: :value,
      id: :value,
      is_owner: :value,
      name: :value,
      permissions: [:value],
      updated_at: :value
    }
  end

  def cash_drawer_shift_event do
    %{
      created_at: :value,
      description: :value,
      employee_id: :value,
      event_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      event_type: :value,
      id: :value
    }
  end

  def cash_drawer_shift_state do
    :value
  end

  def obtain_token_response do
    %{
      access_token: :value,
      expires_at: :value,
      id_token: :value,
      merchant_id: :value,
      plan_id: :value,
      refresh_token: :value,
      subscription_id: :value,
      token_type: :value
    }
  end

  def search_subscriptions_filter do
    %{customer_ids: [:value], location_ids: [:value]}
  end

  def catalog_custom_attribute_definition_seller_visibility do
    :value
  end

  def invoice_payment_request do
    %{
      card_id: :value,
      computed_amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      due_date: :value,
      fixed_amount_requested_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      percentage_requested: :value,
      reminders: [{:delegate, &SquareUp.ResponseSchema.invoice_payment_reminder/0}],
      request_method: :value,
      request_type: :value,
      rounding_adjustment_included_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      tipping_enabled: :value,
      total_completed_amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      uid: :value
    }
  end

  def update_location_request do
    %{location: {:delegate, &SquareUp.ResponseSchema.location/0}}
  end

  def v1_order_state do
    :value
  end

  def list_bank_accounts_request do
    %{cursor: :value, limit: :value, location_id: :value}
  end

  def customer_group_info do
    %{id: :value, name: :value}
  end

  def catalog_object_type do
    :value
  end

  def v1_list_discounts_request do
    %{}
  end

  def list_customer_groups_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      groups: [{:delegate, &SquareUp.ResponseSchema.customer_group/0}]
    }
  end

  def payment_refund do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      app_fee_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      created_at: :value,
      id: :value,
      location_id: :value,
      order_id: :value,
      payment_id: :value,
      processing_fee: [{:delegate, &SquareUp.ResponseSchema.processing_fee/0}],
      reason: :value,
      status: :value,
      updated_at: :value
    }
  end

  def search_customers_response do
    %{
      cursor: :value,
      customers: [{:delegate, &SquareUp.ResponseSchema.customer/0}],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def v1_list_timecards_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_timecard/0}]}
  end

  def v1_payment do
    %{
      additive_tax: [{:delegate, &SquareUp.ResponseSchema.v1_payment_tax/0}],
      additive_tax_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      created_at: :value,
      creator_id: :value,
      device: {:delegate, &SquareUp.ResponseSchema.device/0},
      discount_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      gross_sales_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      id: :value,
      inclusive_tax: [{:delegate, &SquareUp.ResponseSchema.v1_payment_tax/0}],
      inclusive_tax_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      is_partial: :value,
      itemizations: [{:delegate, &SquareUp.ResponseSchema.v1_payment_itemization/0}],
      merchant_id: :value,
      net_sales_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      net_total_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      payment_url: :value,
      processing_fee_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      receipt_url: :value,
      refunded_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      refunds: [{:delegate, &SquareUp.ResponseSchema.v1_refund/0}],
      surcharge_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      surcharges: [{:delegate, &SquareUp.ResponseSchema.v1_payment_surcharge/0}],
      swedish_rounding_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      tax_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      tender: [{:delegate, &SquareUp.ResponseSchema.v1_tender/0}],
      tip_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      total_collected_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0}
    }
  end

  def card do
    %{
      billing_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      bin: :value,
      card_brand: :value,
      card_type: :value,
      cardholder_name: :value,
      exp_month: :value,
      exp_year: :value,
      fingerprint: :value,
      id: :value,
      last_4: :value,
      prepaid_type: :value
    }
  end

  def retrieve_subscription_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      subscription: {:delegate, &SquareUp.ResponseSchema.subscription/0}
    }
  end

  def delete_break_type_request do
    %{}
  end

  def retrieve_inventory_physical_count_request do
    %{}
  end

  def batch_delete_catalog_objects_request do
    %{object_ids: [:value]}
  end

  def order_reward do
    %{id: :value, reward_tier_id: :value}
  end

  def update_item_modifier_lists_request do
    %{item_ids: [:value], modifier_lists_to_disable: [:value], modifier_lists_to_enable: [:value]}
  end

  def v1_item_image do
    %{id: :value, url: :value}
  end

  def v1_merchant_location_details do
    %{nickname: :value}
  end

  def device_code do
    %{
      code: :value,
      created_at: :value,
      device_id: :value,
      id: :value,
      location_id: :value,
      name: :value,
      pair_by: :value,
      paired_at: :value,
      product_type: :value,
      status: :value,
      status_changed_at: :value
    }
  end

  def v1_update_modifier_list_request do
    %{name: :value, selection_type: :value}
  end

  def invoice_status do
    :value
  end

  def v1_page do
    %{
      cells: [{:delegate, &SquareUp.ResponseSchema.v1_page_cell/0}],
      id: :value,
      name: :value,
      page_index: :value
    }
  end

  def customer do
    %{
      address: {:delegate, &SquareUp.ResponseSchema.address/0},
      birthday: :value,
      cards: [{:delegate, &SquareUp.ResponseSchema.card/0}],
      company_name: :value,
      created_at: :value,
      creation_source: :value,
      email_address: :value,
      family_name: :value,
      given_name: :value,
      group_ids: [:value],
      groups: [{:delegate, &SquareUp.ResponseSchema.customer_group_info/0}],
      id: :value,
      nickname: :value,
      note: :value,
      phone_number: :value,
      preferences: {:delegate, &SquareUp.ResponseSchema.customer_preferences/0},
      reference_id: :value,
      segment_ids: [:value],
      updated_at: :value
    }
  end

  def list_team_member_wages_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      team_member_wages: [{:delegate, &SquareUp.ResponseSchema.team_member_wage/0}]
    }
  end

  def transaction do
    %{
      client_id: :value,
      created_at: :value,
      id: :value,
      location_id: :value,
      order_id: :value,
      product: :value,
      reference_id: :value,
      refunds: [{:delegate, &SquareUp.ResponseSchema.refund/0}],
      shipping_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      tenders: [{:delegate, &SquareUp.ResponseSchema.tender/0}]
    }
  end

  def catalog_custom_attribute_definition do
    %{
      allowed_object_types: [:value],
      app_visibility: :value,
      custom_attribute_usage_count: :value,
      description: :value,
      key: :value,
      name: :value,
      number_config:
        {:delegate, &SquareUp.ResponseSchema.catalog_custom_attribute_definition_number_config/0},
      selection_config:
        {:delegate,
         &SquareUp.ResponseSchema.catalog_custom_attribute_definition_selection_config/0},
      seller_visibility: :value,
      source_application: {:delegate, &SquareUp.ResponseSchema.source_application/0},
      string_config:
        {:delegate, &SquareUp.ResponseSchema.catalog_custom_attribute_definition_string_config/0},
      type: :value
    }
  end

  def v1_list_pages_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_page/0}]}
  end

  def retrieve_inventory_count_request do
    %{cursor: :value, location_ids: :value}
  end

  def renew_token_response do
    %{
      access_token: :value,
      expires_at: :value,
      merchant_id: :value,
      plan_id: :value,
      subscription_id: :value,
      token_type: :value
    }
  end

  def standard_unit_description_group do
    %{
      language_code: :value,
      standard_unit_descriptions: [
        {:delegate, &SquareUp.ResponseSchema.standard_unit_description/0}
      ]
    }
  end

  def v1_fee_type do
    :value
  end

  def dispute_evidence do
    %{dispute_id: :value, evidence_id: :value, evidence_type: :value, uploaded_at: :value}
  end

  def terminal_checkout_query_filter do
    %{
      created_at: {:delegate, &SquareUp.ResponseSchema.time_range/0},
      device_id: :value,
      status: :value
    }
  end

  def get_payment_request do
    %{}
  end

  def order_line_item_discount_type do
    :value
  end

  def list_bank_accounts_response do
    %{
      bank_accounts: [{:delegate, &SquareUp.ResponseSchema.bank_account/0}],
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def search_orders_sort_field do
    :value
  end

  def search_orders_fulfillment_filter do
    %{fulfillment_states: [:value], fulfillment_types: [:value]}
  end

  def order_return_service_charge do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      applied_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      applied_taxes: [{:delegate, &SquareUp.ResponseSchema.order_line_item_applied_tax/0}],
      calculation_phase: :value,
      catalog_object_id: :value,
      name: :value,
      percentage: :value,
      source_service_charge_uid: :value,
      taxable: :value,
      total_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      total_tax_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      uid: :value
    }
  end

  def get_employee_wage_request do
    %{}
  end

  def create_payment_request do
    %{
      accept_partial_authorization: :value,
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      app_fee_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      autocomplete: :value,
      billing_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      buyer_email_address: :value,
      customer_id: :value,
      delay_duration: :value,
      idempotency_key: :value,
      location_id: :value,
      note: :value,
      order_id: :value,
      reference_id: :value,
      shipping_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      source_id: :value,
      statement_description_identifier: :value,
      tip_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      verification_token: :value
    }
  end

  def create_loyalty_account_request do
    %{
      idempotency_key: :value,
      loyalty_account: {:delegate, &SquareUp.ResponseSchema.loyalty_account/0}
    }
  end

  def v1_item_color do
    :value
  end

  def retrieve_inventory_adjustment_response do
    %{
      adjustment: {:delegate, &SquareUp.ResponseSchema.inventory_adjustment/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def accept_dispute_request do
    %{}
  end

  def team_member_assigned_locations do
    %{assignment_type: :value, location_ids: [:value]}
  end

  def catalog_info_request do
    %{}
  end

  def v1_retrieve_bank_account_request do
    %{}
  end

  def create_location_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      location: {:delegate, &SquareUp.ResponseSchema.location/0}
    }
  end

  def catalog_quick_amounts_settings_option do
    :value
  end

  def team_member do
    %{
      assigned_locations: {:delegate, &SquareUp.ResponseSchema.team_member_assigned_locations/0},
      created_at: :value,
      email_address: :value,
      family_name: :value,
      given_name: :value,
      id: :value,
      is_owner: :value,
      phone_number: :value,
      reference_id: :value,
      status: :value,
      updated_at: :value
    }
  end

  def sort_order do
    :value
  end

  def order_rounding_adjustment do
    %{amount_money: {:delegate, &SquareUp.ResponseSchema.money/0}, name: :value, uid: :value}
  end

  def v1_list_discounts_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_discount/0}]}
  end

  def customer_preferences do
    %{email_unsubscribed: :value}
  end

  def retrieve_customer_segment_request do
    %{}
  end

  def create_break_type_response do
    %{
      break_type: {:delegate, &SquareUp.ResponseSchema.break_type/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def day_of_week do
    :value
  end

  def terminal_checkout_query do
    %{
      filter: {:delegate, &SquareUp.ResponseSchema.terminal_checkout_query_filter/0},
      sort: {:delegate, &SquareUp.ResponseSchema.terminal_checkout_query_sort/0}
    }
  end

  def refund_payment_request do
    %{
      amount_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      app_fee_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      idempotency_key: :value,
      payment_id: :value,
      reason: :value
    }
  end

  def redeem_loyalty_reward_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      event: {:delegate, &SquareUp.ResponseSchema.loyalty_event/0}
    }
  end

  def v1_list_modifier_lists_request do
    %{}
  end

  def card_square_product do
    :value
  end

  def catalog_query_sorted_attribute do
    %{attribute_name: :value, initial_attribute_value: :value, sort_order: :value}
  end

  def loyalty_event_accumulate_points do
    %{loyalty_program_id: :value, order_id: :value, points: :value}
  end

  def update_item_taxes_request do
    %{item_ids: [:value], taxes_to_disable: [:value], taxes_to_enable: [:value]}
  end

  def create_checkout_request do
    %{
      additional_recipients: [
        {:delegate, &SquareUp.ResponseSchema.charge_request_additional_recipient/0}
      ],
      ask_for_shipping_address: :value,
      idempotency_key: :value,
      merchant_support_email: :value,
      note: :value,
      order: {:delegate, &SquareUp.ResponseSchema.create_order_request/0},
      pre_populate_buyer_email: :value,
      pre_populate_shipping_address: {:delegate, &SquareUp.ResponseSchema.address/0},
      redirect_url: :value
    }
  end

  def search_catalog_items_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      items: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}],
      matched_variation_ids: [:value]
    }
  end

  def create_device_code_response do
    %{
      device_code: {:delegate, &SquareUp.ResponseSchema.device_code/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def location_capability do
    :value
  end

  def v1_settlement do
    %{
      bank_account_id: :value,
      entries: [{:delegate, &SquareUp.ResponseSchema.v1_settlement_entry/0}],
      id: :value,
      initiated_at: :value,
      status: :value,
      total_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0}
    }
  end

  def v1_list_settlements_request_status do
    :value
  end

  def list_workweek_configs_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      workweek_configs: [{:delegate, &SquareUp.ResponseSchema.workweek_config/0}]
    }
  end

  def business_hours_period do
    %{day_of_week: :value, end_local_time: :value, start_local_time: :value}
  end

  def retrieve_loyalty_account_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      loyalty_account: {:delegate, &SquareUp.ResponseSchema.loyalty_account/0}
    }
  end

  def v1_timecard_event do
    %{
      clockin_time: :value,
      clockout_time: :value,
      created_at: :value,
      event_type: :value,
      id: :value
    }
  end

  def create_subscription_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      subscription: {:delegate, &SquareUp.ResponseSchema.subscription/0}
    }
  end

  def v1_adjust_inventory_request_adjustment_type do
    :value
  end

  def catalog_query_prefix do
    %{attribute_name: :value, attribute_prefix: :value}
  end

  def shift_query do
    %{
      filter: {:delegate, &SquareUp.ResponseSchema.shift_filter/0},
      sort: {:delegate, &SquareUp.ResponseSchema.shift_sort/0}
    }
  end

  def catalog_category do
    %{name: :value}
  end

  def list_dispute_evidence_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      evidence: [{:delegate, &SquareUp.ResponseSchema.dispute_evidence/0}]
    }
  end

  def retrieve_cash_drawer_shift_request do
    %{location_id: :value}
  end

  def retrieve_catalog_object_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      object: {:delegate, &SquareUp.ResponseSchema.catalog_object/0},
      related_objects: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}]
    }
  end

  def time_range do
    %{end_at: :value, start_at: :value}
  end

  def retrieve_customer_group_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      group: {:delegate, &SquareUp.ResponseSchema.customer_group/0}
    }
  end

  def search_loyalty_events_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      events: [{:delegate, &SquareUp.ResponseSchema.loyalty_event/0}]
    }
  end

  def measurement_unit_volume do
    :value
  end

  def catalog_query_items_for_item_options do
    %{item_option_ids: [:value]}
  end

  def v1_list_inventory_request do
    %{batch_token: :value, limit: :value}
  end

  def batch_retrieve_inventory_changes_request do
    %{
      catalog_object_ids: [:value],
      cursor: :value,
      location_ids: [:value],
      states: [:value],
      types: [:value],
      updated_after: :value,
      updated_before: :value
    }
  end

  def customer_creation_source_filter do
    %{rule: :value, values: [:value]}
  end

  def tender_card_details_entry_method do
    :value
  end

  def create_loyalty_reward_request do
    %{idempotency_key: :value, reward: {:delegate, &SquareUp.ResponseSchema.loyalty_reward/0}}
  end

  def search_invoices_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      invoices: [{:delegate, &SquareUp.ResponseSchema.invoice/0}]
    }
  end

  def create_catalog_image_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      image: {:delegate, &SquareUp.ResponseSchema.catalog_object/0}
    }
  end

  def v1_list_timecards_request do
    %{
      batch_token: :value,
      begin_clockin_time: :value,
      begin_clockout_time: :value,
      begin_updated_at: :value,
      deleted: :value,
      employee_id: :value,
      end_clockin_time: :value,
      end_clockout_time: :value,
      end_updated_at: :value,
      limit: :value,
      order: :value
    }
  end

  def create_dispute_evidence_file_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      evidence: {:delegate, &SquareUp.ResponseSchema.dispute_evidence/0}
    }
  end

  def order_line_item_discount_scope do
    :value
  end

  def get_shift_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      shift: {:delegate, &SquareUp.ResponseSchema.shift/0}
    }
  end

  def order_created_object do
    %{order_created: {:delegate, &SquareUp.ResponseSchema.order_created/0}}
  end

  def catalog_v1_id do
    %{catalog_v1_id: :value, location_id: :value}
  end

  def delete_invoice_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def v1_phone_number do
    %{calling_code: :value, number: :value}
  end

  def v1_update_page_cell_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_page_cell/0}}
  end

  def register_domain_response_status do
    :value
  end

  def loyalty_account_mapping_type do
    :value
  end

  def v1_delete_variation_request do
    %{}
  end

  def charge_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      transaction: {:delegate, &SquareUp.ResponseSchema.transaction/0}
    }
  end

  def get_device_code_request do
    %{}
  end

  def v1_list_employee_roles_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}]}
  end

  def list_invoices_request do
    %{cursor: :value, limit: :value, location_id: :value}
  end

  def v1_create_modifier_option_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_modifier_option/0}}
  end

  def get_device_code_response do
    %{
      device_code: {:delegate, &SquareUp.ResponseSchema.device_code/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def inventory_adjustment do
    %{
      catalog_object_id: :value,
      catalog_object_type: :value,
      created_at: :value,
      employee_id: :value,
      from_state: :value,
      goods_receipt_id: :value,
      id: :value,
      location_id: :value,
      occurred_at: :value,
      purchase_order_id: :value,
      quantity: :value,
      reference_id: :value,
      refund_id: :value,
      source: {:delegate, &SquareUp.ResponseSchema.source_application/0},
      to_state: :value,
      total_price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      transaction_id: :value
    }
  end

  def get_bank_account_by_v1_id_request do
    %{}
  end

  def create_device_code_request do
    %{device_code: {:delegate, &SquareUp.ResponseSchema.device_code/0}, idempotency_key: :value}
  end

  def shift_sort_field do
    :value
  end

  def delete_customer_request do
    %{}
  end

  def v1_list_bank_accounts_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_bank_account/0}]}
  end

  def v1_update_variation_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_variation/0}}
  end

  def cash_drawer_event_type do
    :value
  end

  def tender_bank_transfer_details_status do
    :value
  end

  def measurement_unit_length do
    :value
  end

  def customer_segment do
    %{created_at: :value, id: :value, name: :value, updated_at: :value}
  end

  def update_team_member_request do
    %{team_member: {:delegate, &SquareUp.ResponseSchema.team_member/0}}
  end

  def search_customers_request do
    %{
      cursor: :value,
      limit: :value,
      query: {:delegate, &SquareUp.ResponseSchema.customer_query/0}
    }
  end

  def currency do
    :value
  end

  def source_application do
    %{application_id: :value, name: :value, product: :value}
  end

  def v1_create_fee_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_fee/0}}
  end

  def retrieve_customer_group_request do
    %{}
  end

  def device_checkout_options do
    %{
      device_id: :value,
      skip_receipt_screen: :value,
      tip_settings: {:delegate, &SquareUp.ResponseSchema.tip_settings/0}
    }
  end

  def employee do
    %{
      created_at: :value,
      email: :value,
      first_name: :value,
      id: :value,
      is_owner: :value,
      last_name: :value,
      location_ids: [:value],
      phone_number: :value,
      status: :value,
      updated_at: :value
    }
  end

  def retrieve_team_member_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      team_member: {:delegate, &SquareUp.ResponseSchema.team_member/0}
    }
  end

  def v1_variation do
    %{
      id: :value,
      inventory_alert_threshold: :value,
      inventory_alert_type: :value,
      item_id: :value,
      name: :value,
      ordinal: :value,
      price_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      pricing_type: :value,
      sku: :value,
      track_inventory: :value,
      user_data: :value,
      v2_id: :value
    }
  end

  def list_disputes_response do
    %{
      cursor: :value,
      disputes: [{:delegate, &SquareUp.ResponseSchema.dispute/0}],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def tax_inclusion_type do
    :value
  end

  def tender_type do
    :value
  end

  def customer_group do
    %{created_at: :value, id: :value, name: :value, updated_at: :value}
  end

  def calculate_order_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      order: {:delegate, &SquareUp.ResponseSchema.order/0}
    }
  end

  def get_bank_account_by_v1_id_response do
    %{
      bank_account: {:delegate, &SquareUp.ResponseSchema.bank_account/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def v1_retrieve_modifier_list_request do
    %{}
  end

  def get_payment_refund_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      refund: {:delegate, &SquareUp.ResponseSchema.payment_refund/0}
    }
  end

  def delete_customer_group_request do
    %{}
  end

  def delete_shift_request do
    %{}
  end

  def v1_list_fees_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_fee/0}]}
  end

  def search_team_members_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      team_members: [{:delegate, &SquareUp.ResponseSchema.team_member/0}]
    }
  end

  def create_mobile_authorization_code_response do
    %{
      authorization_code: :value,
      error: {:delegate, &SquareUp.ResponseSchema.error/0},
      expires_at: :value
    }
  end

  def retrieve_employee_response do
    %{
      employee: {:delegate, &SquareUp.ResponseSchema.employee/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def catalog_custom_attribute_definition_selection_config do
    %{
      allowed_selections: [
        {:delegate,
         &SquareUp.ResponseSchema.catalog_custom_attribute_definition_selection_config_custom_attribute_selection/0}
      ],
      max_allowed_selections: :value
    }
  end

  def dispute_reason do
    :value
  end

  def transaction_type do
    :value
  end

  def search_team_members_query do
    %{filter: {:delegate, &SquareUp.ResponseSchema.search_team_members_filter/0}}
  end

  def loyalty_event_expire_points do
    %{loyalty_program_id: :value, points: :value}
  end

  def loyalty_account do
    %{
      balance: :value,
      created_at: :value,
      customer_id: :value,
      enrolled_at: :value,
      id: :value,
      lifetime_points: :value,
      mappings: [{:delegate, &SquareUp.ResponseSchema.loyalty_account_mapping/0}],
      program_id: :value,
      updated_at: :value
    }
  end

  def list_team_member_wages_request do
    %{cursor: :value, limit: :value, team_member_id: :value}
  end

  def retrieve_inventory_physical_count_response do
    %{
      count: {:delegate, &SquareUp.ResponseSchema.inventory_physical_count/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def v1_payment_surcharge_type do
    :value
  end

  def custom_attribute_filter do
    %{
      bool_filter: :value,
      custom_attribute_definition_id: :value,
      key: :value,
      number_filter: {:delegate, &SquareUp.ResponseSchema.range/0},
      selection_uids_filter: [:value],
      string_filter: :value
    }
  end

  def card_brand do
    :value
  end

  def order_return_tax do
    %{
      applied_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      catalog_object_id: :value,
      name: :value,
      percentage: :value,
      scope: :value,
      source_tax_uid: :value,
      type: :value,
      uid: :value
    }
  end

  def catalog_image do
    %{caption: :value, name: :value, url: :value}
  end

  def v1_category do
    %{id: :value, name: :value, v2_id: :value}
  end

  def action_cancel_reason do
    :value
  end

  def v1_list_locations_response do
    %{items: [{:delegate, &SquareUp.ResponseSchema.v1_merchant/0}]}
  end

  def search_catalog_items_request_stock_level do
    :value
  end

  def order_service_charge_calculation_phase do
    :value
  end

  def remove_group_from_customer_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def upsert_catalog_object_response do
    %{
      catalog_object: {:delegate, &SquareUp.ResponseSchema.catalog_object/0},
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      id_mappings: [{:delegate, &SquareUp.ResponseSchema.catalog_id_mapping/0}]
    }
  end

  def list_device_codes_response do
    %{
      cursor: :value,
      device_codes: [{:delegate, &SquareUp.ResponseSchema.device_code/0}],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def business_hours do
    %{periods: [{:delegate, &SquareUp.ResponseSchema.business_hours_period/0}]}
  end

  def capture_transaction_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def v1_create_refund_request do
    %{
      payment_id: :value,
      reason: :value,
      refunded_money: {:delegate, &SquareUp.ResponseSchema.v1_money/0},
      request_idempotence_key: :value,
      type: :value
    }
  end

  def v1_adjust_inventory_request do
    %{adjustment_type: :value, memo: :value, quantity_delta: :value}
  end

  def catalog_quick_amount do
    %{
      amount: {:delegate, &SquareUp.ResponseSchema.money/0},
      ordinal: :value,
      score: :value,
      type: :value
    }
  end

  def loyalty_program_expiration_policy do
    %{expiration_duration: :value}
  end

  def team_member_wage do
    %{
      hourly_rate: {:delegate, &SquareUp.ResponseSchema.money/0},
      id: :value,
      team_member_id: :value,
      title: :value
    }
  end

  def create_dispute_evidence_text_request do
    %{evidence_text: :value, evidence_type: :value, idempotency_key: :value}
  end

  def delete_catalog_object_request do
    %{}
  end

  def calculate_order_request do
    %{
      order: {:delegate, &SquareUp.ResponseSchema.order/0},
      proposed_rewards: [{:delegate, &SquareUp.ResponseSchema.order_reward/0}]
    }
  end

  def get_payment_refund_request do
    %{}
  end

  def update_location_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      location: {:delegate, &SquareUp.ResponseSchema.location/0}
    }
  end

  def search_orders_customer_filter do
    %{customer_ids: [:value]}
  end

  def customer_text_filter do
    %{exact: :value, fuzzy: :value}
  end

  def v1_update_employee_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_employee/0}}
  end

  def v1_create_employee_role_request do
    %{employee_role: {:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}}
  end

  def card_type do
    :value
  end

  def create_refund_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      refund: {:delegate, &SquareUp.ResponseSchema.refund/0}
    }
  end

  def search_shifts_response do
    %{
      cursor: :value,
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      shifts: [{:delegate, &SquareUp.ResponseSchema.shift/0}]
    }
  end

  def update_subscription_request do
    %{subscription: {:delegate, &SquareUp.ResponseSchema.subscription/0}}
  end

  def v1_update_item_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_item/0}}
  end

  def standard_unit_description do
    %{
      abbreviation: :value,
      name: :value,
      unit: {:delegate, &SquareUp.ResponseSchema.measurement_unit/0}
    }
  end

  def v1_fee_inclusion_type do
    :value
  end

  def v1_update_modifier_option_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_modifier_option/0}}
  end

  def list_employees_response do
    %{
      cursor: :value,
      employees: [{:delegate, &SquareUp.ResponseSchema.employee/0}],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def catalog_query_exact do
    %{attribute_name: :value, attribute_value: :value}
  end

  def remove_dispute_evidence_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]}
  end

  def complete_payment_response do
    %{
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}],
      payment: {:delegate, &SquareUp.ResponseSchema.payment/0}
    }
  end

  def search_loyalty_rewards_request_loyalty_reward_query do
    %{loyalty_account_id: :value, status: :value}
  end

  def batch_retrieve_inventory_counts_request do
    %{
      catalog_object_ids: [:value],
      cursor: :value,
      location_ids: [:value],
      states: [:value],
      updated_after: :value
    }
  end

  def delete_catalog_object_response do
    %{
      deleted_at: :value,
      deleted_object_ids: [:value],
      errors: [{:delegate, &SquareUp.ResponseSchema.error/0}]
    }
  end

  def list_payment_refunds_request do
    %{
      begin_time: :value,
      cursor: :value,
      end_time: :value,
      location_id: :value,
      sort_order: :value,
      source_type: :value,
      status: :value
    }
  end

  def dispute_state do
    :value
  end

  def search_catalog_items_request do
    %{
      category_ids: [:value],
      cursor: :value,
      custom_attribute_filters: [{:delegate, &SquareUp.ResponseSchema.custom_attribute_filter/0}],
      enabled_location_ids: [:value],
      limit: :value,
      product_types: [:value],
      sort_order: :value,
      stock_levels: [:value],
      text_filter: :value
    }
  end

  def v1_item_visibility do
    :value
  end

  def list_customer_segments_request do
    %{cursor: :value}
  end

  def job_assignment do
    %{
      annual_rate: {:delegate, &SquareUp.ResponseSchema.money/0},
      hourly_rate: {:delegate, &SquareUp.ResponseSchema.money/0},
      job_title: :value,
      pay_type: :value,
      weekly_hours: :value
    }
  end

  def loyalty_program_reward_definition_type do
    :value
  end

  def location_status do
    :value
  end

  def catalog_id_mapping do
    %{client_object_id: :value, object_id: :value}
  end

  def loyalty_reward_status do
    :value
  end

  def v1_create_category_request do
    %{body: {:delegate, &SquareUp.ResponseSchema.v1_category/0}}
  end

  def catalog_item_option do
    %{
      description: :value,
      display_name: :value,
      item_count: :value,
      name: :value,
      show_colors: :value,
      values: [{:delegate, &SquareUp.ResponseSchema.catalog_object/0}]
    }
  end

  def order_return do
    %{
      return_amounts: {:delegate, &SquareUp.ResponseSchema.order_money_amounts/0},
      return_discounts: [{:delegate, &SquareUp.ResponseSchema.order_return_discount/0}],
      return_line_items: [{:delegate, &SquareUp.ResponseSchema.order_return_line_item/0}],
      return_service_charges: [
        {:delegate, &SquareUp.ResponseSchema.order_return_service_charge/0}
      ],
      return_taxes: [{:delegate, &SquareUp.ResponseSchema.order_return_tax/0}],
      rounding_adjustment: {:delegate, &SquareUp.ResponseSchema.order_rounding_adjustment/0},
      source_order_id: :value,
      uid: :value
    }
  end

  def transaction_product do
    :value
  end

  def v1_delete_category_request do
    %{}
  end

  def v1_retrieve_item_request do
    %{}
  end

  def bulk_create_team_members_response do
    %{errors: [{:delegate, &SquareUp.ResponseSchema.error/0}], team_members: :value}
  end

  def order_return_line_item_modifier do
    %{
      base_price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      catalog_object_id: :value,
      name: :value,
      source_modifier_uid: :value,
      total_price_money: {:delegate, &SquareUp.ResponseSchema.money/0},
      uid: :value
    }
  end

  def v1_tender_type do
    :value
  end
end
