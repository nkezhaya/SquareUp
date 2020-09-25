defmodule SquareUp.NormSchema do
  import Norm

  def wage_setting do
    schema(%{
      created_at: spec(is_binary()),
      is_overtime_exempt: spec(is_boolean()),
      job_assignments:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.job_assignment/0))),
      team_member_id: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([])
  end

  def retrieve_customer_response do
    schema(%{
      customer: Norm.Delegate.delegate(&SquareUp.NormSchema.customer/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def create_location_request do
    schema(%{location: Norm.Delegate.delegate(&SquareUp.NormSchema.location/0)})
    |> selection([])
  end

  def v1_retrieve_employee_request do
    schema(%{})
    |> selection([])
  end

  def retrieve_cash_drawer_shift_response do
    schema(%{
      cash_drawer_shift: Norm.Delegate.delegate(&SquareUp.NormSchema.cash_drawer_shift/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def shift_status do
    spec(is_binary())
  end

  def redeem_loyalty_reward_request do
    schema(%{idempotency_key: spec(is_binary()), location_id: spec(is_binary())})
    |> selection([:idempotency_key, :location_id])
  end

  def order_fulfillment_pickup_details do
    schema(%{
      accepted_at: spec(is_binary()),
      auto_complete_duration: spec(is_binary()),
      cancel_reason: spec(is_binary()),
      canceled_at: spec(is_binary()),
      curbside_pickup_details:
        Norm.Delegate.delegate(
          &SquareUp.NormSchema.order_fulfillment_pickup_details_curbside_pickup_details/0
        ),
      expired_at: spec(is_binary()),
      expires_at: spec(is_binary()),
      is_curbside_pickup: spec(is_boolean()),
      note: spec(is_binary()),
      picked_up_at: spec(is_binary()),
      pickup_at: spec(is_binary()),
      pickup_window_duration: spec(is_binary()),
      placed_at: spec(is_binary()),
      prep_time_duration: spec(is_binary()),
      ready_at: spec(is_binary()),
      recipient: Norm.Delegate.delegate(&SquareUp.NormSchema.order_fulfillment_recipient/0),
      rejected_at: spec(is_binary()),
      schedule_type: spec(is_binary())
    })
    |> selection([])
  end

  def subscription_event_subscription_event_type do
    spec(is_binary())
  end

  def void_transaction_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def v1_settlement_entry do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      payment_id: spec(is_binary()),
      type: spec(is_binary())
    })
    |> selection([])
  end

  def error_category do
    spec(is_binary())
  end

  def retrieve_wage_setting_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      wage_setting: Norm.Delegate.delegate(&SquareUp.NormSchema.wage_setting/0)
    })
    |> selection([])
  end

  def cancel_payment_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      payment: Norm.Delegate.delegate(&SquareUp.NormSchema.payment/0)
    })
    |> selection([])
  end

  def remove_dispute_evidence_request do
    schema(%{})
    |> selection([])
  end

  def retrieve_dispute_response do
    schema(%{
      dispute: Norm.Delegate.delegate(&SquareUp.NormSchema.dispute/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def list_break_types_request do
    schema(%{cursor: spec(is_binary()), limit: spec(is_integer()), location_id: spec(is_binary())})
    |> selection([])
  end

  def update_order_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.order/0)
    })
    |> selection([])
  end

  def bulk_update_team_members_request do
    schema(%{team_members: schema(%{})})
    |> selection([:team_members])
  end

  def create_customer_group_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      group: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_group/0)
    })
    |> selection([])
  end

  def money do
    schema(%{amount: spec(is_integer()), currency: spec(is_binary())})
    |> selection([])
  end

  def get_team_member_wage_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      team_member_wage: Norm.Delegate.delegate(&SquareUp.NormSchema.team_member_wage/0)
    })
    |> selection([])
  end

  def v1_update_order_request do
    schema(%{
      action: spec(is_binary()),
      canceled_note: spec(is_binary()),
      completed_note: spec(is_binary()),
      refunded_note: spec(is_binary()),
      shipped_tracking_number: spec(is_binary())
    })
    |> selection([:action])
  end

  def tender do
    schema(%{
      additional_recipients:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.additional_recipient/0))),
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      bank_transfer_details:
        Norm.Delegate.delegate(&SquareUp.NormSchema.tender_bank_transfer_details/0),
      card_details: Norm.Delegate.delegate(&SquareUp.NormSchema.tender_card_details/0),
      cash_details: Norm.Delegate.delegate(&SquareUp.NormSchema.tender_cash_details/0),
      created_at: spec(is_binary()),
      customer_id: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      note: spec(is_binary()),
      payment_id: spec(is_binary()),
      processing_fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      tip_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      transaction_id: spec(is_binary()),
      type: spec(is_binary())
    })
    |> selection([:type])
  end

  def v1_create_refund_request_type do
    spec(is_binary())
  end

  def catalog_query_range do
    schema(%{
      attribute_max_value: spec(is_integer()),
      attribute_min_value: spec(is_integer()),
      attribute_name: spec(is_binary())
    })
    |> selection([:attribute_name])
  end

  def invoice_sort do
    schema(%{field: spec(is_binary()), order: spec(is_binary())})
    |> selection([:field])
  end

  def cancel_invoice_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      invoice: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)
    })
    |> selection([])
  end

  def v1_list_categories_request do
    schema(%{})
    |> selection([])
  end

  def list_employee_wages_response do
    schema(%{
      cursor: spec(is_binary()),
      employee_wages: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.employee_wage/0))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def order_line_item_discount do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      catalog_object_id: spec(is_binary()),
      metadata: schema(%{}),
      name: spec(is_binary()),
      percentage: spec(is_binary()),
      pricing_rule_id: spec(is_binary()),
      reward_ids: spec(coll_of(spec(is_binary()))),
      scope: spec(is_binary()),
      type: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def delete_shift_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def catalog_pricing_type do
    spec(is_binary())
  end

  def create_order_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      location_id: spec(is_binary()),
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.order/0)
    })
    |> selection([])
  end

  def v1_list_orders_request do
    schema(%{batch_token: spec(is_binary()), limit: spec(is_integer()), order: spec(is_binary())})
    |> selection([])
  end

  def v1_list_settlements_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_settlement/0)))})
    |> selection([])
  end

  def v1_update_page_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_page/0)})
    |> selection([:body])
  end

  def payment do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      app_fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      billing_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      buyer_email_address: spec(is_binary()),
      card_details: Norm.Delegate.delegate(&SquareUp.NormSchema.card_payment_details/0),
      created_at: spec(is_binary()),
      customer_id: spec(is_binary()),
      delay_action: spec(is_binary()),
      delay_duration: spec(is_binary()),
      delayed_until: spec(is_binary()),
      employee_id: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      note: spec(is_binary()),
      order_id: spec(is_binary()),
      processing_fee:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.processing_fee/0))),
      receipt_number: spec(is_binary()),
      receipt_url: spec(is_binary()),
      reference_id: spec(is_binary()),
      refund_ids: spec(coll_of(spec(is_binary()))),
      refunded_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      shipping_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      source_type: spec(is_binary()),
      statement_description_identifier: spec(is_binary()),
      status: spec(is_binary()),
      tip_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      updated_at: spec(is_binary())
    })
    |> selection([])
  end

  def v1_cash_drawer_shift_event_type do
    spec(is_binary())
  end

  def list_loyalty_programs_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      programs: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_program/0)))
    })
    |> selection([])
  end

  def v1_fee do
    schema(%{
      adjustment_type: spec(is_binary()),
      applies_to_custom_amounts: spec(is_boolean()),
      calculation_phase: spec(is_binary()),
      enabled: spec(is_boolean()),
      id: spec(is_binary()),
      inclusion_type: spec(is_binary()),
      name: spec(is_binary()),
      rate: spec(is_binary()),
      type: spec(is_binary()),
      v2_id: spec(is_binary())
    })
    |> selection([])
  end

  def v1_list_items_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_item/0)))})
    |> selection([])
  end

  def tender_cash_details do
    schema(%{
      buyer_tendered_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      change_back_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0)
    })
    |> selection([])
  end

  def v1_payment_itemization do
    schema(%{
      discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      discounts:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_discount/0))),
      gross_sales_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      item_detail: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_item_detail/0),
      item_variation_name: spec(is_binary()),
      itemization_type: spec(is_binary()),
      modifiers:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_modifier/0))),
      name: spec(is_binary()),
      net_sales_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      notes: spec(is_binary()),
      quantity: spec(is_number()),
      single_quantity_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      taxes: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_tax/0))),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0)
    })
    |> selection([])
  end

  def publish_invoice_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      invoice: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)
    })
    |> selection([])
  end

  def employee_wage do
    schema(%{
      employee_id: spec(is_binary()),
      hourly_rate: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      id: spec(is_binary()),
      title: spec(is_binary())
    })
    |> selection([])
  end

  def update_shift_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      shift: Norm.Delegate.delegate(&SquareUp.NormSchema.shift/0)
    })
    |> selection([])
  end

  def catalog_modifier_list do
    schema(%{
      modifiers: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0))),
      name: spec(is_binary()),
      ordinal: spec(is_integer()),
      selection_type: spec(is_binary())
    })
    |> selection([])
  end

  def v1_inventory_entry do
    schema(%{quantity_on_hand: spec(is_number()), variation_id: spec(is_binary())})
    |> selection([])
  end

  def v1_retrieve_cash_drawer_shift_request do
    schema(%{})
    |> selection([])
  end

  def v1_tender_entry_method do
    spec(is_binary())
  end

  def update_item_modifier_lists_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      updated_at: spec(is_binary())
    })
    |> selection([])
  end

  def get_shift_request do
    schema(%{})
    |> selection([])
  end

  def list_disputes_request do
    schema(%{
      cursor: spec(is_binary()),
      location_id: spec(is_binary()),
      states: spec(coll_of(spec(is_binary())))
    })
    |> selection([])
  end

  def add_group_to_customer_request do
    schema(%{})
    |> selection([])
  end

  def loyalty_event_redeem_reward do
    schema(%{
      loyalty_program_id: spec(is_binary()),
      order_id: spec(is_binary()),
      reward_id: spec(is_binary())
    })
    |> selection([:loyalty_program_id])
  end

  def v1_list_payments_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment/0)))})
    |> selection([])
  end

  def refund_payment_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      refund: Norm.Delegate.delegate(&SquareUp.NormSchema.payment_refund/0)
    })
    |> selection([])
  end

  def v1_delete_modifier_option_request do
    schema(%{})
    |> selection([])
  end

  def v1_list_employees_request do
    schema(%{
      batch_token: spec(is_binary()),
      begin_created_at: spec(is_binary()),
      begin_updated_at: spec(is_binary()),
      end_created_at: spec(is_binary()),
      end_updated_at: spec(is_binary()),
      external_id: spec(is_binary()),
      limit: spec(is_integer()),
      order: spec(is_binary()),
      status: spec(is_binary())
    })
    |> selection([])
  end

  def cash_drawer_device do
    schema(%{id: spec(is_binary()), name: spec(is_binary())})
    |> selection([])
  end

  def search_loyalty_rewards_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      rewards: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_reward/0)))
    })
    |> selection([])
  end

  def customer_query do
    schema(%{
      filter: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_filter/0),
      sort: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_sort/0)
    })
    |> selection([])
  end

  def measurement_unit_generic do
    spec(is_binary())
  end

  def create_payment_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      payment: Norm.Delegate.delegate(&SquareUp.NormSchema.payment/0)
    })
    |> selection([])
  end

  def loyalty_reward do
    schema(%{
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      loyalty_account_id: spec(is_binary()),
      order_id: spec(is_binary()),
      points: spec(is_integer()),
      redeemed_at: spec(is_binary()),
      reward_tier_id: spec(is_binary()),
      status: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([:loyalty_account_id, :reward_tier_id])
  end

  def inventory_transfer do
    schema(%{
      catalog_object_id: spec(is_binary()),
      catalog_object_type: spec(is_binary()),
      created_at: spec(is_binary()),
      employee_id: spec(is_binary()),
      from_location_id: spec(is_binary()),
      id: spec(is_binary()),
      occurred_at: spec(is_binary()),
      quantity: spec(is_binary()),
      reference_id: spec(is_binary()),
      source: Norm.Delegate.delegate(&SquareUp.NormSchema.source_application/0),
      state: spec(is_binary()),
      to_location_id: spec(is_binary())
    })
    |> selection([])
  end

  def batch_retrieve_catalog_objects_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      objects: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0))),
      related_objects:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)))
    })
    |> selection([])
  end

  def refund do
    schema(%{
      additional_recipients:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.additional_recipient/0))),
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      processing_fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      reason: spec(is_binary()),
      status: spec(is_binary()),
      tender_id: spec(is_binary()),
      transaction_id: spec(is_binary())
    })
    |> selection([:id, :location_id, :transaction_id, :tender_id, :reason, :amount_money, :status])
  end

  def v1_retrieve_employee_role_request do
    schema(%{})
    |> selection([])
  end

  def revoke_token_request do
    schema(%{
      access_token: spec(is_binary()),
      client_id: spec(is_binary()),
      merchant_id: spec(is_binary()),
      revoke_only_access_token: spec(is_boolean())
    })
    |> selection([])
  end

  def list_subscription_events_request do
    schema(%{cursor: spec(is_binary()), limit: spec(is_integer())})
    |> selection([])
  end

  def invoice_recipient do
    schema(%{
      address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      company_name: spec(is_binary()),
      customer_id: spec(is_binary()),
      email_address: spec(is_binary()),
      family_name: spec(is_binary()),
      given_name: spec(is_binary()),
      phone_number: spec(is_binary())
    })
    |> selection([])
  end

  def retrieve_subscription_request do
    schema(%{})
    |> selection([])
  end

  def calculate_loyalty_points_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      points: spec(is_integer())
    })
    |> selection([])
  end

  def v1_bank_account do
    schema(%{
      account_number_suffix: spec(is_binary()),
      bank_name: spec(is_binary()),
      currency_code: spec(is_binary()),
      id: spec(is_binary()),
      merchant_id: spec(is_binary()),
      name: spec(is_binary()),
      routing_number: spec(is_binary()),
      type: spec(is_binary())
    })
    |> selection([])
  end

  def order_line_item_applied_discount do
    schema(%{
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      discount_uid: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([:discount_uid])
  end

  def register_domain_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      status: spec(is_binary())
    })
    |> selection([])
  end

  def bank_account do
    schema(%{
      account_number_suffix: spec(is_binary()),
      account_type: spec(is_binary()),
      bank_name: spec(is_binary()),
      country: spec(is_binary()),
      creditable: spec(is_boolean()),
      currency: spec(is_binary()),
      debit_mandate_reference_id: spec(is_binary()),
      debitable: spec(is_boolean()),
      fingerprint: spec(is_binary()),
      holder_name: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      primary_bank_identification_number: spec(is_binary()),
      reference_id: spec(is_binary()),
      secondary_bank_identification_number: spec(is_binary()),
      status: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([
      :id,
      :account_number_suffix,
      :country,
      :currency,
      :account_type,
      :holder_name,
      :primary_bank_identification_number,
      :status,
      :creditable,
      :debitable
    ])
  end

  def list_catalog_request do
    schema(%{cursor: spec(is_binary()), types: spec(is_binary())})
    |> selection([])
  end

  def update_customer_group_request do
    schema(%{group: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_group/0)})
    |> selection([:group])
  end

  def delete_customer_card_request do
    schema(%{})
    |> selection([])
  end

  def accumulate_loyalty_points_request do
    schema(%{
      accumulate_points:
        Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_accumulate_points/0),
      idempotency_key: spec(is_binary()),
      location_id: spec(is_binary())
    })
    |> selection([:accumulate_points, :idempotency_key, :location_id])
  end

  def create_customer_response do
    schema(%{
      customer: Norm.Delegate.delegate(&SquareUp.NormSchema.customer/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def batch_retrieve_inventory_counts_response do
    schema(%{
      counts: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_count/0))),
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def retrieve_location_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      location: Norm.Delegate.delegate(&SquareUp.NormSchema.location/0)
    })
    |> selection([])
  end

  def list_payments_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      payments: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.payment/0)))
    })
    |> selection([])
  end

  def search_orders_state_filter do
    schema(%{states: spec(coll_of(spec(is_binary())))})
    |> selection([:states])
  end

  def accumulate_loyalty_points_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      event: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event/0)
    })
    |> selection([])
  end

  def create_shift_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      shift: Norm.Delegate.delegate(&SquareUp.NormSchema.shift/0)
    })
    |> selection([:shift])
  end

  def update_customer_group_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      group: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_group/0)
    })
    |> selection([])
  end

  def list_break_types_response do
    schema(%{
      break_types: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.break_type/0))),
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def batch_retrieve_orders_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      orders: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order/0)))
    })
    |> selection([])
  end

  def list_transactions_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      transactions: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.transaction/0)))
    })
    |> selection([])
  end

  def catalog_custom_attribute_value do
    schema(%{
      boolean_value: spec(is_boolean()),
      custom_attribute_definition_id: spec(is_binary()),
      key: spec(is_binary()),
      name: spec(is_binary()),
      number_value: spec(is_binary()),
      selection_uid_values: spec(coll_of(spec(is_binary()))),
      string_value: spec(is_binary()),
      type: spec(is_binary())
    })
    |> selection([])
  end

  def tip_settings do
    schema(%{
      allow_tipping: spec(is_boolean()),
      custom_tip_field: spec(is_boolean()),
      separate_tip_screen: spec(is_boolean())
    })
    |> selection([])
  end

  def get_bank_account_request do
    schema(%{})
    |> selection([])
  end

  def add_group_to_customer_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def retrieve_employee_request do
    schema(%{})
    |> selection([])
  end

  def list_cash_drawer_shifts_request do
    schema(%{
      begin_time: spec(is_binary()),
      cursor: spec(is_binary()),
      end_time: spec(is_binary()),
      limit: spec(is_integer()),
      location_id: spec(is_binary()),
      sort_order: spec(is_binary())
    })
    |> selection([:location_id])
  end

  def search_shifts_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.shift_query/0)
    })
    |> selection([])
  end

  def batch_change_inventory_request do
    schema(%{
      changes: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_change/0))),
      idempotency_key: spec(is_binary()),
      ignore_unchanged_counts: spec(is_boolean())
    })
    |> selection([])
  end

  def location_type do
    spec(is_binary())
  end

  def exclude_strategy do
    spec(is_binary())
  end

  def additional_recipient do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      description: spec(is_binary()),
      location_id: spec(is_binary()),
      receivable_id: spec(is_binary())
    })
    |> selection([:location_id, :description, :amount_money])
  end

  def v1_payment_itemization_itemization_type do
    spec(is_binary())
  end

  def adjust_loyalty_points_request do
    schema(%{
      adjust_points: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_adjust_points/0),
      idempotency_key: spec(is_binary())
    })
    |> selection([:idempotency_key, :adjust_points])
  end

  def loyalty_event_type_filter do
    schema(%{types: spec(coll_of(spec(is_binary())))})
    |> selection([:types])
  end

  def search_orders_date_time_filter do
    schema(%{
      closed_at: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0),
      created_at: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0),
      updated_at: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0)
    })
    |> selection([])
  end

  def cancel_invoice_request do
    schema(%{version: spec(is_integer())})
    |> selection([:version])
  end

  def v1_merchant_business_type do
    spec(is_binary())
  end

  def calculate_loyalty_points_request do
    schema(%{
      order_id: spec(is_binary()),
      transaction_amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0)
    })
    |> selection([])
  end

  def processing_fee do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      effective_at: spec(is_binary()),
      type: spec(is_binary())
    })
    |> selection([])
  end

  def create_customer_card_request do
    schema(%{
      billing_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      card_nonce: spec(is_binary()),
      cardholder_name: spec(is_binary()),
      verification_token: spec(is_binary())
    })
    |> selection([:card_nonce])
  end

  def filter_value do
    schema(%{
      all: spec(coll_of(spec(is_binary()))),
      any: spec(coll_of(spec(is_binary()))),
      none: spec(coll_of(spec(is_binary())))
    })
    |> selection([])
  end

  def retrieve_inventory_count_response do
    schema(%{
      counts: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_count/0))),
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def dispute_evidence_file do
    schema(%{filename: spec(is_binary()), filetype: spec(is_binary())})
    |> selection([])
  end

  def loyalty_event_create_reward do
    schema(%{
      loyalty_program_id: spec(is_binary()),
      points: spec(is_integer()),
      reward_id: spec(is_binary())
    })
    |> selection([:loyalty_program_id, :points])
  end

  def inventory_alert_type do
    spec(is_binary())
  end

  def v1_payment_surcharge do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      name: spec(is_binary()),
      rate: spec(is_binary()),
      surcharge_id: spec(is_binary()),
      taxable: spec(is_boolean()),
      taxes: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_tax/0))),
      type: spec(is_binary())
    })
    |> selection([])
  end

  def v1_discount_discount_type do
    spec(is_binary())
  end

  def loyalty_event_source do
    spec(is_binary())
  end

  def catalog_quick_amounts_settings do
    schema(%{
      amounts: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_quick_amount/0))),
      eligible_for_auto_amounts: spec(is_boolean()),
      option: spec(is_binary())
    })
    |> selection([:option])
  end

  def get_terminal_checkout_response do
    schema(%{
      checkout: Norm.Delegate.delegate(&SquareUp.NormSchema.terminal_checkout/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def item_variation_location_overrides do
    schema(%{
      inventory_alert_threshold: spec(is_integer()),
      inventory_alert_type: spec(is_binary()),
      location_id: spec(is_binary()),
      price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      pricing_type: spec(is_binary()),
      track_inventory: spec(is_boolean())
    })
    |> selection([])
  end

  def terminal_checkout do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      cancel_reason: spec(is_binary()),
      created_at: spec(is_binary()),
      deadline_duration: spec(is_binary()),
      device_options: Norm.Delegate.delegate(&SquareUp.NormSchema.device_checkout_options/0),
      id: spec(is_binary()),
      note: spec(is_binary()),
      payment_ids: spec(coll_of(spec(is_binary()))),
      reference_id: spec(is_binary()),
      status: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([:amount_money, :device_options])
  end

  def bulk_update_team_members_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      team_members: schema(%{})
    })
    |> selection([])
  end

  def loyalty_program do
    schema(%{
      accrual_rules:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_program_accrual_rule/0))),
      created_at: spec(is_binary()),
      expiration_policy:
        Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_program_expiration_policy/0),
      id: spec(is_binary()),
      location_ids: spec(coll_of(spec(is_binary()))),
      reward_tiers:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_program_reward_tier/0))),
      status: spec(is_binary()),
      terminology: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_program_terminology/0),
      updated_at: spec(is_binary())
    })
    |> selection([
      :id,
      :status,
      :reward_tiers,
      :terminology,
      :location_ids,
      :created_at,
      :updated_at,
      :accrual_rules
    ])
  end

  def v1_list_orders_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_order/0)))})
    |> selection([])
  end

  def loyalty_event_query do
    schema(%{filter: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_filter/0)})
    |> selection([])
  end

  def search_orders_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      order_entries: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_entry/0))),
      orders: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order/0)))
    })
    |> selection([])
  end

  def shift_wage do
    schema(%{
      hourly_rate: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      title: spec(is_binary())
    })
    |> selection([])
  end

  def v1_delete_modifier_list_request do
    schema(%{})
    |> selection([])
  end

  def cash_drawer_shift_summary do
    schema(%{
      closed_at: spec(is_binary()),
      closed_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      description: spec(is_binary()),
      ended_at: spec(is_binary()),
      expected_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      id: spec(is_binary()),
      opened_at: spec(is_binary()),
      opened_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      state: spec(is_binary())
    })
    |> selection([])
  end

  def catalog_query_text do
    schema(%{keywords: spec(coll_of(spec(is_binary())))})
    |> selection([:keywords])
  end

  def search_orders_source_filter do
    schema(%{source_names: spec(coll_of(spec(is_binary())))})
    |> selection([])
  end

  def job_assignment_pay_type do
    spec(is_binary())
  end

  def loyalty_event_date_time_filter do
    schema(%{created_at: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0)})
    |> selection([:created_at])
  end

  def order_fulfillment_shipment_details do
    schema(%{
      cancel_reason: spec(is_binary()),
      canceled_at: spec(is_binary()),
      carrier: spec(is_binary()),
      expected_shipped_at: spec(is_binary()),
      failed_at: spec(is_binary()),
      failure_reason: spec(is_binary()),
      in_progress_at: spec(is_binary()),
      packaged_at: spec(is_binary()),
      placed_at: spec(is_binary()),
      recipient: Norm.Delegate.delegate(&SquareUp.NormSchema.order_fulfillment_recipient/0),
      shipped_at: spec(is_binary()),
      shipping_note: spec(is_binary()),
      shipping_type: spec(is_binary()),
      tracking_number: spec(is_binary()),
      tracking_url: spec(is_binary())
    })
    |> selection([])
  end

  def register_domain_request do
    schema(%{domain_name: spec(is_binary())})
    |> selection([:domain_name])
  end

  def v1_variation_inventory_alert_type do
    spec(is_binary())
  end

  def order_created do
    schema(%{
      created_at: spec(is_binary()),
      location_id: spec(is_binary()),
      order_id: spec(is_binary()),
      state: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([])
  end

  def catalog_tax do
    schema(%{
      applies_to_custom_amounts: spec(is_boolean()),
      calculation_phase: spec(is_binary()),
      enabled: spec(is_boolean()),
      inclusion_type: spec(is_binary()),
      name: spec(is_binary()),
      percentage: spec(is_binary())
    })
    |> selection([])
  end

  def invoice_sort_field do
    spec(is_binary())
  end

  def v1_order_history_entry_action do
    spec(is_binary())
  end

  def v1_list_items_request do
    schema(%{batch_token: spec(is_binary())})
    |> selection([])
  end

  def order_quantity_unit do
    schema(%{
      measurement_unit: Norm.Delegate.delegate(&SquareUp.NormSchema.measurement_unit/0),
      precision: spec(is_integer())
    })
    |> selection([])
  end

  def v1_update_modifier_list_request_selection_type do
    spec(is_binary())
  end

  def create_checkout_response do
    schema(%{
      checkout: Norm.Delegate.delegate(&SquareUp.NormSchema.checkout/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def disputed_payment do
    schema(%{payment_id: spec(is_binary())})
    |> selection([])
  end

  def catalog_item_modifier_list_info do
    schema(%{
      enabled: spec(is_boolean()),
      max_selected_modifiers: spec(is_integer()),
      min_selected_modifiers: spec(is_integer()),
      modifier_list_id: spec(is_binary()),
      modifier_overrides:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_modifier_override/0)))
    })
    |> selection([:modifier_list_id])
  end

  def catalog_custom_attribute_definition_type do
    spec(is_binary())
  end

  def retrieve_inventory_adjustment_request do
    schema(%{})
    |> selection([])
  end

  def device do
    schema(%{id: spec(is_binary()), name: spec(is_binary())})
    |> selection([])
  end

  def v1_merchant_account_type do
    spec(is_binary())
  end

  def measurement_unit_custom do
    schema(%{abbreviation: spec(is_binary()), name: spec(is_binary())})
    |> selection([:name, :abbreviation])
  end

  def coordinates do
    schema(%{latitude: spec(is_number()), longitude: spec(is_number())})
    |> selection([])
  end

  def list_dispute_evidence_request do
    schema(%{})
    |> selection([])
  end

  def order_source do
    schema(%{name: spec(is_binary())})
    |> selection([])
  end

  def measurement_unit_area do
    spec(is_binary())
  end

  def list_merchants_request do
    schema(%{cursor: spec(is_integer())})
    |> selection([])
  end

  def dispute_evidence_type do
    spec(is_binary())
  end

  def v1_tender do
    schema(%{
      card_brand: spec(is_binary()),
      change_back_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      employee_id: spec(is_binary()),
      entry_method: spec(is_binary()),
      id: spec(is_binary()),
      is_exchange: spec(is_boolean()),
      name: spec(is_binary()),
      pan_suffix: spec(is_binary()),
      payment_note: spec(is_binary()),
      receipt_url: spec(is_binary()),
      refunded_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      settled_at: spec(is_binary()),
      tendered_at: spec(is_binary()),
      tendered_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      type: spec(is_binary())
    })
    |> selection([])
  end

  def delete_customer_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def delete_invoice_request do
    schema(%{version: spec(is_integer())})
    |> selection([])
  end

  def v1_discount do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      color: spec(is_binary()),
      discount_type: spec(is_binary()),
      id: spec(is_binary()),
      name: spec(is_binary()),
      pin_required: spec(is_boolean()),
      rate: spec(is_binary()),
      v2_id: spec(is_binary())
    })
    |> selection([])
  end

  def v1_list_employees_request_status do
    spec(is_binary())
  end

  def v1_list_cash_drawer_shifts_request do
    schema(%{begin_time: spec(is_binary()), end_time: spec(is_binary()), order: spec(is_binary())})
    |> selection([])
  end

  def loyalty_program_status do
    spec(is_binary())
  end

  def v1_list_settlements_request do
    schema(%{
      batch_token: spec(is_binary()),
      begin_time: spec(is_binary()),
      end_time: spec(is_binary()),
      limit: spec(is_integer()),
      order: spec(is_binary()),
      status: spec(is_binary())
    })
    |> selection([])
  end

  def v1_apply_fee_request do
    schema(%{})
    |> selection([])
  end

  def order_line_item do
    schema(%{
      applied_discounts:
        spec(
          coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_applied_discount/0))
        ),
      applied_taxes:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_applied_tax/0))),
      base_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      catalog_object_id: spec(is_binary()),
      gross_sales_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      metadata: schema(%{}),
      modifiers:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_modifier/0))),
      name: spec(is_binary()),
      note: spec(is_binary()),
      quantity: spec(is_binary()),
      quantity_unit: Norm.Delegate.delegate(&SquareUp.NormSchema.order_quantity_unit/0),
      total_discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      uid: spec(is_binary()),
      variation_name: spec(is_binary()),
      variation_total_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0)
    })
    |> selection([:quantity])
  end

  def catalog_info_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      limits: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_info_response_limits/0),
      standard_unit_description_group:
        Norm.Delegate.delegate(&SquareUp.NormSchema.standard_unit_description_group/0)
    })
    |> selection([])
  end

  def customer_inclusion_exclusion do
    spec(is_binary())
  end

  def update_item_taxes_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      updated_at: spec(is_binary())
    })
    |> selection([])
  end

  def v1_retrieve_timecard_request do
    schema(%{})
    |> selection([])
  end

  def charge_request do
    schema(%{
      additional_recipients:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.additional_recipient/0))),
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      billing_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      buyer_email_address: spec(is_binary()),
      card_nonce: spec(is_binary()),
      customer_card_id: spec(is_binary()),
      customer_id: spec(is_binary()),
      delay_capture: spec(is_boolean()),
      idempotency_key: spec(is_binary()),
      note: spec(is_binary()),
      order_id: spec(is_binary()),
      reference_id: spec(is_binary()),
      shipping_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      verification_token: spec(is_binary())
    })
    |> selection([:idempotency_key, :amount_money])
  end

  def customer_sort do
    schema(%{field: spec(is_binary()), order: spec(is_binary())})
    |> selection([])
  end

  def retrieve_customer_segment_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      segment: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_segment/0)
    })
    |> selection([])
  end

  def order_updated do
    schema(%{
      created_at: spec(is_binary()),
      location_id: spec(is_binary()),
      order_id: spec(is_binary()),
      state: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([])
  end

  def loyalty_event do
    schema(%{
      accumulate_points:
        Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_accumulate_points/0),
      adjust_points: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_adjust_points/0),
      create_reward: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_create_reward/0),
      created_at: spec(is_binary()),
      delete_reward: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_delete_reward/0),
      expire_points: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_expire_points/0),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      loyalty_account_id: spec(is_binary()),
      other_event: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_other/0),
      redeem_reward: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_redeem_reward/0),
      source: spec(is_binary()),
      type: spec(is_binary())
    })
    |> selection([:id, :type, :created_at, :loyalty_account_id, :source])
  end

  def v1_list_refunds_request do
    schema(%{
      batch_token: spec(is_binary()),
      begin_time: spec(is_binary()),
      end_time: spec(is_binary()),
      limit: spec(is_integer()),
      order: spec(is_binary())
    })
    |> selection([])
  end

  def inventory_physical_count do
    schema(%{
      catalog_object_id: spec(is_binary()),
      catalog_object_type: spec(is_binary()),
      created_at: spec(is_binary()),
      employee_id: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      occurred_at: spec(is_binary()),
      quantity: spec(is_binary()),
      reference_id: spec(is_binary()),
      source: Norm.Delegate.delegate(&SquareUp.NormSchema.source_application/0),
      state: spec(is_binary())
    })
    |> selection([])
  end

  def search_subscriptions_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      subscriptions: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.subscription/0)))
    })
    |> selection([])
  end

  def renew_token_request do
    schema(%{access_token: spec(is_binary())})
    |> selection([])
  end

  def cancel_subscription_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      subscription: Norm.Delegate.delegate(&SquareUp.NormSchema.subscription/0)
    })
    |> selection([])
  end

  def list_customers_request do
    schema(%{
      cursor: spec(is_binary()),
      sort_field: spec(is_binary()),
      sort_order: spec(is_binary())
    })
    |> selection([])
  end

  def v1_page_cell_object_type do
    spec(is_binary())
  end

  def get_bank_account_response do
    schema(%{
      bank_account: Norm.Delegate.delegate(&SquareUp.NormSchema.bank_account/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def loyalty_event_filter do
    schema(%{
      date_time_filter:
        Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_date_time_filter/0),
      location_filter:
        Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_location_filter/0),
      loyalty_account_filter:
        Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_loyalty_account_filter/0),
      order_filter: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_order_filter/0),
      type_filter: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_type_filter/0)
    })
    |> selection([])
  end

  def v1_variation_pricing_type do
    spec(is_binary())
  end

  def create_customer_card_response do
    schema(%{
      card: Norm.Delegate.delegate(&SquareUp.NormSchema.card/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def revoke_token_response do
    schema(%{success: spec(is_boolean())})
    |> selection([])
  end

  def break do
    schema(%{
      break_type_id: spec(is_binary()),
      end_at: spec(is_binary()),
      expected_duration: spec(is_binary()),
      id: spec(is_binary()),
      is_paid: spec(is_boolean()),
      name: spec(is_binary()),
      start_at: spec(is_binary())
    })
    |> selection([:start_at, :break_type_id, :name, :expected_duration, :is_paid])
  end

  def catalog_custom_attribute_definition_number_config do
    schema(%{precision: spec(is_integer())})
    |> selection([])
  end

  def workweek_config do
    schema(%{
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      start_of_day_local_time: spec(is_binary()),
      start_of_week: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([:start_of_week, :start_of_day_local_time])
  end

  def error do
    schema(%{
      category: spec(is_binary()),
      code: spec(is_binary()),
      detail: spec(is_binary()),
      field: spec(is_binary())
    })
    |> selection([:category, :code])
  end

  def bulk_create_team_members_request do
    schema(%{team_members: schema(%{})})
    |> selection([:team_members])
  end

  def search_catalog_objects_request do
    schema(%{
      begin_time: spec(is_binary()),
      cursor: spec(is_binary()),
      include_deleted_objects: spec(is_boolean()),
      include_related_objects: spec(is_boolean()),
      limit: spec(is_integer()),
      object_types: spec(coll_of(spec(is_binary()))),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query/0)
    })
    |> selection([])
  end

  def v1_remove_fee_request do
    schema(%{})
    |> selection([])
  end

  def v1_settlement_entry_type do
    spec(is_binary())
  end

  def accept_dispute_response do
    schema(%{
      dispute: Norm.Delegate.delegate(&SquareUp.NormSchema.dispute/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def order_fulfillment_pickup_details_schedule_type do
    spec(is_binary())
  end

  def v1_delete_item_request do
    schema(%{})
    |> selection([])
  end

  def retrieve_merchant_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      merchant: Norm.Delegate.delegate(&SquareUp.NormSchema.merchant/0)
    })
    |> selection([])
  end

  def v1_list_timecard_events_request do
    schema(%{})
    |> selection([])
  end

  def v1_modifier_list do
    schema(%{
      id: spec(is_binary()),
      modifier_options:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_modifier_option/0))),
      name: spec(is_binary()),
      selection_type: spec(is_binary()),
      v2_id: spec(is_binary())
    })
    |> selection([])
  end

  def loyalty_program_reward_definition_scope do
    spec(is_binary())
  end

  def v1_timecard do
    schema(%{
      clockin_location_id: spec(is_binary()),
      clockin_time: spec(is_binary()),
      clockout_location_id: spec(is_binary()),
      clockout_time: spec(is_binary()),
      created_at: spec(is_binary()),
      deleted: spec(is_boolean()),
      doubletime_seconds_worked: spec(is_number()),
      employee_id: spec(is_binary()),
      id: spec(is_binary()),
      overtime_seconds_worked: spec(is_number()),
      regular_seconds_worked: spec(is_number()),
      updated_at: spec(is_binary())
    })
    |> selection([:employee_id])
  end

  def weekday do
    spec(is_binary())
  end

  def v1_list_categories_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_category/0)))})
    |> selection([])
  end

  def shift_sort do
    schema(%{field: spec(is_binary()), order: spec(is_binary())})
    |> selection([])
  end

  def terminal_checkout_query_sort do
    schema(%{sort_order: spec(is_binary())})
    |> selection([])
  end

  def order_fulfillment_updated_update do
    schema(%{
      fulfillment_uid: spec(is_binary()),
      new_state: spec(is_binary()),
      old_state: spec(is_binary())
    })
    |> selection([])
  end

  def v1_delete_page_cell_request do
    schema(%{column: spec(is_binary()), row: spec(is_binary())})
    |> selection([])
  end

  def update_customer_request do
    schema(%{
      address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      birthday: spec(is_binary()),
      company_name: spec(is_binary()),
      email_address: spec(is_binary()),
      family_name: spec(is_binary()),
      given_name: spec(is_binary()),
      nickname: spec(is_binary()),
      note: spec(is_binary()),
      phone_number: spec(is_binary()),
      reference_id: spec(is_binary())
    })
    |> selection([])
  end

  def catalog_object_batch do
    schema(%{
      objects: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)))
    })
    |> selection([:objects])
  end

  def v1_create_discount_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_discount/0)})
    |> selection([])
  end

  def order_state do
    spec(is_binary())
  end

  def update_invoice_request do
    schema(%{
      fields_to_clear: spec(coll_of(spec(is_binary()))),
      idempotency_key: spec(is_binary()),
      invoice: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)
    })
    |> selection([:invoice])
  end

  def merchant do
    schema(%{
      business_name: spec(is_binary()),
      country: spec(is_binary()),
      currency: spec(is_binary()),
      id: spec(is_binary()),
      language_code: spec(is_binary()),
      main_location_id: spec(is_binary()),
      status: spec(is_binary())
    })
    |> selection([:country])
  end

  def v1_create_variation_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_variation/0)})
    |> selection([])
  end

  def product_type do
    spec(is_binary())
  end

  def submit_evidence_response do
    schema(%{
      dispute: Norm.Delegate.delegate(&SquareUp.NormSchema.dispute/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def tender_card_details_status do
    spec(is_binary())
  end

  def invoice_request_type do
    spec(is_binary())
  end

  def order_line_item_applied_tax do
    schema(%{
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      tax_uid: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([:tax_uid])
  end

  def order_line_item_modifier do
    schema(%{
      base_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      catalog_object_id: spec(is_binary()),
      name: spec(is_binary()),
      total_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def v1_payment_tax_inclusion_type do
    spec(is_binary())
  end

  def tender_bank_transfer_details do
    schema(%{status: spec(is_binary())})
    |> selection([])
  end

  def v1_item_type do
    spec(is_binary())
  end

  def v1_update_category_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_category/0)})
    |> selection([:body])
  end

  def retrieve_merchant_request do
    schema(%{})
    |> selection([])
  end

  def create_team_member_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      team_member: Norm.Delegate.delegate(&SquareUp.NormSchema.team_member/0)
    })
    |> selection([])
  end

  def update_workweek_config_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      workweek_config: Norm.Delegate.delegate(&SquareUp.NormSchema.workweek_config/0)
    })
    |> selection([])
  end

  def retrieve_loyalty_reward_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      reward: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_reward/0)
    })
    |> selection([])
  end

  def adjust_loyalty_points_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      event: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event/0)
    })
    |> selection([])
  end

  def catalog_item do
    schema(%{
      abbreviation: spec(is_binary()),
      available_electronically: spec(is_boolean()),
      available_for_pickup: spec(is_boolean()),
      available_online: spec(is_boolean()),
      category_id: spec(is_binary()),
      description: spec(is_binary()),
      item_options:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_item_option_for_item/0))),
      label_color: spec(is_binary()),
      modifier_list_info:
        spec(
          coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_item_modifier_list_info/0))
        ),
      name: spec(is_binary()),
      product_type: spec(is_binary()),
      skip_modifier_screen: spec(is_boolean()),
      tax_ids: spec(coll_of(spec(is_binary()))),
      variations: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)))
    })
    |> selection([])
  end

  def customer_filter do
    schema(%{
      created_at: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0),
      creation_source:
        Norm.Delegate.delegate(&SquareUp.NormSchema.customer_creation_source_filter/0),
      email_address: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_text_filter/0),
      group_ids: Norm.Delegate.delegate(&SquareUp.NormSchema.filter_value/0),
      phone_number: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_text_filter/0),
      reference_id: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_text_filter/0),
      updated_at: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0)
    })
    |> selection([])
  end

  def batch_delete_catalog_objects_response do
    schema(%{
      deleted_at: spec(is_binary()),
      deleted_object_ids: spec(coll_of(spec(is_binary()))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def list_payment_refunds_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      refunds: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.payment_refund/0)))
    })
    |> selection([])
  end

  def batch_retrieve_orders_request do
    schema(%{location_id: spec(is_binary()), order_ids: spec(coll_of(spec(is_binary())))})
    |> selection([:order_ids])
  end

  def retrieve_location_request do
    schema(%{})
    |> selection([])
  end

  def dispute do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      brand_dispute_id: spec(is_binary()),
      card_brand: spec(is_binary()),
      created_at: spec(is_binary()),
      dispute_id: spec(is_binary()),
      disputed_payment: Norm.Delegate.delegate(&SquareUp.NormSchema.disputed_payment/0),
      due_at: spec(is_binary()),
      evidence_ids: spec(coll_of(spec(is_binary()))),
      location_id: spec(is_binary()),
      reason: spec(is_binary()),
      reported_date: spec(is_binary()),
      state: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([])
  end

  def invoice_filter do
    schema(%{
      customer_ids: spec(coll_of(spec(is_binary()))),
      location_ids: spec(coll_of(spec(is_binary())))
    })
    |> selection([:location_ids])
  end

  def v1_employee_role_permissions do
    spec(is_binary())
  end

  def v1_create_page_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_page/0)})
    |> selection([])
  end

  def order do
    schema(%{
      closed_at: spec(is_binary()),
      created_at: spec(is_binary()),
      customer_id: spec(is_binary()),
      discounts:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_discount/0))),
      fulfillments:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_fulfillment/0))),
      id: spec(is_binary()),
      line_items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item/0))),
      location_id: spec(is_binary()),
      metadata: schema(%{}),
      net_amounts: Norm.Delegate.delegate(&SquareUp.NormSchema.order_money_amounts/0),
      pricing_options: Norm.Delegate.delegate(&SquareUp.NormSchema.order_pricing_options/0),
      reference_id: spec(is_binary()),
      refunds: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.refund/0))),
      return_amounts: Norm.Delegate.delegate(&SquareUp.NormSchema.order_money_amounts/0),
      returns: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_return/0))),
      rewards: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_reward/0))),
      rounding_adjustment:
        Norm.Delegate.delegate(&SquareUp.NormSchema.order_rounding_adjustment/0),
      service_charges:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_service_charge/0))),
      source: Norm.Delegate.delegate(&SquareUp.NormSchema.order_source/0),
      state: spec(is_binary()),
      taxes: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_tax/0))),
      tenders: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.tender/0))),
      total_discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_service_charge_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_tip_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([:location_id])
  end

  def measurement_unit do
    schema(%{
      area_unit: spec(is_binary()),
      custom_unit: Norm.Delegate.delegate(&SquareUp.NormSchema.measurement_unit_custom/0),
      generic_unit: spec(is_binary()),
      length_unit: spec(is_binary()),
      time_unit: spec(is_binary()),
      type: spec(is_binary()),
      volume_unit: spec(is_binary()),
      weight_unit: spec(is_binary())
    })
    |> selection([])
  end

  def loyalty_event_adjust_points do
    schema(%{
      loyalty_program_id: spec(is_binary()),
      points: spec(is_integer()),
      reason: spec(is_binary())
    })
    |> selection([:points])
  end

  def catalog_discount_modify_tax_basis do
    spec(is_binary())
  end

  def search_team_members_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.search_team_members_query/0)
    })
    |> selection([])
  end

  def catalog_custom_attribute_definition_app_visibility do
    spec(is_binary())
  end

  def list_loyalty_programs_request do
    schema(%{})
    |> selection([])
  end

  def loyalty_event_type do
    spec(is_binary())
  end

  def update_shift_request do
    schema(%{shift: Norm.Delegate.delegate(&SquareUp.NormSchema.shift/0)})
    |> selection([:shift])
  end

  def catalog_item_product_type do
    spec(is_binary())
  end

  def catalog_quick_amount_type do
    spec(is_binary())
  end

  def pay_order_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.order/0)
    })
    |> selection([])
  end

  def team_member_assigned_locations_assignment_type do
    spec(is_binary())
  end

  def v1_payment_item_detail do
    schema(%{
      category_name: spec(is_binary()),
      item_id: spec(is_binary()),
      item_variation_id: spec(is_binary()),
      sku: spec(is_binary())
    })
    |> selection([])
  end

  def v1_item do
    schema(%{
      abbreviation: spec(is_binary()),
      available_for_pickup: spec(is_boolean()),
      available_online: spec(is_boolean()),
      category: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_category/0),
      category_id: spec(is_binary()),
      color: spec(is_binary()),
      description: spec(is_binary()),
      fees: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_fee/0))),
      id: spec(is_binary()),
      master_image: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_item_image/0),
      modifier_lists:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_modifier_list/0))),
      name: spec(is_binary()),
      taxable: spec(is_boolean()),
      type: spec(is_binary()),
      v2_id: spec(is_binary()),
      variations: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_variation/0))),
      visibility: spec(is_binary())
    })
    |> selection([])
  end

  def update_break_type_request do
    schema(%{break_type: Norm.Delegate.delegate(&SquareUp.NormSchema.break_type/0)})
    |> selection([:break_type])
  end

  def create_order_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.order/0)
    })
    |> selection([])
  end

  def v1_remove_modifier_list_request do
    schema(%{})
    |> selection([])
  end

  def v1_settlement_status do
    spec(is_binary())
  end

  def search_orders_filter do
    schema(%{
      customer_filter:
        Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_customer_filter/0),
      date_time_filter:
        Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_date_time_filter/0),
      fulfillment_filter:
        Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_fulfillment_filter/0),
      source_filter: Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_source_filter/0),
      state_filter: Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_state_filter/0)
    })
    |> selection([])
  end

  def delete_break_type_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def order_line_item_tax do
    schema(%{
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      catalog_object_id: spec(is_binary()),
      metadata: schema(%{}),
      name: spec(is_binary()),
      percentage: spec(is_binary()),
      scope: spec(is_binary()),
      type: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def v1_delete_discount_request do
    schema(%{})
    |> selection([])
  end

  def get_break_type_request do
    schema(%{})
    |> selection([])
  end

  def customer_creation_source do
    spec(is_binary())
  end

  def checkout do
    schema(%{
      additional_recipients:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.additional_recipient/0))),
      ask_for_shipping_address: spec(is_boolean()),
      checkout_page_url: spec(is_binary()),
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      merchant_support_email: spec(is_binary()),
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.order/0),
      pre_populate_buyer_email: spec(is_binary()),
      pre_populate_shipping_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      redirect_url: spec(is_binary())
    })
    |> selection([])
  end

  def catalog_custom_attribute_definition_string_config do
    schema(%{enforce_uniqueness: spec(is_boolean())})
    |> selection([])
  end

  def cancel_payment_request do
    schema(%{})
    |> selection([])
  end

  def v1_retrieve_order_request do
    schema(%{})
    |> selection([])
  end

  def remove_group_from_customer_request do
    schema(%{})
    |> selection([])
  end

  def retrieve_customer_request do
    schema(%{})
    |> selection([])
  end

  def update_order_request do
    schema(%{
      fields_to_clear: spec(coll_of(spec(is_binary()))),
      idempotency_key: spec(is_binary()),
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.order/0)
    })
    |> selection([])
  end

  def list_locations_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      locations: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.location/0)))
    })
    |> selection([])
  end

  def catalog_query_item_variations_for_item_option_values do
    schema(%{item_option_value_ids: spec(coll_of(spec(is_binary())))})
    |> selection([])
  end

  def v1_page_cell_placeholder_type do
    spec(is_binary())
  end

  def complete_payment_request do
    schema(%{})
    |> selection([])
  end

  def cancel_subscription_request do
    schema(%{})
    |> selection([])
  end

  def batch_upsert_catalog_objects_request do
    schema(%{
      batches: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object_batch/0))),
      idempotency_key: spec(is_binary())
    })
    |> selection([:idempotency_key, :batches])
  end

  def location do
    schema(%{
      address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      business_email: spec(is_binary()),
      business_hours: Norm.Delegate.delegate(&SquareUp.NormSchema.business_hours/0),
      business_name: spec(is_binary()),
      capabilities: spec(coll_of(spec(is_binary()))),
      coordinates: Norm.Delegate.delegate(&SquareUp.NormSchema.coordinates/0),
      country: spec(is_binary()),
      created_at: spec(is_binary()),
      currency: spec(is_binary()),
      description: spec(is_binary()),
      facebook_url: spec(is_binary()),
      id: spec(is_binary()),
      instagram_username: spec(is_binary()),
      language_code: spec(is_binary()),
      logo_url: spec(is_binary()),
      mcc: spec(is_binary()),
      merchant_id: spec(is_binary()),
      name: spec(is_binary()),
      phone_number: spec(is_binary()),
      pos_background_url: spec(is_binary()),
      status: spec(is_binary()),
      timezone: spec(is_binary()),
      twitter_username: spec(is_binary()),
      type: spec(is_binary()),
      website_url: spec(is_binary())
    })
    |> selection([])
  end

  def inventory_change do
    schema(%{
      adjustment: Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_adjustment/0),
      physical_count: Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_physical_count/0),
      transfer: Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_transfer/0),
      type: spec(is_binary())
    })
    |> selection([])
  end

  def ecom_visibility do
    spec(is_binary())
  end

  def loyalty_event_location_filter do
    schema(%{location_ids: spec(coll_of(spec(is_binary())))})
    |> selection([:location_ids])
  end

  def invoice_request_method do
    spec(is_binary())
  end

  def v1_update_order_request_action do
    spec(is_binary())
  end

  def publish_invoice_request do
    schema(%{idempotency_key: spec(is_binary()), version: spec(is_integer())})
    |> selection([:version])
  end

  def cancel_payment_by_idempotency_key_request do
    schema(%{idempotency_key: spec(is_binary())})
    |> selection([:idempotency_key])
  end

  def search_invoices_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice_query/0)
    })
    |> selection([:query])
  end

  def catalog_item_option_for_item do
    schema(%{item_option_id: spec(is_binary())})
    |> selection([])
  end

  def invoice_query do
    schema(%{
      filter: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice_filter/0),
      sort: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice_sort/0)
    })
    |> selection([:filter])
  end

  def catalog_item_variation do
    schema(%{
      inventory_alert_threshold: spec(is_integer()),
      inventory_alert_type: spec(is_binary()),
      item_id: spec(is_binary()),
      item_option_values:
        spec(
          coll_of(
            Norm.Delegate.delegate(
              &SquareUp.NormSchema.catalog_item_option_value_for_item_variation/0
            )
          )
        ),
      location_overrides:
        spec(
          coll_of(
            Norm.Delegate.delegate(&SquareUp.NormSchema.item_variation_location_overrides/0)
          )
        ),
      measurement_unit_id: spec(is_binary()),
      name: spec(is_binary()),
      ordinal: spec(is_integer()),
      price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      pricing_type: spec(is_binary()),
      service_duration: spec(is_integer()),
      sku: spec(is_binary()),
      track_inventory: spec(is_boolean()),
      upc: spec(is_binary()),
      user_data: spec(is_binary())
    })
    |> selection([])
  end

  def upsert_catalog_object_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      object: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)
    })
    |> selection([:idempotency_key, :object])
  end

  def break_type do
    schema(%{
      break_name: spec(is_binary()),
      created_at: spec(is_binary()),
      expected_duration: spec(is_binary()),
      id: spec(is_binary()),
      is_paid: spec(is_boolean()),
      location_id: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([:location_id, :break_name, :expected_duration, :is_paid])
  end

  def v1_delete_fee_request do
    schema(%{})
    |> selection([])
  end

  def create_terminal_checkout_response do
    schema(%{
      checkout: Norm.Delegate.delegate(&SquareUp.NormSchema.terminal_checkout/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def capture_transaction_request do
    schema(%{})
    |> selection([])
  end

  def subscription_event do
    schema(%{
      effective_date: spec(is_binary()),
      id: spec(is_binary()),
      plan_id: spec(is_binary()),
      subscription_event_type: spec(is_binary())
    })
    |> selection([:id, :subscription_event_type, :effective_date, :plan_id])
  end

  def v1_bank_account_type do
    spec(is_binary())
  end

  def catalog_info_response_limits do
    schema(%{
      batch_delete_max_object_ids: spec(is_integer()),
      batch_retrieve_max_object_ids: spec(is_integer()),
      batch_upsert_max_objects_per_batch: spec(is_integer()),
      batch_upsert_max_total_objects: spec(is_integer()),
      search_max_page_limit: spec(is_integer()),
      update_item_modifier_lists_max_item_ids: spec(is_integer()),
      update_item_modifier_lists_max_modifier_lists_to_disable: spec(is_integer()),
      update_item_modifier_lists_max_modifier_lists_to_enable: spec(is_integer()),
      update_item_taxes_max_item_ids: spec(is_integer()),
      update_item_taxes_max_taxes_to_disable: spec(is_integer()),
      update_item_taxes_max_taxes_to_enable: spec(is_integer())
    })
    |> selection([])
  end

  def retrieve_dispute_evidence_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      evidence: Norm.Delegate.delegate(&SquareUp.NormSchema.dispute_evidence/0)
    })
    |> selection([])
  end

  def loyalty_program_terminology do
    schema(%{one: spec(is_binary()), other: spec(is_binary())})
    |> selection([:one, :other])
  end

  def catalog_measurement_unit do
    schema(%{
      measurement_unit: Norm.Delegate.delegate(&SquareUp.NormSchema.measurement_unit/0),
      precision: spec(is_integer())
    })
    |> selection([])
  end

  def subscription_status do
    spec(is_binary())
  end

  def v1_modifier_list_selection_type do
    spec(is_binary())
  end

  def order_return_line_item do
    schema(%{
      applied_discounts:
        spec(
          coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_applied_discount/0))
        ),
      applied_taxes:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_applied_tax/0))),
      base_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      catalog_object_id: spec(is_binary()),
      gross_return_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      name: spec(is_binary()),
      note: spec(is_binary()),
      quantity: spec(is_binary()),
      quantity_unit: Norm.Delegate.delegate(&SquareUp.NormSchema.order_quantity_unit/0),
      return_modifiers:
        spec(
          coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_return_line_item_modifier/0))
        ),
      source_line_item_uid: spec(is_binary()),
      total_discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      uid: spec(is_binary()),
      variation_name: spec(is_binary()),
      variation_total_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0)
    })
    |> selection([:quantity])
  end

  def cancel_terminal_checkout_request do
    schema(%{})
    |> selection([])
  end

  def loyalty_program_reward_definition do
    schema(%{
      catalog_object_ids: spec(coll_of(spec(is_binary()))),
      discount_type: spec(is_binary()),
      fixed_discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      max_discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      percentage_discount: spec(is_binary()),
      scope: spec(is_binary())
    })
    |> selection([:scope, :discount_type])
  end

  def charge_request_additional_recipient do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      description: spec(is_binary()),
      location_id: spec(is_binary())
    })
    |> selection([:location_id, :description, :amount_money])
  end

  def catalog_query_items_for_modifier_list do
    schema(%{modifier_list_ids: spec(coll_of(spec(is_binary())))})
    |> selection([:modifier_list_ids])
  end

  def v1_list_timecard_events_response do
    schema(%{
      items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_timecard_event/0)))
    })
    |> selection([])
  end

  def v1_retrieve_settlement_request do
    schema(%{})
    |> selection([])
  end

  def v1_delete_timecard_request do
    schema(%{})
    |> selection([])
  end

  def list_catalog_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      objects: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)))
    })
    |> selection([])
  end

  def list_customers_response do
    schema(%{
      cursor: spec(is_binary()),
      customers: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.customer/0))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def range do
    schema(%{max: spec(is_binary()), min: spec(is_binary())})
    |> selection([])
  end

  def shift_filter_status do
    spec(is_binary())
  end

  def list_transactions_request do
    schema(%{
      begin_time: spec(is_binary()),
      cursor: spec(is_binary()),
      end_time: spec(is_binary()),
      sort_order: spec(is_binary())
    })
    |> selection([])
  end

  def update_customer_response do
    schema(%{
      customer: Norm.Delegate.delegate(&SquareUp.NormSchema.customer/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def v1_list_fees_request do
    schema(%{})
    |> selection([])
  end

  def update_subscription_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      subscription: Norm.Delegate.delegate(&SquareUp.NormSchema.subscription/0)
    })
    |> selection([])
  end

  def catalog_discount do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      discount_type: spec(is_binary()),
      label_color: spec(is_binary()),
      modify_tax_basis: spec(is_binary()),
      name: spec(is_binary()),
      percentage: spec(is_binary()),
      pin_required: spec(is_boolean())
    })
    |> selection([])
  end

  def v1_apply_modifier_list_request do
    schema(%{})
    |> selection([])
  end

  def retrieve_inventory_changes_response do
    schema(%{
      changes: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_change/0))),
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def subscription do
    schema(%{
      canceled_date: spec(is_binary()),
      card_id: spec(is_binary()),
      created_at: spec(is_binary()),
      customer_id: spec(is_binary()),
      id: spec(is_binary()),
      invoice_ids: spec(coll_of(spec(is_binary()))),
      location_id: spec(is_binary()),
      paid_until_date: spec(is_binary()),
      plan_id: spec(is_binary()),
      price_override_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      start_date: spec(is_binary()),
      status: spec(is_binary()),
      tax_percentage: spec(is_binary()),
      timezone: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([])
  end

  def get_invoice_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      invoice: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)
    })
    |> selection([])
  end

  def loyalty_event_other do
    schema(%{loyalty_program_id: spec(is_binary()), points: spec(is_integer())})
    |> selection([:loyalty_program_id, :points])
  end

  def inventory_count do
    schema(%{
      calculated_at: spec(is_binary()),
      catalog_object_id: spec(is_binary()),
      catalog_object_type: spec(is_binary()),
      location_id: spec(is_binary()),
      quantity: spec(is_binary()),
      state: spec(is_binary())
    })
    |> selection([])
  end

  def pay_order_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      order_version: spec(is_integer()),
      payment_ids: spec(coll_of(spec(is_binary())))
    })
    |> selection([:idempotency_key])
  end

  def retrieve_loyalty_account_request do
    schema(%{})
    |> selection([])
  end

  def catalog_product_set do
    schema(%{
      all_products: spec(is_boolean()),
      name: spec(is_binary()),
      product_ids_all: spec(coll_of(spec(is_binary()))),
      product_ids_any: spec(coll_of(spec(is_binary()))),
      quantity_exact: spec(is_integer()),
      quantity_max: spec(is_integer()),
      quantity_min: spec(is_integer())
    })
    |> selection([])
  end

  def list_device_codes_request do
    schema(%{
      cursor: spec(is_binary()),
      location_id: spec(is_binary()),
      product_type: spec(is_binary())
    })
    |> selection([])
  end

  def shift_filter do
    schema(%{
      employee_ids: spec(coll_of(spec(is_binary()))),
      end: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0),
      location_ids: spec(coll_of(spec(is_binary()))),
      start: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0),
      status: spec(is_binary()),
      team_member_ids: spec(coll_of(spec(is_binary()))),
      workday: Norm.Delegate.delegate(&SquareUp.NormSchema.shift_workday/0)
    })
    |> selection([:location_ids, :team_member_ids])
  end

  def v1_create_item_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_item/0)})
    |> selection([])
  end

  def list_cash_drawer_shift_events_request do
    schema(%{cursor: spec(is_binary()), limit: spec(is_integer()), location_id: spec(is_binary())})
    |> selection([:location_id])
  end

  def inventory_state do
    spec(is_binary())
  end

  def update_wage_setting_request do
    schema(%{wage_setting: Norm.Delegate.delegate(&SquareUp.NormSchema.wage_setting/0)})
    |> selection([:wage_setting])
  end

  def order_fulfillment_pickup_details_curbside_pickup_details do
    schema(%{buyer_arrived_at: spec(is_binary()), curbside_details: spec(is_binary())})
    |> selection([])
  end

  def v1_list_cash_drawer_shifts_response do
    schema(%{
      items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_cash_drawer_shift/0)))
    })
    |> selection([])
  end

  def batch_upsert_catalog_objects_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      id_mappings:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_id_mapping/0))),
      objects: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0))),
      updated_at: spec(is_binary())
    })
    |> selection([])
  end

  def create_terminal_checkout_request do
    schema(%{
      checkout: Norm.Delegate.delegate(&SquareUp.NormSchema.terminal_checkout/0),
      idempotency_key: spec(is_binary())
    })
    |> selection([:idempotency_key, :checkout])
  end

  def v1_list_refunds_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_refund/0)))})
    |> selection([])
  end

  def tax_calculation_phase do
    spec(is_binary())
  end

  def v1_list_locations_request do
    schema(%{})
    |> selection([])
  end

  def shift_workday_matcher do
    spec(is_binary())
  end

  def order_updated_object do
    schema(%{order_updated: Norm.Delegate.delegate(&SquareUp.NormSchema.order_updated/0)})
    |> selection([])
  end

  def v1_discount_color do
    spec(is_binary())
  end

  def device_details do
    schema(%{device_id: spec(is_binary()), device_name: spec(is_binary())})
    |> selection([])
  end

  def loyalty_account_mapping do
    schema(%{
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      type: spec(is_binary()),
      value: spec(is_binary())
    })
    |> selection([:type, :value])
  end

  def list_merchants_response do
    schema(%{
      cursor: spec(is_integer()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      merchant: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.merchant/0)))
    })
    |> selection([])
  end

  def device_code_status do
    spec(is_binary())
  end

  def order_fulfillment_type do
    spec(is_binary())
  end

  def create_break_type_request do
    schema(%{
      break_type: Norm.Delegate.delegate(&SquareUp.NormSchema.break_type/0),
      idempotency_key: spec(is_binary())
    })
    |> selection([:break_type])
  end

  def update_break_type_response do
    schema(%{
      break_type: Norm.Delegate.delegate(&SquareUp.NormSchema.break_type/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def order_fulfillment_recipient do
    schema(%{
      address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      customer_id: spec(is_binary()),
      display_name: spec(is_binary()),
      email_address: spec(is_binary()),
      phone_number: spec(is_binary())
    })
    |> selection([])
  end

  def refund_status do
    spec(is_binary())
  end

  def delete_loyalty_reward_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def loyalty_program_reward_tier do
    schema(%{
      created_at: spec(is_binary()),
      definition:
        Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_program_reward_definition/0),
      id: spec(is_binary()),
      name: spec(is_binary()),
      points: spec(is_integer())
    })
    |> selection([:id, :points, :name, :definition, :created_at])
  end

  def order_line_item_tax_type do
    spec(is_binary())
  end

  def order_fulfillment_updated do
    schema(%{
      created_at: spec(is_binary()),
      fulfillment_update:
        spec(
          coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_fulfillment_updated_update/0))
        ),
      location_id: spec(is_binary()),
      order_id: spec(is_binary()),
      state: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([])
  end

  def balance_payment_details do
    schema(%{account_id: spec(is_binary()), status: spec(is_binary())})
    |> selection([])
  end

  def v1_employee_status do
    spec(is_binary())
  end

  def create_customer_group_request do
    schema(%{
      group: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_group/0),
      idempotency_key: spec(is_binary())
    })
    |> selection([:group])
  end

  def catalog_query do
    schema(%{
      exact_query: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query_exact/0),
      item_variations_for_item_option_values_query:
        Norm.Delegate.delegate(
          &SquareUp.NormSchema.catalog_query_item_variations_for_item_option_values/0
        ),
      items_for_item_options_query:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query_items_for_item_options/0),
      items_for_modifier_list_query:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query_items_for_modifier_list/0),
      items_for_tax_query:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query_items_for_tax/0),
      prefix_query: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query_prefix/0),
      range_query: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query_range/0),
      sorted_attribute_query:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query_sorted_attribute/0),
      text_query: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_query_text/0)
    })
    |> selection([])
  end

  def v1_payment_modifier do
    schema(%{
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      modifier_option_id: spec(is_binary()),
      name: spec(is_binary())
    })
    |> selection([])
  end

  def payment_options do
    schema(%{autocomplete: spec(is_boolean())})
    |> selection([])
  end

  def v1_update_fee_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_fee/0)})
    |> selection([:body])
  end

  def catalog_pricing_rule do
    schema(%{
      apply_products_id: spec(is_binary()),
      discount_id: spec(is_binary()),
      exclude_products_id: spec(is_binary()),
      exclude_strategy: spec(is_binary()),
      match_products_id: spec(is_binary()),
      name: spec(is_binary()),
      time_period_ids: spec(coll_of(spec(is_binary()))),
      valid_from_date: spec(is_binary()),
      valid_from_local_time: spec(is_binary()),
      valid_until_date: spec(is_binary()),
      valid_until_local_time: spec(is_binary())
    })
    |> selection([])
  end

  def search_catalog_objects_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      latest_time: spec(is_binary()),
      objects: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0))),
      related_objects:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)))
    })
    |> selection([])
  end

  def search_loyalty_accounts_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query:
        Norm.Delegate.delegate(
          &SquareUp.NormSchema.search_loyalty_accounts_request_loyalty_account_query/0
        )
    })
    |> selection([])
  end

  def batch_change_inventory_response do
    schema(%{
      counts: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_count/0))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def search_orders_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      location_ids: spec(coll_of(spec(is_binary()))),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_query/0),
      return_entries: spec(is_boolean())
    })
    |> selection([])
  end

  def get_team_member_wage_request do
    schema(%{})
    |> selection([])
  end

  def product do
    spec(is_binary())
  end

  def retrieve_dispute_evidence_request do
    schema(%{})
    |> selection([])
  end

  def search_subscriptions_query do
    schema(%{filter: Norm.Delegate.delegate(&SquareUp.NormSchema.search_subscriptions_filter/0)})
    |> selection([])
  end

  def merchant_status do
    spec(is_binary())
  end

  def country do
    spec(is_binary())
  end

  def team_member_status do
    spec(is_binary())
  end

  def create_refund_request do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      idempotency_key: spec(is_binary()),
      reason: spec(is_binary()),
      tender_id: spec(is_binary())
    })
    |> selection([:idempotency_key, :tender_id, :amount_money])
  end

  def search_terminal_checkouts_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.terminal_checkout_query/0)
    })
    |> selection([])
  end

  def inventory_change_type do
    spec(is_binary())
  end

  def date_range do
    schema(%{end_date: spec(is_binary()), start_date: spec(is_binary())})
    |> selection([])
  end

  def list_invoices_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      invoices: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)))
    })
    |> selection([])
  end

  def create_loyalty_reward_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      reward: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_reward/0)
    })
    |> selection([])
  end

  def create_catalog_image_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      image: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0),
      object_id: spec(is_binary())
    })
    |> selection([:idempotency_key])
  end

  def v1_list_payments_request do
    schema(%{
      batch_token: spec(is_binary()),
      begin_time: spec(is_binary()),
      end_time: spec(is_binary()),
      include_partial: spec(is_boolean()),
      limit: spec(is_integer()),
      order: spec(is_binary())
    })
    |> selection([])
  end

  def create_mobile_authorization_code_request do
    schema(%{location_id: spec(is_binary())})
    |> selection([])
  end

  def catalog_modifier do
    schema(%{
      modifier_list_id: spec(is_binary()),
      name: spec(is_binary()),
      ordinal: spec(is_integer()),
      price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0)
    })
    |> selection([])
  end

  def order_return_discount do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      catalog_object_id: spec(is_binary()),
      name: spec(is_binary()),
      percentage: spec(is_binary()),
      scope: spec(is_binary()),
      source_discount_uid: spec(is_binary()),
      type: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def retrieve_dispute_request do
    schema(%{})
    |> selection([])
  end

  def list_customer_groups_request do
    schema(%{cursor: spec(is_binary())})
    |> selection([])
  end

  def v1_order_history_entry do
    schema(%{action: spec(is_binary()), created_at: spec(is_binary())})
    |> selection([])
  end

  def search_orders_query do
    schema(%{
      filter: Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_filter/0),
      sort: Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_sort/0)
    })
    |> selection([])
  end

  def void_transaction_request do
    schema(%{})
    |> selection([])
  end

  def bank_account_type do
    spec(is_binary())
  end

  def order_money_amounts do
    schema(%{
      discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      service_charge_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      tip_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0)
    })
    |> selection([])
  end

  def list_customer_segments_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      segments: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.customer_segment/0)))
    })
    |> selection([])
  end

  def bank_account_status do
    spec(is_binary())
  end

  def measurement_unit_weight do
    spec(is_binary())
  end

  def retrieve_team_member_request do
    schema(%{})
    |> selection([])
  end

  def retrieve_loyalty_reward_request do
    schema(%{})
    |> selection([])
  end

  def catalog_subscription_plan do
    schema(%{
      name: spec(is_binary()),
      phases: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.subscription_phase/0)))
    })
    |> selection([])
  end

  def loyalty_program_accrual_rule do
    schema(%{
      accrual_type: spec(is_binary()),
      catalog_object_id: spec(is_binary()),
      points: spec(is_integer()),
      spend_amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      visit_minimum_amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0)
    })
    |> selection([:accrual_type])
  end

  def v1_order do
    schema(%{
      btc_price_satoshi: spec(is_number()),
      btc_receive_address: spec(is_binary()),
      buyer_email: spec(is_binary()),
      buyer_note: spec(is_binary()),
      canceled_note: spec(is_binary()),
      completed_note: spec(is_binary()),
      created_at: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      expires_at: spec(is_binary()),
      id: spec(is_binary()),
      order_history:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_order_history_entry/0))),
      payment_id: spec(is_binary()),
      promo_code: spec(is_binary()),
      recipient_name: spec(is_binary()),
      recipient_phone_number: spec(is_binary()),
      refunded_note: spec(is_binary()),
      shipping_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      state: spec(is_binary()),
      subtotal_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      tender: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_tender/0),
      total_discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      total_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      total_shipping_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      total_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      updated_at: spec(is_binary())
    })
    |> selection([])
  end

  def loyalty_event_loyalty_account_filter do
    schema(%{loyalty_account_id: spec(is_binary())})
    |> selection([:loyalty_account_id])
  end

  def v1_delete_page_request do
    schema(%{})
    |> selection([])
  end

  def v1_page_cell do
    schema(%{
      column: spec(is_integer()),
      object_id: spec(is_binary()),
      object_type: spec(is_binary()),
      page_id: spec(is_binary()),
      placeholder_type: spec(is_binary()),
      row: spec(is_integer())
    })
    |> selection([])
  end

  def catalog_item_option_value_for_item_variation do
    schema(%{item_option_id: spec(is_binary()), item_option_value_id: spec(is_binary())})
    |> selection([])
  end

  def v1_modifier_option do
    schema(%{
      id: spec(is_binary()),
      modifier_list_id: spec(is_binary()),
      name: spec(is_binary()),
      on_by_default: spec(is_boolean()),
      ordinal: spec(is_integer()),
      price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      v2_id: spec(is_binary())
    })
    |> selection([])
  end

  def search_loyalty_events_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event_query/0)
    })
    |> selection([])
  end

  def v1_list_pages_request do
    schema(%{})
    |> selection([])
  end

  def catalog_item_option_value do
    schema(%{
      color: spec(is_binary()),
      description: spec(is_binary()),
      item_option_id: spec(is_binary()),
      item_variation_count: spec(is_integer()),
      name: spec(is_binary()),
      ordinal: spec(is_integer())
    })
    |> selection([])
  end

  def v1_list_inventory_response do
    schema(%{
      items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_inventory_entry/0)))
    })
    |> selection([])
  end

  def create_subscription_request do
    schema(%{
      canceled_date: spec(is_binary()),
      card_id: spec(is_binary()),
      customer_id: spec(is_binary()),
      idempotency_key: spec(is_binary()),
      location_id: spec(is_binary()),
      plan_id: spec(is_binary()),
      price_override_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      start_date: spec(is_binary()),
      tax_percentage: spec(is_binary()),
      timezone: spec(is_binary())
    })
    |> selection([:idempotency_key, :location_id, :plan_id, :customer_id])
  end

  def catalog_modifier_list_selection_type do
    spec(is_binary())
  end

  def delete_loyalty_reward_request do
    schema(%{})
    |> selection([])
  end

  def delete_customer_group_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def create_dispute_evidence_file_request do
    schema(%{
      content_type: spec(is_binary()),
      evidence_type: spec(is_binary()),
      idempotency_key: spec(is_binary())
    })
    |> selection([:idempotency_key])
  end

  def obtain_token_request do
    schema(%{
      client_id: spec(is_binary()),
      client_secret: spec(is_binary()),
      code: spec(is_binary()),
      grant_type: spec(is_binary()),
      migration_token: spec(is_binary()),
      redirect_uri: spec(is_binary()),
      refresh_token: spec(is_binary())
    })
    |> selection([:client_id, :client_secret, :grant_type])
  end

  def customer_sort_field do
    spec(is_binary())
  end

  def loyalty_event_delete_reward do
    schema(%{
      loyalty_program_id: spec(is_binary()),
      points: spec(is_integer()),
      reward_id: spec(is_binary())
    })
    |> selection([:loyalty_program_id, :points])
  end

  def submit_evidence_request do
    schema(%{})
    |> selection([])
  end

  def shift_workday do
    schema(%{
      date_range: Norm.Delegate.delegate(&SquareUp.NormSchema.date_range/0),
      default_timezone: spec(is_binary()),
      match_shifts_by: spec(is_binary())
    })
    |> selection([])
  end

  def shift do
    schema(%{
      breaks: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.break/0))),
      created_at: spec(is_binary()),
      employee_id: spec(is_binary()),
      end_at: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      start_at: spec(is_binary()),
      status: spec(is_binary()),
      team_member_id: spec(is_binary()),
      timezone: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer()),
      wage: Norm.Delegate.delegate(&SquareUp.NormSchema.shift_wage/0)
    })
    |> selection([:start_at])
  end

  def card_prepaid_type do
    spec(is_binary())
  end

  def list_cash_drawer_shifts_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      items:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.cash_drawer_shift_summary/0)))
    })
    |> selection([])
  end

  def v1_fee_adjustment_type do
    spec(is_binary())
  end

  def v1_list_modifier_lists_response do
    schema(%{
      items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_modifier_list/0)))
    })
    |> selection([])
  end

  def retrieve_wage_setting_request do
    schema(%{})
    |> selection([])
  end

  def cancel_terminal_checkout_response do
    schema(%{
      checkout: Norm.Delegate.delegate(&SquareUp.NormSchema.terminal_checkout/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def list_refunds_request do
    schema(%{
      begin_time: spec(is_binary()),
      cursor: spec(is_binary()),
      end_time: spec(is_binary()),
      sort_order: spec(is_binary())
    })
    |> selection([])
  end

  def order_pricing_options do
    schema(%{auto_apply_discounts: spec(is_boolean())})
    |> selection([])
  end

  def v1_refund_type do
    spec(is_binary())
  end

  def tender_card_details do
    schema(%{
      card: Norm.Delegate.delegate(&SquareUp.NormSchema.card/0),
      entry_method: spec(is_binary()),
      status: spec(is_binary())
    })
    |> selection([])
  end

  def get_employee_wage_response do
    schema(%{
      employee_wage: Norm.Delegate.delegate(&SquareUp.NormSchema.employee_wage/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def catalog_modifier_override do
    schema(%{modifier_id: spec(is_binary()), on_by_default: spec(is_boolean())})
    |> selection([:modifier_id])
  end

  def v1_update_employee_role_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee_role/0)})
    |> selection([:body])
  end

  def delete_customer_card_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def address do
    schema(%{
      address_line_1: spec(is_binary()),
      address_line_2: spec(is_binary()),
      address_line_3: spec(is_binary()),
      administrative_district_level_1: spec(is_binary()),
      administrative_district_level_2: spec(is_binary()),
      administrative_district_level_3: spec(is_binary()),
      country: spec(is_binary()),
      first_name: spec(is_binary()),
      last_name: spec(is_binary()),
      locality: spec(is_binary()),
      organization: spec(is_binary()),
      postal_code: spec(is_binary()),
      sublocality: spec(is_binary()),
      sublocality_2: spec(is_binary()),
      sublocality_3: spec(is_binary())
    })
    |> selection([])
  end

  def loyalty_event_order_filter do
    schema(%{order_id: spec(is_binary())})
    |> selection([:order_id])
  end

  def order_service_charge do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      applied_taxes:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_applied_tax/0))),
      calculation_phase: spec(is_binary()),
      catalog_object_id: spec(is_binary()),
      metadata: schema(%{}),
      name: spec(is_binary()),
      percentage: spec(is_binary()),
      taxable: spec(is_boolean()),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def get_break_type_response do
    schema(%{
      break_type: Norm.Delegate.delegate(&SquareUp.NormSchema.break_type/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def search_loyalty_accounts_request_loyalty_account_query do
    schema(%{
      mappings:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_account_mapping/0)))
    })
    |> selection([])
  end

  def create_invoice_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      invoice: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)
    })
    |> selection([])
  end

  def subscription_cadence do
    spec(is_binary())
  end

  def v1_cash_drawer_event_event_type do
    spec(is_binary())
  end

  def create_dispute_evidence_text_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      evidence: Norm.Delegate.delegate(&SquareUp.NormSchema.dispute_evidence/0)
    })
    |> selection([])
  end

  def cash_drawer_shift do
    schema(%{
      cash_paid_in_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      cash_paid_out_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      cash_payment_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      cash_refunds_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      closed_at: spec(is_binary()),
      closed_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      closing_employee_id: spec(is_binary()),
      description: spec(is_binary()),
      device: Norm.Delegate.delegate(&SquareUp.NormSchema.cash_drawer_device/0),
      employee_ids: spec(coll_of(spec(is_binary()))),
      ended_at: spec(is_binary()),
      ending_employee_id: spec(is_binary()),
      expected_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      id: spec(is_binary()),
      opened_at: spec(is_binary()),
      opened_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      opening_employee_id: spec(is_binary()),
      state: spec(is_binary())
    })
    |> selection([])
  end

  def error_code do
    spec(is_binary())
  end

  def retrieve_transaction_request do
    schema(%{})
    |> selection([])
  end

  def v1_fee_calculation_phase do
    spec(is_binary())
  end

  def search_terminal_checkouts_response do
    schema(%{
      checkouts: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.terminal_checkout/0))),
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def card_payment_details do
    schema(%{
      application_cryptogram: spec(is_binary()),
      application_identifier: spec(is_binary()),
      application_name: spec(is_binary()),
      auth_result_code: spec(is_binary()),
      avs_status: spec(is_binary()),
      card: Norm.Delegate.delegate(&SquareUp.NormSchema.card/0),
      cvv_status: spec(is_binary()),
      device_details: Norm.Delegate.delegate(&SquareUp.NormSchema.device_details/0),
      entry_method: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      refund_requires_card_presence: spec(is_boolean()),
      statement_description: spec(is_binary()),
      status: spec(is_binary()),
      verification_method: spec(is_binary()),
      verification_results: spec(is_binary())
    })
    |> selection([])
  end

  def measurement_unit_time do
    spec(is_binary())
  end

  def get_terminal_checkout_request do
    schema(%{})
    |> selection([])
  end

  def v1_tender_card_brand do
    spec(is_binary())
  end

  def catalog_object do
    schema(%{
      absent_at_location_ids: spec(coll_of(spec(is_binary()))),
      catalog_v1_ids: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_v1_id/0))),
      category_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_category/0),
      custom_attribute_definition_data:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_custom_attribute_definition/0),
      custom_attribute_values: schema(%{}),
      discount_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_discount/0),
      id: spec(is_binary()),
      image_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_image/0),
      image_id: spec(is_binary()),
      is_deleted: spec(is_boolean()),
      item_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_item/0),
      item_option_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_item_option/0),
      item_option_value_data:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_item_option_value/0),
      item_variation_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_item_variation/0),
      measurement_unit_data:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_measurement_unit/0),
      modifier_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_modifier/0),
      modifier_list_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_modifier_list/0),
      present_at_all_locations: spec(is_boolean()),
      present_at_location_ids: spec(coll_of(spec(is_binary()))),
      pricing_rule_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_pricing_rule/0),
      product_set_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_product_set/0),
      quick_amounts_settings_data:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_quick_amounts_settings/0),
      subscription_plan_data:
        Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_subscription_plan/0),
      tax_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_tax/0),
      time_period_data: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_time_period/0),
      type: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([:type, :id])
  end

  def list_cash_drawer_shift_events_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      events:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.cash_drawer_shift_event/0)))
    })
    |> selection([])
  end

  def subscription_phase do
    schema(%{
      cadence: spec(is_binary()),
      ordinal: spec(is_integer()),
      periods: spec(is_integer()),
      recurring_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      uid: spec(is_binary())
    })
    |> selection([:cadence, :recurring_price_money])
  end

  def create_loyalty_account_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      loyalty_account: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_account/0)
    })
    |> selection([])
  end

  def create_invoice_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      invoice: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)
    })
    |> selection([:invoice])
  end

  def v1_retrieve_business_request do
    schema(%{})
    |> selection([])
  end

  def v1_cash_drawer_shift do
    schema(%{
      cash_paid_in_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      cash_paid_out_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      cash_payment_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      cash_refunds_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      closed_at: spec(is_binary()),
      closed_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      closing_employee_id: spec(is_binary()),
      description: spec(is_binary()),
      device: Norm.Delegate.delegate(&SquareUp.NormSchema.device/0),
      employee_ids: spec(coll_of(spec(is_binary()))),
      ended_at: spec(is_binary()),
      ending_employee_id: spec(is_binary()),
      event_type: spec(is_binary()),
      events: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_cash_drawer_event/0))),
      expected_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      id: spec(is_binary()),
      opened_at: spec(is_binary()),
      opening_employee_id: spec(is_binary()),
      starting_cash_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0)
    })
    |> selection([])
  end

  def retrieve_inventory_changes_request do
    schema(%{cursor: spec(is_binary()), location_ids: spec(is_binary())})
    |> selection([])
  end

  def invoice_payment_reminder do
    schema(%{
      message: spec(is_binary()),
      relative_scheduled_days: spec(is_integer()),
      sent_at: spec(is_binary()),
      status: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def invoice_payment_reminder_status do
    spec(is_binary())
  end

  def search_subscriptions_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.search_subscriptions_query/0)
    })
    |> selection([])
  end

  def create_shift_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      shift: Norm.Delegate.delegate(&SquareUp.NormSchema.shift/0)
    })
    |> selection([])
  end

  def invoice do
    schema(%{
      created_at: spec(is_binary()),
      description: spec(is_binary()),
      id: spec(is_binary()),
      invoice_number: spec(is_binary()),
      location_id: spec(is_binary()),
      next_payment_amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      order_id: spec(is_binary()),
      payment_requests:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.invoice_payment_request/0))),
      primary_recipient: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice_recipient/0),
      public_url: spec(is_binary()),
      scheduled_at: spec(is_binary()),
      status: spec(is_binary()),
      timezone: spec(is_binary()),
      title: spec(is_binary()),
      updated_at: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([])
  end

  def list_subscription_events_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      subscription_events:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.subscription_event/0)))
    })
    |> selection([])
  end

  def catalog_query_items_for_tax do
    schema(%{tax_ids: spec(coll_of(spec(is_binary())))})
    |> selection([:tax_ids])
  end

  def order_fulfillment_updated_object do
    schema(%{
      order_fulfillment_updated:
        Norm.Delegate.delegate(&SquareUp.NormSchema.order_fulfillment_updated/0)
    })
    |> selection([])
  end

  def loyalty_program_accrual_rule_type do
    spec(is_binary())
  end

  def v1_refund do
    schema(%{
      created_at: spec(is_binary()),
      is_exchange: spec(is_boolean()),
      merchant_id: spec(is_binary()),
      payment_id: spec(is_binary()),
      processed_at: spec(is_binary()),
      reason: spec(is_binary()),
      refunded_additive_tax:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_tax/0))),
      refunded_additive_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      refunded_discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      refunded_inclusive_tax:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_tax/0))),
      refunded_inclusive_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      refunded_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      refunded_processing_fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      refunded_surcharge_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      refunded_surcharges:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_surcharge/0))),
      refunded_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      refunded_tip_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      type: spec(is_binary())
    })
    |> selection([])
  end

  def search_loyalty_rewards_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query:
        Norm.Delegate.delegate(
          &SquareUp.NormSchema.search_loyalty_rewards_request_loyalty_reward_query/0
        )
    })
    |> selection([])
  end

  def order_entry do
    schema(%{
      location_id: spec(is_binary()),
      order_id: spec(is_binary()),
      version: spec(is_integer())
    })
    |> selection([])
  end

  def v1_merchant do
    schema(%{
      account_capabilities: spec(coll_of(spec(is_binary()))),
      account_type: spec(is_binary()),
      business_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      business_name: spec(is_binary()),
      business_phone: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_phone_number/0),
      business_type: spec(is_binary()),
      country_code: spec(is_binary()),
      currency_code: spec(is_binary()),
      email: spec(is_binary()),
      id: spec(is_binary()),
      language_code: spec(is_binary()),
      location_details:
        Norm.Delegate.delegate(&SquareUp.NormSchema.v1_merchant_location_details/0),
      market_url: spec(is_binary()),
      name: spec(is_binary()),
      shipping_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0)
    })
    |> selection([])
  end

  def update_invoice_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      invoice: Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)
    })
    |> selection([])
  end

  def list_employees_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      location_id: spec(is_binary()),
      status: spec(is_binary())
    })
    |> selection([])
  end

  def measurement_unit_unit_type do
    spec(is_binary())
  end

  def v1_delete_timecard_response do
    schema(%{})
    |> selection([])
  end

  def list_workweek_configs_request do
    schema(%{cursor: spec(is_binary()), limit: spec(is_integer())})
    |> selection([])
  end

  def v1_payment_discount do
    schema(%{
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      discount_id: spec(is_binary()),
      name: spec(is_binary())
    })
    |> selection([])
  end

  def v1_update_timecard_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_timecard/0)})
    |> selection([:body])
  end

  def list_payments_request do
    schema(%{
      begin_time: spec(is_binary()),
      card_brand: spec(is_binary()),
      cursor: spec(is_binary()),
      end_time: spec(is_binary()),
      last_4: spec(is_binary()),
      location_id: spec(is_binary()),
      sort_order: spec(is_binary()),
      total: spec(is_integer())
    })
    |> selection([])
  end

  def order_fulfillment_state do
    spec(is_binary())
  end

  def order_fulfillment do
    schema(%{
      metadata: schema(%{}),
      pickup_details:
        Norm.Delegate.delegate(&SquareUp.NormSchema.order_fulfillment_pickup_details/0),
      shipment_details:
        Norm.Delegate.delegate(&SquareUp.NormSchema.order_fulfillment_shipment_details/0),
      state: spec(is_binary()),
      type: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def update_team_member_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      team_member: Norm.Delegate.delegate(&SquareUp.NormSchema.team_member/0)
    })
    |> selection([])
  end

  def v1_list_employees_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee/0)))})
    |> selection([])
  end

  def create_customer_request do
    schema(%{
      address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      birthday: spec(is_binary()),
      company_name: spec(is_binary()),
      email_address: spec(is_binary()),
      family_name: spec(is_binary()),
      given_name: spec(is_binary()),
      idempotency_key: spec(is_binary()),
      nickname: spec(is_binary()),
      note: spec(is_binary()),
      phone_number: spec(is_binary()),
      reference_id: spec(is_binary())
    })
    |> selection([])
  end

  def list_employee_wages_request do
    schema(%{cursor: spec(is_binary()), employee_id: spec(is_binary()), limit: spec(is_integer())})
    |> selection([])
  end

  def order_line_item_tax_scope do
    spec(is_binary())
  end

  def update_workweek_config_request do
    schema(%{workweek_config: Norm.Delegate.delegate(&SquareUp.NormSchema.workweek_config/0)})
    |> selection([:workweek_config])
  end

  def cancel_payment_by_idempotency_key_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def update_wage_setting_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      wage_setting: Norm.Delegate.delegate(&SquareUp.NormSchema.wage_setting/0)
    })
    |> selection([])
  end

  def v1_money do
    schema(%{amount: spec(is_integer()), currency_code: spec(is_binary())})
    |> selection([])
  end

  def catalog_discount_type do
    spec(is_binary())
  end

  def v1_employee do
    schema(%{
      authorized_location_ids: spec(coll_of(spec(is_binary()))),
      created_at: spec(is_binary()),
      email: spec(is_binary()),
      external_id: spec(is_binary()),
      first_name: spec(is_binary()),
      id: spec(is_binary()),
      last_name: spec(is_binary()),
      role_ids: spec(coll_of(spec(is_binary()))),
      status: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([:first_name, :last_name])
  end

  def catalog_time_period do
    schema(%{event: spec(is_binary())})
    |> selection([])
  end

  def v1_list_employee_roles_request do
    schema(%{batch_token: spec(is_binary()), limit: spec(is_integer()), order: spec(is_binary())})
    |> selection([])
  end

  def search_loyalty_accounts_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      loyalty_accounts:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_account/0)))
    })
    |> selection([])
  end

  def create_team_member_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      team_member: Norm.Delegate.delegate(&SquareUp.NormSchema.team_member/0)
    })
    |> selection([])
  end

  def list_locations_request do
    schema(%{})
    |> selection([])
  end

  def v1_update_discount_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_discount/0)})
    |> selection([:body])
  end

  def v1_cash_drawer_event do
    schema(%{
      created_at: spec(is_binary()),
      description: spec(is_binary()),
      employee_id: spec(is_binary()),
      event_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      event_type: spec(is_binary()),
      id: spec(is_binary())
    })
    |> selection([])
  end

  def list_refunds_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      refunds: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.refund/0)))
    })
    |> selection([])
  end

  def v1_list_bank_accounts_request do
    schema(%{})
    |> selection([])
  end

  def retrieve_transaction_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      transaction: Norm.Delegate.delegate(&SquareUp.NormSchema.transaction/0)
    })
    |> selection([])
  end

  def search_orders_sort do
    schema(%{sort_field: spec(is_binary()), sort_order: spec(is_binary())})
    |> selection([:sort_field])
  end

  def v1_timecard_event_event_type do
    spec(is_binary())
  end

  def search_team_members_filter do
    schema(%{location_ids: spec(coll_of(spec(is_binary()))), status: spec(is_binary())})
    |> selection([])
  end

  def catalog_custom_attribute_definition_selection_config_custom_attribute_selection do
    schema(%{name: spec(is_binary()), uid: spec(is_binary())})
    |> selection([:name])
  end

  def v1_payment_tax do
    schema(%{
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      fee_id: spec(is_binary()),
      inclusion_type: spec(is_binary()),
      name: spec(is_binary()),
      rate: spec(is_binary())
    })
    |> selection([])
  end

  def get_payment_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      payment: Norm.Delegate.delegate(&SquareUp.NormSchema.payment/0)
    })
    |> selection([])
  end

  def v1_retrieve_payment_request do
    schema(%{})
    |> selection([])
  end

  def employee_status do
    spec(is_binary())
  end

  def get_invoice_request do
    schema(%{})
    |> selection([])
  end

  def batch_retrieve_catalog_objects_request do
    schema(%{
      include_related_objects: spec(is_boolean()),
      object_ids: spec(coll_of(spec(is_binary())))
    })
    |> selection([:object_ids])
  end

  def batch_retrieve_inventory_changes_response do
    schema(%{
      changes: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_change/0))),
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def retrieve_catalog_object_request do
    schema(%{include_related_objects: spec(is_boolean())})
    |> selection([])
  end

  def v1_create_modifier_list_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_modifier_list/0)})
    |> selection([])
  end

  def v1_employee_role do
    schema(%{
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      is_owner: spec(is_boolean()),
      name: spec(is_binary()),
      permissions: spec(coll_of(spec(is_binary()))),
      updated_at: spec(is_binary())
    })
    |> selection([:name, :permissions])
  end

  def cash_drawer_shift_event do
    schema(%{
      created_at: spec(is_binary()),
      description: spec(is_binary()),
      employee_id: spec(is_binary()),
      event_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      event_type: spec(is_binary()),
      id: spec(is_binary())
    })
    |> selection([])
  end

  def cash_drawer_shift_state do
    spec(is_binary())
  end

  def obtain_token_response do
    schema(%{
      access_token: spec(is_binary()),
      expires_at: spec(is_binary()),
      id_token: spec(is_binary()),
      merchant_id: spec(is_binary()),
      plan_id: spec(is_binary()),
      refresh_token: spec(is_binary()),
      subscription_id: spec(is_binary()),
      token_type: spec(is_binary())
    })
    |> selection([])
  end

  def search_subscriptions_filter do
    schema(%{
      customer_ids: spec(coll_of(spec(is_binary()))),
      location_ids: spec(coll_of(spec(is_binary())))
    })
    |> selection([])
  end

  def catalog_custom_attribute_definition_seller_visibility do
    spec(is_binary())
  end

  def invoice_payment_request do
    schema(%{
      card_id: spec(is_binary()),
      computed_amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      due_date: spec(is_binary()),
      fixed_amount_requested_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      percentage_requested: spec(is_binary()),
      reminders:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.invoice_payment_reminder/0))),
      request_method: spec(is_binary()),
      request_type: spec(is_binary()),
      rounding_adjustment_included_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      tipping_enabled: spec(is_boolean()),
      total_completed_amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def update_location_request do
    schema(%{location: Norm.Delegate.delegate(&SquareUp.NormSchema.location/0)})
    |> selection([])
  end

  def v1_order_state do
    spec(is_binary())
  end

  def list_bank_accounts_request do
    schema(%{cursor: spec(is_binary()), limit: spec(is_integer()), location_id: spec(is_binary())})
    |> selection([])
  end

  def customer_group_info do
    schema(%{id: spec(is_binary()), name: spec(is_binary())})
    |> selection([:id, :name])
  end

  def catalog_object_type do
    spec(is_binary())
  end

  def v1_list_discounts_request do
    schema(%{})
    |> selection([])
  end

  def list_customer_groups_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      groups: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.customer_group/0)))
    })
    |> selection([])
  end

  def payment_refund do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      app_fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      order_id: spec(is_binary()),
      payment_id: spec(is_binary()),
      processing_fee:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.processing_fee/0))),
      reason: spec(is_binary()),
      status: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([:id, :amount_money])
  end

  def search_customers_response do
    schema(%{
      cursor: spec(is_binary()),
      customers: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.customer/0))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def v1_list_timecards_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_timecard/0)))})
    |> selection([])
  end

  def v1_payment do
    schema(%{
      additive_tax: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_tax/0))),
      additive_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      created_at: spec(is_binary()),
      creator_id: spec(is_binary()),
      device: Norm.Delegate.delegate(&SquareUp.NormSchema.device/0),
      discount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      gross_sales_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      id: spec(is_binary()),
      inclusive_tax: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_tax/0))),
      inclusive_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      is_partial: spec(is_boolean()),
      itemizations:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_itemization/0))),
      merchant_id: spec(is_binary()),
      net_sales_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      net_total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      payment_url: spec(is_binary()),
      processing_fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      receipt_url: spec(is_binary()),
      refunded_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      refunds: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_refund/0))),
      surcharge_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      surcharges:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_payment_surcharge/0))),
      swedish_rounding_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      tender: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_tender/0))),
      tip_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      total_collected_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0)
    })
    |> selection([])
  end

  def card do
    schema(%{
      billing_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      bin: spec(is_binary()),
      card_brand: spec(is_binary()),
      card_type: spec(is_binary()),
      cardholder_name: spec(is_binary()),
      exp_month: spec(is_integer()),
      exp_year: spec(is_integer()),
      fingerprint: spec(is_binary()),
      id: spec(is_binary()),
      last_4: spec(is_binary()),
      prepaid_type: spec(is_binary())
    })
    |> selection([])
  end

  def retrieve_subscription_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      subscription: Norm.Delegate.delegate(&SquareUp.NormSchema.subscription/0)
    })
    |> selection([])
  end

  def delete_break_type_request do
    schema(%{})
    |> selection([])
  end

  def retrieve_inventory_physical_count_request do
    schema(%{})
    |> selection([])
  end

  def batch_delete_catalog_objects_request do
    schema(%{object_ids: spec(coll_of(spec(is_binary())))})
    |> selection([])
  end

  def order_reward do
    schema(%{id: spec(is_binary()), reward_tier_id: spec(is_binary())})
    |> selection([:id, :reward_tier_id])
  end

  def update_item_modifier_lists_request do
    schema(%{
      item_ids: spec(coll_of(spec(is_binary()))),
      modifier_lists_to_disable: spec(coll_of(spec(is_binary()))),
      modifier_lists_to_enable: spec(coll_of(spec(is_binary())))
    })
    |> selection([:item_ids])
  end

  def v1_item_image do
    schema(%{id: spec(is_binary()), url: spec(is_binary())})
    |> selection([])
  end

  def v1_merchant_location_details do
    schema(%{nickname: spec(is_binary())})
    |> selection([])
  end

  def device_code do
    schema(%{
      code: spec(is_binary()),
      created_at: spec(is_binary()),
      device_id: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      name: spec(is_binary()),
      pair_by: spec(is_binary()),
      paired_at: spec(is_binary()),
      product_type: spec(is_binary()),
      status: spec(is_binary()),
      status_changed_at: spec(is_binary())
    })
    |> selection([:product_type])
  end

  def v1_update_modifier_list_request do
    schema(%{name: spec(is_binary()), selection_type: spec(is_binary())})
    |> selection([])
  end

  def invoice_status do
    spec(is_binary())
  end

  def v1_page do
    schema(%{
      cells: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_page_cell/0))),
      id: spec(is_binary()),
      name: spec(is_binary()),
      page_index: spec(is_integer())
    })
    |> selection([])
  end

  def customer do
    schema(%{
      address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      birthday: spec(is_binary()),
      cards: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.card/0))),
      company_name: spec(is_binary()),
      created_at: spec(is_binary()),
      creation_source: spec(is_binary()),
      email_address: spec(is_binary()),
      family_name: spec(is_binary()),
      given_name: spec(is_binary()),
      group_ids: spec(coll_of(spec(is_binary()))),
      groups: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.customer_group_info/0))),
      id: spec(is_binary()),
      nickname: spec(is_binary()),
      note: spec(is_binary()),
      phone_number: spec(is_binary()),
      preferences: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_preferences/0),
      reference_id: spec(is_binary()),
      segment_ids: spec(coll_of(spec(is_binary()))),
      updated_at: spec(is_binary())
    })
    |> selection([])
  end

  def list_team_member_wages_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      team_member_wages:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.team_member_wage/0)))
    })
    |> selection([])
  end

  def transaction do
    schema(%{
      client_id: spec(is_binary()),
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      order_id: spec(is_binary()),
      product: spec(is_binary()),
      reference_id: spec(is_binary()),
      refunds: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.refund/0))),
      shipping_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      tenders: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.tender/0)))
    })
    |> selection([])
  end

  def catalog_custom_attribute_definition do
    schema(%{
      allowed_object_types: spec(coll_of(spec(is_binary()))),
      app_visibility: spec(is_binary()),
      custom_attribute_usage_count: spec(is_integer()),
      description: spec(is_binary()),
      key: spec(is_binary()),
      name: spec(is_binary()),
      number_config:
        Norm.Delegate.delegate(
          &SquareUp.NormSchema.catalog_custom_attribute_definition_number_config/0
        ),
      selection_config:
        Norm.Delegate.delegate(
          &SquareUp.NormSchema.catalog_custom_attribute_definition_selection_config/0
        ),
      seller_visibility: spec(is_binary()),
      source_application: Norm.Delegate.delegate(&SquareUp.NormSchema.source_application/0),
      string_config:
        Norm.Delegate.delegate(
          &SquareUp.NormSchema.catalog_custom_attribute_definition_string_config/0
        ),
      type: spec(is_binary())
    })
    |> selection([:type, :name, :allowed_object_types])
  end

  def v1_list_pages_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_page/0)))})
    |> selection([])
  end

  def retrieve_inventory_count_request do
    schema(%{cursor: spec(is_binary()), location_ids: spec(is_binary())})
    |> selection([])
  end

  def renew_token_response do
    schema(%{
      access_token: spec(is_binary()),
      expires_at: spec(is_binary()),
      merchant_id: spec(is_binary()),
      plan_id: spec(is_binary()),
      subscription_id: spec(is_binary()),
      token_type: spec(is_binary())
    })
    |> selection([])
  end

  def standard_unit_description_group do
    schema(%{
      language_code: spec(is_binary()),
      standard_unit_descriptions:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.standard_unit_description/0)))
    })
    |> selection([])
  end

  def v1_fee_type do
    spec(is_binary())
  end

  def dispute_evidence do
    schema(%{
      dispute_id: spec(is_binary()),
      evidence_id: spec(is_binary()),
      evidence_type: spec(is_binary()),
      uploaded_at: spec(is_binary())
    })
    |> selection([])
  end

  def terminal_checkout_query_filter do
    schema(%{
      created_at: Norm.Delegate.delegate(&SquareUp.NormSchema.time_range/0),
      device_id: spec(is_binary()),
      status: spec(is_binary())
    })
    |> selection([])
  end

  def get_payment_request do
    schema(%{})
    |> selection([])
  end

  def order_line_item_discount_type do
    spec(is_binary())
  end

  def list_bank_accounts_response do
    schema(%{
      bank_accounts: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.bank_account/0))),
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def search_orders_sort_field do
    spec(is_binary())
  end

  def search_orders_fulfillment_filter do
    schema(%{
      fulfillment_states: spec(coll_of(spec(is_binary()))),
      fulfillment_types: spec(coll_of(spec(is_binary())))
    })
    |> selection([])
  end

  def order_return_service_charge do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      applied_taxes:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_line_item_applied_tax/0))),
      calculation_phase: spec(is_binary()),
      catalog_object_id: spec(is_binary()),
      name: spec(is_binary()),
      percentage: spec(is_binary()),
      source_service_charge_uid: spec(is_binary()),
      taxable: spec(is_boolean()),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      total_tax_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def get_employee_wage_request do
    schema(%{})
    |> selection([])
  end

  def create_payment_request do
    schema(%{
      accept_partial_authorization: spec(is_boolean()),
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      app_fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      autocomplete: spec(is_boolean()),
      billing_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      buyer_email_address: spec(is_binary()),
      customer_id: spec(is_binary()),
      delay_duration: spec(is_binary()),
      idempotency_key: spec(is_binary()),
      location_id: spec(is_binary()),
      note: spec(is_binary()),
      order_id: spec(is_binary()),
      reference_id: spec(is_binary()),
      shipping_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      source_id: spec(is_binary()),
      statement_description_identifier: spec(is_binary()),
      tip_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      verification_token: spec(is_binary())
    })
    |> selection([:source_id, :idempotency_key, :amount_money])
  end

  def create_loyalty_account_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      loyalty_account: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_account/0)
    })
    |> selection([:loyalty_account, :idempotency_key])
  end

  def v1_item_color do
    spec(is_binary())
  end

  def retrieve_inventory_adjustment_response do
    schema(%{
      adjustment: Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_adjustment/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def accept_dispute_request do
    schema(%{})
    |> selection([])
  end

  def team_member_assigned_locations do
    schema(%{assignment_type: spec(is_binary()), location_ids: spec(coll_of(spec(is_binary())))})
    |> selection([])
  end

  def catalog_info_request do
    schema(%{})
    |> selection([])
  end

  def v1_retrieve_bank_account_request do
    schema(%{})
    |> selection([])
  end

  def create_location_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      location: Norm.Delegate.delegate(&SquareUp.NormSchema.location/0)
    })
    |> selection([])
  end

  def catalog_quick_amounts_settings_option do
    spec(is_binary())
  end

  def team_member do
    schema(%{
      assigned_locations:
        Norm.Delegate.delegate(&SquareUp.NormSchema.team_member_assigned_locations/0),
      created_at: spec(is_binary()),
      email_address: spec(is_binary()),
      family_name: spec(is_binary()),
      given_name: spec(is_binary()),
      id: spec(is_binary()),
      is_owner: spec(is_boolean()),
      phone_number: spec(is_binary()),
      reference_id: spec(is_binary()),
      status: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([])
  end

  def sort_order do
    spec(is_binary())
  end

  def order_rounding_adjustment do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      name: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def v1_list_discounts_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_discount/0)))})
    |> selection([])
  end

  def customer_preferences do
    schema(%{email_unsubscribed: spec(is_boolean())})
    |> selection([])
  end

  def retrieve_customer_segment_request do
    schema(%{})
    |> selection([])
  end

  def create_break_type_response do
    schema(%{
      break_type: Norm.Delegate.delegate(&SquareUp.NormSchema.break_type/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def day_of_week do
    spec(is_binary())
  end

  def terminal_checkout_query do
    schema(%{
      filter: Norm.Delegate.delegate(&SquareUp.NormSchema.terminal_checkout_query_filter/0),
      sort: Norm.Delegate.delegate(&SquareUp.NormSchema.terminal_checkout_query_sort/0)
    })
    |> selection([])
  end

  def refund_payment_request do
    schema(%{
      amount_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      app_fee_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      idempotency_key: spec(is_binary()),
      payment_id: spec(is_binary()),
      reason: spec(is_binary())
    })
    |> selection([:idempotency_key, :amount_money, :payment_id])
  end

  def redeem_loyalty_reward_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      event: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event/0)
    })
    |> selection([])
  end

  def v1_list_modifier_lists_request do
    schema(%{})
    |> selection([])
  end

  def card_square_product do
    spec(is_binary())
  end

  def catalog_query_sorted_attribute do
    schema(%{
      attribute_name: spec(is_binary()),
      initial_attribute_value: spec(is_binary()),
      sort_order: spec(is_binary())
    })
    |> selection([:attribute_name])
  end

  def loyalty_event_accumulate_points do
    schema(%{
      loyalty_program_id: spec(is_binary()),
      order_id: spec(is_binary()),
      points: spec(is_integer())
    })
    |> selection([])
  end

  def update_item_taxes_request do
    schema(%{
      item_ids: spec(coll_of(spec(is_binary()))),
      taxes_to_disable: spec(coll_of(spec(is_binary()))),
      taxes_to_enable: spec(coll_of(spec(is_binary())))
    })
    |> selection([:item_ids])
  end

  def create_checkout_request do
    schema(%{
      additional_recipients:
        spec(
          coll_of(
            Norm.Delegate.delegate(&SquareUp.NormSchema.charge_request_additional_recipient/0)
          )
        ),
      ask_for_shipping_address: spec(is_boolean()),
      idempotency_key: spec(is_binary()),
      merchant_support_email: spec(is_binary()),
      note: spec(is_binary()),
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.create_order_request/0),
      pre_populate_buyer_email: spec(is_binary()),
      pre_populate_shipping_address: Norm.Delegate.delegate(&SquareUp.NormSchema.address/0),
      redirect_url: spec(is_binary())
    })
    |> selection([:idempotency_key, :order])
  end

  def search_catalog_items_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0))),
      matched_variation_ids: spec(coll_of(spec(is_binary())))
    })
    |> selection([])
  end

  def create_device_code_response do
    schema(%{
      device_code: Norm.Delegate.delegate(&SquareUp.NormSchema.device_code/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def location_capability do
    spec(is_binary())
  end

  def v1_settlement do
    schema(%{
      bank_account_id: spec(is_binary()),
      entries: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_settlement_entry/0))),
      id: spec(is_binary()),
      initiated_at: spec(is_binary()),
      status: spec(is_binary()),
      total_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0)
    })
    |> selection([])
  end

  def v1_list_settlements_request_status do
    spec(is_binary())
  end

  def list_workweek_configs_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      workweek_configs:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.workweek_config/0)))
    })
    |> selection([])
  end

  def business_hours_period do
    schema(%{
      day_of_week: spec(is_binary()),
      end_local_time: spec(is_binary()),
      start_local_time: spec(is_binary())
    })
    |> selection([])
  end

  def retrieve_loyalty_account_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      loyalty_account: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_account/0)
    })
    |> selection([])
  end

  def v1_timecard_event do
    schema(%{
      clockin_time: spec(is_binary()),
      clockout_time: spec(is_binary()),
      created_at: spec(is_binary()),
      event_type: spec(is_binary()),
      id: spec(is_binary())
    })
    |> selection([])
  end

  def create_subscription_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      subscription: Norm.Delegate.delegate(&SquareUp.NormSchema.subscription/0)
    })
    |> selection([])
  end

  def v1_adjust_inventory_request_adjustment_type do
    spec(is_binary())
  end

  def catalog_query_prefix do
    schema(%{attribute_name: spec(is_binary()), attribute_prefix: spec(is_binary())})
    |> selection([:attribute_name, :attribute_prefix])
  end

  def shift_query do
    schema(%{
      filter: Norm.Delegate.delegate(&SquareUp.NormSchema.shift_filter/0),
      sort: Norm.Delegate.delegate(&SquareUp.NormSchema.shift_sort/0)
    })
    |> selection([])
  end

  def catalog_category do
    schema(%{name: spec(is_binary())})
    |> selection([])
  end

  def list_dispute_evidence_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      evidence: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.dispute_evidence/0)))
    })
    |> selection([])
  end

  def retrieve_cash_drawer_shift_request do
    schema(%{location_id: spec(is_binary())})
    |> selection([:location_id])
  end

  def retrieve_catalog_object_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      object: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0),
      related_objects:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)))
    })
    |> selection([])
  end

  def time_range do
    schema(%{end_at: spec(is_binary()), start_at: spec(is_binary())})
    |> selection([])
  end

  def retrieve_customer_group_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      group: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_group/0)
    })
    |> selection([])
  end

  def search_loyalty_events_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      events: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_event/0)))
    })
    |> selection([])
  end

  def measurement_unit_volume do
    spec(is_binary())
  end

  def catalog_query_items_for_item_options do
    schema(%{item_option_ids: spec(coll_of(spec(is_binary())))})
    |> selection([])
  end

  def v1_list_inventory_request do
    schema(%{batch_token: spec(is_binary()), limit: spec(is_integer())})
    |> selection([])
  end

  def batch_retrieve_inventory_changes_request do
    schema(%{
      catalog_object_ids: spec(coll_of(spec(is_binary()))),
      cursor: spec(is_binary()),
      location_ids: spec(coll_of(spec(is_binary()))),
      states: spec(coll_of(spec(is_binary()))),
      types: spec(coll_of(spec(is_binary()))),
      updated_after: spec(is_binary()),
      updated_before: spec(is_binary())
    })
    |> selection([])
  end

  def customer_creation_source_filter do
    schema(%{rule: spec(is_binary()), values: spec(coll_of(spec(is_binary())))})
    |> selection([])
  end

  def tender_card_details_entry_method do
    spec(is_binary())
  end

  def create_loyalty_reward_request do
    schema(%{
      idempotency_key: spec(is_binary()),
      reward: Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_reward/0)
    })
    |> selection([:reward, :idempotency_key])
  end

  def search_invoices_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      invoices: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.invoice/0)))
    })
    |> selection([])
  end

  def create_catalog_image_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      image: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)
    })
    |> selection([])
  end

  def v1_list_timecards_request do
    schema(%{
      batch_token: spec(is_binary()),
      begin_clockin_time: spec(is_binary()),
      begin_clockout_time: spec(is_binary()),
      begin_updated_at: spec(is_binary()),
      deleted: spec(is_boolean()),
      employee_id: spec(is_binary()),
      end_clockin_time: spec(is_binary()),
      end_clockout_time: spec(is_binary()),
      end_updated_at: spec(is_binary()),
      limit: spec(is_integer()),
      order: spec(is_binary())
    })
    |> selection([])
  end

  def create_dispute_evidence_file_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      evidence: Norm.Delegate.delegate(&SquareUp.NormSchema.dispute_evidence/0)
    })
    |> selection([])
  end

  def order_line_item_discount_scope do
    spec(is_binary())
  end

  def get_shift_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      shift: Norm.Delegate.delegate(&SquareUp.NormSchema.shift/0)
    })
    |> selection([])
  end

  def order_created_object do
    schema(%{order_created: Norm.Delegate.delegate(&SquareUp.NormSchema.order_created/0)})
    |> selection([])
  end

  def catalog_v1_id do
    schema(%{catalog_v1_id: spec(is_binary()), location_id: spec(is_binary())})
    |> selection([])
  end

  def delete_invoice_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def v1_phone_number do
    schema(%{calling_code: spec(is_binary()), number: spec(is_binary())})
    |> selection([:calling_code, :number])
  end

  def v1_update_page_cell_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_page_cell/0)})
    |> selection([:body])
  end

  def register_domain_response_status do
    spec(is_binary())
  end

  def loyalty_account_mapping_type do
    spec(is_binary())
  end

  def v1_delete_variation_request do
    schema(%{})
    |> selection([])
  end

  def charge_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      transaction: Norm.Delegate.delegate(&SquareUp.NormSchema.transaction/0)
    })
    |> selection([])
  end

  def get_device_code_request do
    schema(%{})
    |> selection([])
  end

  def v1_list_employee_roles_response do
    schema(%{
      items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee_role/0)))
    })
    |> selection([])
  end

  def list_invoices_request do
    schema(%{cursor: spec(is_binary()), limit: spec(is_integer()), location_id: spec(is_binary())})
    |> selection([:location_id])
  end

  def v1_create_modifier_option_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_modifier_option/0)})
    |> selection([])
  end

  def get_device_code_response do
    schema(%{
      device_code: Norm.Delegate.delegate(&SquareUp.NormSchema.device_code/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def inventory_adjustment do
    schema(%{
      catalog_object_id: spec(is_binary()),
      catalog_object_type: spec(is_binary()),
      created_at: spec(is_binary()),
      employee_id: spec(is_binary()),
      from_state: spec(is_binary()),
      goods_receipt_id: spec(is_binary()),
      id: spec(is_binary()),
      location_id: spec(is_binary()),
      occurred_at: spec(is_binary()),
      purchase_order_id: spec(is_binary()),
      quantity: spec(is_binary()),
      reference_id: spec(is_binary()),
      refund_id: spec(is_binary()),
      source: Norm.Delegate.delegate(&SquareUp.NormSchema.source_application/0),
      to_state: spec(is_binary()),
      total_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      transaction_id: spec(is_binary())
    })
    |> selection([])
  end

  def get_bank_account_by_v1_id_request do
    schema(%{})
    |> selection([])
  end

  def create_device_code_request do
    schema(%{
      device_code: Norm.Delegate.delegate(&SquareUp.NormSchema.device_code/0),
      idempotency_key: spec(is_binary())
    })
    |> selection([:idempotency_key, :device_code])
  end

  def shift_sort_field do
    spec(is_binary())
  end

  def delete_customer_request do
    schema(%{})
    |> selection([])
  end

  def v1_list_bank_accounts_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_bank_account/0)))})
    |> selection([])
  end

  def v1_update_variation_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_variation/0)})
    |> selection([:body])
  end

  def cash_drawer_event_type do
    spec(is_binary())
  end

  def tender_bank_transfer_details_status do
    spec(is_binary())
  end

  def measurement_unit_length do
    spec(is_binary())
  end

  def customer_segment do
    schema(%{
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      name: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([:name])
  end

  def update_team_member_request do
    schema(%{team_member: Norm.Delegate.delegate(&SquareUp.NormSchema.team_member/0)})
    |> selection([])
  end

  def search_customers_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      query: Norm.Delegate.delegate(&SquareUp.NormSchema.customer_query/0)
    })
    |> selection([])
  end

  def currency do
    spec(is_binary())
  end

  def source_application do
    schema(%{
      application_id: spec(is_binary()),
      name: spec(is_binary()),
      product: spec(is_binary())
    })
    |> selection([])
  end

  def v1_create_fee_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_fee/0)})
    |> selection([])
  end

  def retrieve_customer_group_request do
    schema(%{})
    |> selection([])
  end

  def device_checkout_options do
    schema(%{
      device_id: spec(is_binary()),
      skip_receipt_screen: spec(is_boolean()),
      tip_settings: Norm.Delegate.delegate(&SquareUp.NormSchema.tip_settings/0)
    })
    |> selection([:device_id])
  end

  def employee do
    schema(%{
      created_at: spec(is_binary()),
      email: spec(is_binary()),
      first_name: spec(is_binary()),
      id: spec(is_binary()),
      is_owner: spec(is_boolean()),
      last_name: spec(is_binary()),
      location_ids: spec(coll_of(spec(is_binary()))),
      phone_number: spec(is_binary()),
      status: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([])
  end

  def retrieve_team_member_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      team_member: Norm.Delegate.delegate(&SquareUp.NormSchema.team_member/0)
    })
    |> selection([])
  end

  def v1_variation do
    schema(%{
      id: spec(is_binary()),
      inventory_alert_threshold: spec(is_integer()),
      inventory_alert_type: spec(is_binary()),
      item_id: spec(is_binary()),
      name: spec(is_binary()),
      ordinal: spec(is_integer()),
      price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      pricing_type: spec(is_binary()),
      sku: spec(is_binary()),
      track_inventory: spec(is_boolean()),
      user_data: spec(is_binary()),
      v2_id: spec(is_binary())
    })
    |> selection([])
  end

  def list_disputes_response do
    schema(%{
      cursor: spec(is_binary()),
      disputes: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.dispute/0))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def tax_inclusion_type do
    spec(is_binary())
  end

  def tender_type do
    spec(is_binary())
  end

  def customer_group do
    schema(%{
      created_at: spec(is_binary()),
      id: spec(is_binary()),
      name: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([:name])
  end

  def calculate_order_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.order/0)
    })
    |> selection([])
  end

  def get_bank_account_by_v1_id_response do
    schema(%{
      bank_account: Norm.Delegate.delegate(&SquareUp.NormSchema.bank_account/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def v1_retrieve_modifier_list_request do
    schema(%{})
    |> selection([])
  end

  def get_payment_refund_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      refund: Norm.Delegate.delegate(&SquareUp.NormSchema.payment_refund/0)
    })
    |> selection([])
  end

  def delete_customer_group_request do
    schema(%{})
    |> selection([])
  end

  def delete_shift_request do
    schema(%{})
    |> selection([])
  end

  def v1_list_fees_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_fee/0)))})
    |> selection([])
  end

  def search_team_members_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      team_members: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.team_member/0)))
    })
    |> selection([])
  end

  def create_mobile_authorization_code_response do
    schema(%{
      authorization_code: spec(is_binary()),
      error: Norm.Delegate.delegate(&SquareUp.NormSchema.error/0),
      expires_at: spec(is_binary())
    })
    |> selection([])
  end

  def retrieve_employee_response do
    schema(%{
      employee: Norm.Delegate.delegate(&SquareUp.NormSchema.employee/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def catalog_custom_attribute_definition_selection_config do
    schema(%{
      allowed_selections:
        spec(
          coll_of(
            Norm.Delegate.delegate(
              &SquareUp.NormSchema.catalog_custom_attribute_definition_selection_config_custom_attribute_selection/0
            )
          )
        ),
      max_allowed_selections: spec(is_integer())
    })
    |> selection([])
  end

  def dispute_reason do
    spec(is_binary())
  end

  def transaction_type do
    spec(is_binary())
  end

  def search_team_members_query do
    schema(%{filter: Norm.Delegate.delegate(&SquareUp.NormSchema.search_team_members_filter/0)})
    |> selection([])
  end

  def loyalty_event_expire_points do
    schema(%{loyalty_program_id: spec(is_binary()), points: spec(is_integer())})
    |> selection([:loyalty_program_id, :points])
  end

  def loyalty_account do
    schema(%{
      balance: spec(is_integer()),
      created_at: spec(is_binary()),
      customer_id: spec(is_binary()),
      enrolled_at: spec(is_binary()),
      id: spec(is_binary()),
      lifetime_points: spec(is_integer()),
      mappings:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.loyalty_account_mapping/0))),
      program_id: spec(is_binary()),
      updated_at: spec(is_binary())
    })
    |> selection([:mappings, :program_id])
  end

  def list_team_member_wages_request do
    schema(%{
      cursor: spec(is_binary()),
      limit: spec(is_integer()),
      team_member_id: spec(is_binary())
    })
    |> selection([])
  end

  def retrieve_inventory_physical_count_response do
    schema(%{
      count: Norm.Delegate.delegate(&SquareUp.NormSchema.inventory_physical_count/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def v1_payment_surcharge_type do
    spec(is_binary())
  end

  def custom_attribute_filter do
    schema(%{
      bool_filter: spec(is_boolean()),
      custom_attribute_definition_id: spec(is_binary()),
      key: spec(is_binary()),
      number_filter: Norm.Delegate.delegate(&SquareUp.NormSchema.range/0),
      selection_uids_filter: spec(coll_of(spec(is_binary()))),
      string_filter: spec(is_binary())
    })
    |> selection([])
  end

  def card_brand do
    spec(is_binary())
  end

  def order_return_tax do
    schema(%{
      applied_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      catalog_object_id: spec(is_binary()),
      name: spec(is_binary()),
      percentage: spec(is_binary()),
      scope: spec(is_binary()),
      source_tax_uid: spec(is_binary()),
      type: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def catalog_image do
    schema(%{caption: spec(is_binary()), name: spec(is_binary()), url: spec(is_binary())})
    |> selection([])
  end

  def v1_category do
    schema(%{id: spec(is_binary()), name: spec(is_binary()), v2_id: spec(is_binary())})
    |> selection([])
  end

  def action_cancel_reason do
    spec(is_binary())
  end

  def v1_list_locations_response do
    schema(%{items: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.v1_merchant/0)))})
    |> selection([])
  end

  def search_catalog_items_request_stock_level do
    spec(is_binary())
  end

  def order_service_charge_calculation_phase do
    spec(is_binary())
  end

  def remove_group_from_customer_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def upsert_catalog_object_response do
    schema(%{
      catalog_object: Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      id_mappings:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_id_mapping/0)))
    })
    |> selection([])
  end

  def list_device_codes_response do
    schema(%{
      cursor: spec(is_binary()),
      device_codes: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.device_code/0))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def business_hours do
    schema(%{
      periods: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.business_hours_period/0)))
    })
    |> selection([])
  end

  def capture_transaction_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def v1_create_refund_request do
    schema(%{
      payment_id: spec(is_binary()),
      reason: spec(is_binary()),
      refunded_money: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_money/0),
      request_idempotence_key: spec(is_binary()),
      type: spec(is_binary())
    })
    |> selection([:payment_id, :type, :reason])
  end

  def v1_adjust_inventory_request do
    schema(%{
      adjustment_type: spec(is_binary()),
      memo: spec(is_binary()),
      quantity_delta: spec(is_number())
    })
    |> selection([])
  end

  def catalog_quick_amount do
    schema(%{
      amount: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      ordinal: spec(is_integer()),
      score: spec(is_integer()),
      type: spec(is_binary())
    })
    |> selection([:type, :amount])
  end

  def loyalty_program_expiration_policy do
    schema(%{expiration_duration: spec(is_binary())})
    |> selection([:expiration_duration])
  end

  def team_member_wage do
    schema(%{
      hourly_rate: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      id: spec(is_binary()),
      team_member_id: spec(is_binary()),
      title: spec(is_binary())
    })
    |> selection([])
  end

  def create_dispute_evidence_text_request do
    schema(%{
      evidence_text: spec(is_binary()),
      evidence_type: spec(is_binary()),
      idempotency_key: spec(is_binary())
    })
    |> selection([:idempotency_key, :evidence_text])
  end

  def delete_catalog_object_request do
    schema(%{})
    |> selection([])
  end

  def calculate_order_request do
    schema(%{
      order: Norm.Delegate.delegate(&SquareUp.NormSchema.order/0),
      proposed_rewards: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_reward/0)))
    })
    |> selection([:order])
  end

  def get_payment_refund_request do
    schema(%{})
    |> selection([])
  end

  def update_location_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      location: Norm.Delegate.delegate(&SquareUp.NormSchema.location/0)
    })
    |> selection([])
  end

  def search_orders_customer_filter do
    schema(%{customer_ids: spec(coll_of(spec(is_binary())))})
    |> selection([])
  end

  def customer_text_filter do
    schema(%{exact: spec(is_binary()), fuzzy: spec(is_binary())})
    |> selection([])
  end

  def v1_update_employee_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee/0)})
    |> selection([:body])
  end

  def v1_create_employee_role_request do
    schema(%{employee_role: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee_role/0)})
    |> selection([])
  end

  def card_type do
    spec(is_binary())
  end

  def create_refund_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      refund: Norm.Delegate.delegate(&SquareUp.NormSchema.refund/0)
    })
    |> selection([])
  end

  def search_shifts_response do
    schema(%{
      cursor: spec(is_binary()),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      shifts: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.shift/0)))
    })
    |> selection([])
  end

  def update_subscription_request do
    schema(%{subscription: Norm.Delegate.delegate(&SquareUp.NormSchema.subscription/0)})
    |> selection([])
  end

  def v1_update_item_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_item/0)})
    |> selection([:body])
  end

  def standard_unit_description do
    schema(%{
      abbreviation: spec(is_binary()),
      name: spec(is_binary()),
      unit: Norm.Delegate.delegate(&SquareUp.NormSchema.measurement_unit/0)
    })
    |> selection([])
  end

  def v1_fee_inclusion_type do
    spec(is_binary())
  end

  def v1_update_modifier_option_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_modifier_option/0)})
    |> selection([:body])
  end

  def list_employees_response do
    schema(%{
      cursor: spec(is_binary()),
      employees: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.employee/0))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def catalog_query_exact do
    schema(%{attribute_name: spec(is_binary()), attribute_value: spec(is_binary())})
    |> selection([:attribute_name, :attribute_value])
  end

  def remove_dispute_evidence_response do
    schema(%{errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))})
    |> selection([])
  end

  def complete_payment_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      payment: Norm.Delegate.delegate(&SquareUp.NormSchema.payment/0)
    })
    |> selection([])
  end

  def search_loyalty_rewards_request_loyalty_reward_query do
    schema(%{loyalty_account_id: spec(is_binary()), status: spec(is_binary())})
    |> selection([:loyalty_account_id])
  end

  def batch_retrieve_inventory_counts_request do
    schema(%{
      catalog_object_ids: spec(coll_of(spec(is_binary()))),
      cursor: spec(is_binary()),
      location_ids: spec(coll_of(spec(is_binary()))),
      states: spec(coll_of(spec(is_binary()))),
      updated_after: spec(is_binary())
    })
    |> selection([])
  end

  def delete_catalog_object_response do
    schema(%{
      deleted_at: spec(is_binary()),
      deleted_object_ids: spec(coll_of(spec(is_binary()))),
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0)))
    })
    |> selection([])
  end

  def list_payment_refunds_request do
    schema(%{
      begin_time: spec(is_binary()),
      cursor: spec(is_binary()),
      end_time: spec(is_binary()),
      location_id: spec(is_binary()),
      sort_order: spec(is_binary()),
      source_type: spec(is_binary()),
      status: spec(is_binary())
    })
    |> selection([])
  end

  def dispute_state do
    spec(is_binary())
  end

  def search_catalog_items_request do
    schema(%{
      category_ids: spec(coll_of(spec(is_binary()))),
      cursor: spec(is_binary()),
      custom_attribute_filters:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.custom_attribute_filter/0))),
      enabled_location_ids: spec(coll_of(spec(is_binary()))),
      limit: spec(is_integer()),
      product_types: spec(coll_of(spec(is_binary()))),
      sort_order: spec(is_binary()),
      stock_levels: spec(coll_of(spec(is_binary()))),
      text_filter: spec(is_binary())
    })
    |> selection([])
  end

  def v1_item_visibility do
    spec(is_binary())
  end

  def list_customer_segments_request do
    schema(%{cursor: spec(is_binary())})
    |> selection([])
  end

  def job_assignment do
    schema(%{
      annual_rate: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      hourly_rate: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      job_title: spec(is_binary()),
      pay_type: spec(is_binary()),
      weekly_hours: spec(is_integer())
    })
    |> selection([:job_title, :pay_type])
  end

  def loyalty_program_reward_definition_type do
    spec(is_binary())
  end

  def location_status do
    spec(is_binary())
  end

  def catalog_id_mapping do
    schema(%{client_object_id: spec(is_binary()), object_id: spec(is_binary())})
    |> selection([])
  end

  def loyalty_reward_status do
    spec(is_binary())
  end

  def v1_create_category_request do
    schema(%{body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_category/0)})
    |> selection([])
  end

  def catalog_item_option do
    schema(%{
      description: spec(is_binary()),
      display_name: spec(is_binary()),
      item_count: spec(is_integer()),
      name: spec(is_binary()),
      show_colors: spec(is_boolean()),
      values: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.catalog_object/0)))
    })
    |> selection([])
  end

  def order_return do
    schema(%{
      return_amounts: Norm.Delegate.delegate(&SquareUp.NormSchema.order_money_amounts/0),
      return_discounts:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_return_discount/0))),
      return_line_items:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_return_line_item/0))),
      return_service_charges:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_return_service_charge/0))),
      return_taxes:
        spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.order_return_tax/0))),
      rounding_adjustment:
        Norm.Delegate.delegate(&SquareUp.NormSchema.order_rounding_adjustment/0),
      source_order_id: spec(is_binary()),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def transaction_product do
    spec(is_binary())
  end

  def v1_delete_category_request do
    schema(%{})
    |> selection([])
  end

  def v1_retrieve_item_request do
    schema(%{})
    |> selection([])
  end

  def bulk_create_team_members_response do
    schema(%{
      errors: spec(coll_of(Norm.Delegate.delegate(&SquareUp.NormSchema.error/0))),
      team_members: schema(%{})
    })
    |> selection([])
  end

  def order_return_line_item_modifier do
    schema(%{
      base_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      catalog_object_id: spec(is_binary()),
      name: spec(is_binary()),
      source_modifier_uid: spec(is_binary()),
      total_price_money: Norm.Delegate.delegate(&SquareUp.NormSchema.money/0),
      uid: spec(is_binary())
    })
    |> selection([])
  end

  def v1_tender_type do
    spec(is_binary())
  end
end
