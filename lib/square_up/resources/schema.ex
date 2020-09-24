defmodule SquareUp.Schema do
  import Norm

  def wage_setting(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "is_overtime_exempt" => spec(is_boolean()),
        "job_assignments" => spec(coll_of(spec(SquareUp.Schema.job_assignment()))),
        "team_member_id" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def retrieve_customer_response(data) do
    valid?(
      data,
      schema(%{
        "customer" => spec(SquareUp.Schema.customer()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def create_location_request(data) do
    valid?(
      data,
      schema(%{"location" => spec(SquareUp.Schema.location())})
      |> selection([])
    )
  end

  def v1_retrieve_employee_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def retrieve_cash_drawer_shift_response(data) do
    valid?(
      data,
      schema(%{
        "cash_drawer_shift" => spec(SquareUp.Schema.cash_drawer_shift()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def shift_status(data) do
    valid?(data, spec(is_binary()))
  end

  def redeem_loyalty_reward_request(data) do
    valid?(
      data,
      schema(%{"idempotency_key" => spec(is_binary()), "location_id" => spec(is_binary())})
      |> selection(["idempotency_key", "location_id"])
    )
  end

  def order_fulfillment_pickup_details(data) do
    valid?(
      data,
      schema(%{
        "accepted_at" => spec(is_binary()),
        "auto_complete_duration" => spec(is_binary()),
        "cancel_reason" => spec(is_binary()),
        "canceled_at" => spec(is_binary()),
        "curbside_pickup_details" =>
          spec(SquareUp.Schema.order_fulfillment_pickup_details_curbside_pickup_details()),
        "expired_at" => spec(is_binary()),
        "expires_at" => spec(is_binary()),
        "is_curbside_pickup" => spec(is_boolean()),
        "note" => spec(is_binary()),
        "picked_up_at" => spec(is_binary()),
        "pickup_at" => spec(is_binary()),
        "pickup_window_duration" => spec(is_binary()),
        "placed_at" => spec(is_binary()),
        "prep_time_duration" => spec(is_binary()),
        "ready_at" => spec(is_binary()),
        "recipient" => spec(SquareUp.Schema.order_fulfillment_recipient()),
        "rejected_at" => spec(is_binary()),
        "schedule_type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def subscription_event_subscription_event_type(data) do
    valid?(data, spec(is_binary()))
  end

  def void_transaction_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def v1_settlement_entry(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.v1_money()),
        "fee_money" => spec(SquareUp.Schema.v1_money()),
        "payment_id" => spec(is_binary()),
        "type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def error_category(data) do
    valid?(data, spec(is_binary()))
  end

  def retrieve_wage_setting_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "wage_setting" => spec(SquareUp.Schema.wage_setting())
      })
      |> selection([])
    )
  end

  def cancel_payment_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "payment" => spec(SquareUp.Schema.payment())
      })
      |> selection([])
    )
  end

  def remove_dispute_evidence_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def retrieve_dispute_response(data) do
    valid?(
      data,
      schema(%{
        "dispute" => spec(SquareUp.Schema.dispute()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def list_break_types_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "location_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def update_order_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "order" => spec(SquareUp.Schema.order())
      })
      |> selection([])
    )
  end

  def bulk_update_team_members_request(data) do
    valid?(
      data,
      schema(%{"team_members" => schema(%{})})
      |> selection(["team_members"])
    )
  end

  def create_customer_group_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "group" => spec(SquareUp.Schema.customer_group())
      })
      |> selection([])
    )
  end

  def money(data) do
    valid?(
      data,
      schema(%{"amount" => spec(is_integer()), "currency" => spec(is_binary())})
      |> selection([])
    )
  end

  def get_team_member_wage_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "team_member_wage" => spec(SquareUp.Schema.team_member_wage())
      })
      |> selection([])
    )
  end

  def v1_update_order_request(data) do
    valid?(
      data,
      schema(%{
        "action" => spec(is_binary()),
        "canceled_note" => spec(is_binary()),
        "completed_note" => spec(is_binary()),
        "refunded_note" => spec(is_binary()),
        "shipped_tracking_number" => spec(is_binary())
      })
      |> selection(["action"])
    )
  end

  def tender(data) do
    valid?(
      data,
      schema(%{
        "additional_recipients" => spec(coll_of(spec(SquareUp.Schema.additional_recipient()))),
        "amount_money" => spec(SquareUp.Schema.money()),
        "bank_transfer_details" => spec(SquareUp.Schema.tender_bank_transfer_details()),
        "card_details" => spec(SquareUp.Schema.tender_card_details()),
        "cash_details" => spec(SquareUp.Schema.tender_cash_details()),
        "created_at" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "note" => spec(is_binary()),
        "payment_id" => spec(is_binary()),
        "processing_fee_money" => spec(SquareUp.Schema.money()),
        "tip_money" => spec(SquareUp.Schema.money()),
        "transaction_id" => spec(is_binary()),
        "type" => spec(is_binary())
      })
      |> selection(["type"])
    )
  end

  def v1_create_refund_request_type(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_query_range(data) do
    valid?(
      data,
      schema(%{
        "attribute_max_value" => spec(is_integer()),
        "attribute_min_value" => spec(is_integer()),
        "attribute_name" => spec(is_binary())
      })
      |> selection(["attribute_name"])
    )
  end

  def invoice_sort(data) do
    valid?(
      data,
      schema(%{"field" => spec(is_binary()), "order" => spec(is_binary())})
      |> selection(["field"])
    )
  end

  def cancel_invoice_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "invoice" => spec(SquareUp.Schema.invoice())
      })
      |> selection([])
    )
  end

  def v1_list_categories_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def list_employee_wages_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "employee_wages" => spec(coll_of(spec(SquareUp.Schema.employee_wage()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def order_line_item_discount(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "applied_money" => spec(SquareUp.Schema.money()),
        "catalog_object_id" => spec(is_binary()),
        "metadata" => schema(%{}),
        "name" => spec(is_binary()),
        "percentage" => spec(is_binary()),
        "pricing_rule_id" => spec(is_binary()),
        "reward_ids" => spec(coll_of(spec(is_binary()))),
        "scope" => spec(is_binary()),
        "type" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def delete_shift_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def catalog_pricing_type(data) do
    valid?(data, spec(is_binary()))
  end

  def create_order_request(data) do
    valid?(
      data,
      schema(%{
        "idempotency_key" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "order" => spec(SquareUp.Schema.order())
      })
      |> selection([])
    )
  end

  def v1_list_orders_request(data) do
    valid?(
      data,
      schema(%{
        "batch_token" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_list_settlements_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_settlement())))})
      |> selection([])
    )
  end

  def v1_update_page_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_page())})
      |> selection(["body"])
    )
  end

  def payment(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "app_fee_money" => spec(SquareUp.Schema.money()),
        "billing_address" => spec(SquareUp.Schema.address()),
        "buyer_email_address" => spec(is_binary()),
        "card_details" => spec(SquareUp.Schema.card_payment_details()),
        "created_at" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "delay_action" => spec(is_binary()),
        "delay_duration" => spec(is_binary()),
        "delayed_until" => spec(is_binary()),
        "employee_id" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "note" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "processing_fee" => spec(coll_of(spec(SquareUp.Schema.processing_fee()))),
        "receipt_number" => spec(is_binary()),
        "receipt_url" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "refund_ids" => spec(coll_of(spec(is_binary()))),
        "refunded_money" => spec(SquareUp.Schema.money()),
        "shipping_address" => spec(SquareUp.Schema.address()),
        "source_type" => spec(is_binary()),
        "statement_description_identifier" => spec(is_binary()),
        "status" => spec(is_binary()),
        "tip_money" => spec(SquareUp.Schema.money()),
        "total_money" => spec(SquareUp.Schema.money()),
        "updated_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_cash_drawer_shift_event_type(data) do
    valid?(data, spec(is_binary()))
  end

  def list_loyalty_programs_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "programs" => spec(coll_of(spec(SquareUp.Schema.loyalty_program())))
      })
      |> selection([])
    )
  end

  def v1_fee(data) do
    valid?(
      data,
      schema(%{
        "adjustment_type" => spec(is_binary()),
        "applies_to_custom_amounts" => spec(is_boolean()),
        "calculation_phase" => spec(is_binary()),
        "enabled" => spec(is_boolean()),
        "id" => spec(is_binary()),
        "inclusion_type" => spec(is_binary()),
        "name" => spec(is_binary()),
        "rate" => spec(is_binary()),
        "type" => spec(is_binary()),
        "v2_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_list_items_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_item())))})
      |> selection([])
    )
  end

  def tender_cash_details(data) do
    valid?(
      data,
      schema(%{
        "buyer_tendered_money" => spec(SquareUp.Schema.money()),
        "change_back_money" => spec(SquareUp.Schema.money())
      })
      |> selection([])
    )
  end

  def v1_payment_itemization(data) do
    valid?(
      data,
      schema(%{
        "discount_money" => spec(SquareUp.Schema.v1_money()),
        "discounts" => spec(coll_of(spec(SquareUp.Schema.v1_payment_discount()))),
        "gross_sales_money" => spec(SquareUp.Schema.v1_money()),
        "item_detail" => spec(SquareUp.Schema.v1_payment_item_detail()),
        "item_variation_name" => spec(is_binary()),
        "itemization_type" => spec(is_binary()),
        "modifiers" => spec(coll_of(spec(SquareUp.Schema.v1_payment_modifier()))),
        "name" => spec(is_binary()),
        "net_sales_money" => spec(SquareUp.Schema.v1_money()),
        "notes" => spec(is_binary()),
        "quantity" => spec(is_number()),
        "single_quantity_money" => spec(SquareUp.Schema.v1_money()),
        "taxes" => spec(coll_of(spec(SquareUp.Schema.v1_payment_tax()))),
        "total_money" => spec(SquareUp.Schema.v1_money())
      })
      |> selection([])
    )
  end

  def publish_invoice_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "invoice" => spec(SquareUp.Schema.invoice())
      })
      |> selection([])
    )
  end

  def employee_wage(data) do
    valid?(
      data,
      schema(%{
        "employee_id" => spec(is_binary()),
        "hourly_rate" => spec(SquareUp.Schema.money()),
        "id" => spec(is_binary()),
        "title" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def update_shift_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "shift" => spec(SquareUp.Schema.shift())
      })
      |> selection([])
    )
  end

  def catalog_modifier_list(data) do
    valid?(
      data,
      schema(%{
        "modifiers" => spec(coll_of(spec(SquareUp.Schema.catalog_object()))),
        "name" => spec(is_binary()),
        "ordinal" => spec(is_integer()),
        "selection_type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_inventory_entry(data) do
    valid?(
      data,
      schema(%{"quantity_on_hand" => spec(is_number()), "variation_id" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_retrieve_cash_drawer_shift_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_tender_entry_method(data) do
    valid?(data, spec(is_binary()))
  end

  def update_item_modifier_lists_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "updated_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def get_shift_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def list_disputes_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "states" => spec(coll_of(spec(is_binary())))
      })
      |> selection([])
    )
  end

  def add_group_to_customer_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def loyalty_event_redeem_reward(data) do
    valid?(
      data,
      schema(%{
        "loyalty_program_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "reward_id" => spec(is_binary())
      })
      |> selection(["loyalty_program_id"])
    )
  end

  def v1_list_payments_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_payment())))})
      |> selection([])
    )
  end

  def refund_payment_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "refund" => spec(SquareUp.Schema.payment_refund())
      })
      |> selection([])
    )
  end

  def v1_delete_modifier_option_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_list_employees_request(data) do
    valid?(
      data,
      schema(%{
        "batch_token" => spec(is_binary()),
        "begin_created_at" => spec(is_binary()),
        "begin_updated_at" => spec(is_binary()),
        "end_created_at" => spec(is_binary()),
        "end_updated_at" => spec(is_binary()),
        "external_id" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "order" => spec(is_binary()),
        "status" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def cash_drawer_device(data) do
    valid?(
      data,
      schema(%{"id" => spec(is_binary()), "name" => spec(is_binary())})
      |> selection([])
    )
  end

  def search_loyalty_rewards_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "rewards" => spec(coll_of(spec(SquareUp.Schema.loyalty_reward())))
      })
      |> selection([])
    )
  end

  def customer_query(data) do
    valid?(
      data,
      schema(%{
        "filter" => spec(SquareUp.Schema.customer_filter()),
        "sort" => spec(SquareUp.Schema.customer_sort())
      })
      |> selection([])
    )
  end

  def measurement_unit_generic(data) do
    valid?(data, spec(is_binary()))
  end

  def create_payment_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "payment" => spec(SquareUp.Schema.payment())
      })
      |> selection([])
    )
  end

  def loyalty_reward(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "loyalty_account_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "points" => spec(is_integer()),
        "redeemed_at" => spec(is_binary()),
        "reward_tier_id" => spec(is_binary()),
        "status" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection(["loyalty_account_id", "reward_tier_id"])
    )
  end

  def inventory_transfer(data) do
    valid?(
      data,
      schema(%{
        "catalog_object_id" => spec(is_binary()),
        "catalog_object_type" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "employee_id" => spec(is_binary()),
        "from_location_id" => spec(is_binary()),
        "id" => spec(is_binary()),
        "occurred_at" => spec(is_binary()),
        "quantity" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "source" => spec(SquareUp.Schema.source_application()),
        "state" => spec(is_binary()),
        "to_location_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def batch_retrieve_catalog_objects_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "objects" => spec(coll_of(spec(SquareUp.Schema.catalog_object()))),
        "related_objects" => spec(coll_of(spec(SquareUp.Schema.catalog_object())))
      })
      |> selection([])
    )
  end

  def refund(data) do
    valid?(
      data,
      schema(%{
        "additional_recipients" => spec(coll_of(spec(SquareUp.Schema.additional_recipient()))),
        "amount_money" => spec(SquareUp.Schema.money()),
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "processing_fee_money" => spec(SquareUp.Schema.money()),
        "reason" => spec(is_binary()),
        "status" => spec(is_binary()),
        "tender_id" => spec(is_binary()),
        "transaction_id" => spec(is_binary())
      })
      |> selection([
        "id",
        "location_id",
        "transaction_id",
        "tender_id",
        "reason",
        "amount_money",
        "status"
      ])
    )
  end

  def v1_retrieve_employee_role_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def revoke_token_request(data) do
    valid?(
      data,
      schema(%{
        "access_token" => spec(is_binary()),
        "client_id" => spec(is_binary()),
        "merchant_id" => spec(is_binary()),
        "revoke_only_access_token" => spec(is_boolean())
      })
      |> selection([])
    )
  end

  def list_subscription_events_request(data) do
    valid?(
      data,
      schema(%{"cursor" => spec(is_binary()), "limit" => spec(is_integer())})
      |> selection([])
    )
  end

  def invoice_recipient(data) do
    valid?(
      data,
      schema(%{
        "address" => spec(SquareUp.Schema.address()),
        "company_name" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "email_address" => spec(is_binary()),
        "family_name" => spec(is_binary()),
        "given_name" => spec(is_binary()),
        "phone_number" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def retrieve_subscription_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def calculate_loyalty_points_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "points" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def v1_bank_account(data) do
    valid?(
      data,
      schema(%{
        "account_number_suffix" => spec(is_binary()),
        "bank_name" => spec(is_binary()),
        "currency_code" => spec(is_binary()),
        "id" => spec(is_binary()),
        "merchant_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "routing_number" => spec(is_binary()),
        "type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def order_line_item_applied_discount(data) do
    valid?(
      data,
      schema(%{
        "applied_money" => spec(SquareUp.Schema.money()),
        "discount_uid" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection(["discount_uid"])
    )
  end

  def register_domain_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "status" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def bank_account(data) do
    valid?(
      data,
      schema(%{
        "account_number_suffix" => spec(is_binary()),
        "account_type" => spec(is_binary()),
        "bank_name" => spec(is_binary()),
        "country" => spec(is_binary()),
        "creditable" => spec(is_boolean()),
        "currency" => spec(is_binary()),
        "debit_mandate_reference_id" => spec(is_binary()),
        "debitable" => spec(is_boolean()),
        "fingerprint" => spec(is_binary()),
        "holder_name" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "primary_bank_identification_number" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "secondary_bank_identification_number" => spec(is_binary()),
        "status" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([
        "id",
        "account_number_suffix",
        "country",
        "currency",
        "account_type",
        "holder_name",
        "primary_bank_identification_number",
        "status",
        "creditable",
        "debitable"
      ])
    )
  end

  def list_catalog_request(data) do
    valid?(
      data,
      schema(%{"cursor" => spec(is_binary()), "types" => spec(is_binary())})
      |> selection([])
    )
  end

  def update_customer_group_request(data) do
    valid?(
      data,
      schema(%{"group" => spec(SquareUp.Schema.customer_group())})
      |> selection(["group"])
    )
  end

  def delete_customer_card_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def accumulate_loyalty_points_request(data) do
    valid?(
      data,
      schema(%{
        "accumulate_points" => spec(SquareUp.Schema.loyalty_event_accumulate_points()),
        "idempotency_key" => spec(is_binary()),
        "location_id" => spec(is_binary())
      })
      |> selection(["accumulate_points", "idempotency_key", "location_id"])
    )
  end

  def create_customer_response(data) do
    valid?(
      data,
      schema(%{
        "customer" => spec(SquareUp.Schema.customer()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def batch_retrieve_inventory_counts_response(data) do
    valid?(
      data,
      schema(%{
        "counts" => spec(coll_of(spec(SquareUp.Schema.inventory_count()))),
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def retrieve_location_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "location" => spec(SquareUp.Schema.location())
      })
      |> selection([])
    )
  end

  def list_payments_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "payments" => spec(coll_of(spec(SquareUp.Schema.payment())))
      })
      |> selection([])
    )
  end

  def search_orders_state_filter(data) do
    valid?(
      data,
      schema(%{"states" => spec(coll_of(spec(is_binary())))})
      |> selection(["states"])
    )
  end

  def accumulate_loyalty_points_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "event" => spec(SquareUp.Schema.loyalty_event())
      })
      |> selection([])
    )
  end

  def create_shift_request(data) do
    valid?(
      data,
      schema(%{"idempotency_key" => spec(is_binary()), "shift" => spec(SquareUp.Schema.shift())})
      |> selection(["shift"])
    )
  end

  def update_customer_group_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "group" => spec(SquareUp.Schema.customer_group())
      })
      |> selection([])
    )
  end

  def list_break_types_response(data) do
    valid?(
      data,
      schema(%{
        "break_types" => spec(coll_of(spec(SquareUp.Schema.break_type()))),
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def batch_retrieve_orders_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "orders" => spec(coll_of(spec(SquareUp.Schema.order())))
      })
      |> selection([])
    )
  end

  def list_transactions_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "transactions" => spec(coll_of(spec(SquareUp.Schema.transaction())))
      })
      |> selection([])
    )
  end

  def catalog_custom_attribute_value(data) do
    valid?(
      data,
      schema(%{
        "boolean_value" => spec(is_boolean()),
        "custom_attribute_definition_id" => spec(is_binary()),
        "key" => spec(is_binary()),
        "name" => spec(is_binary()),
        "number_value" => spec(is_binary()),
        "selection_uid_values" => spec(coll_of(spec(is_binary()))),
        "string_value" => spec(is_binary()),
        "type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def tip_settings(data) do
    valid?(
      data,
      schema(%{
        "allow_tipping" => spec(is_boolean()),
        "custom_tip_field" => spec(is_boolean()),
        "separate_tip_screen" => spec(is_boolean())
      })
      |> selection([])
    )
  end

  def get_bank_account_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def add_group_to_customer_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def retrieve_employee_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def list_cash_drawer_shifts_request(data) do
    valid?(
      data,
      schema(%{
        "begin_time" => spec(is_binary()),
        "cursor" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "location_id" => spec(is_binary()),
        "sort_order" => spec(is_binary())
      })
      |> selection(["location_id"])
    )
  end

  def search_shifts_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.shift_query())
      })
      |> selection([])
    )
  end

  def batch_change_inventory_request(data) do
    valid?(
      data,
      schema(%{
        "changes" => spec(coll_of(spec(SquareUp.Schema.inventory_change()))),
        "idempotency_key" => spec(is_binary()),
        "ignore_unchanged_counts" => spec(is_boolean())
      })
      |> selection([])
    )
  end

  def location_type(data) do
    valid?(data, spec(is_binary()))
  end

  def exclude_strategy(data) do
    valid?(data, spec(is_binary()))
  end

  def additional_recipient(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "description" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "receivable_id" => spec(is_binary())
      })
      |> selection(["location_id", "description", "amount_money"])
    )
  end

  def v1_payment_itemization_itemization_type(data) do
    valid?(data, spec(is_binary()))
  end

  def adjust_loyalty_points_request(data) do
    valid?(
      data,
      schema(%{
        "adjust_points" => spec(SquareUp.Schema.loyalty_event_adjust_points()),
        "idempotency_key" => spec(is_binary())
      })
      |> selection(["idempotency_key", "adjust_points"])
    )
  end

  def loyalty_event_type_filter(data) do
    valid?(
      data,
      schema(%{"types" => spec(coll_of(spec(is_binary())))})
      |> selection(["types"])
    )
  end

  def search_orders_date_time_filter(data) do
    valid?(
      data,
      schema(%{
        "closed_at" => spec(SquareUp.Schema.time_range()),
        "created_at" => spec(SquareUp.Schema.time_range()),
        "updated_at" => spec(SquareUp.Schema.time_range())
      })
      |> selection([])
    )
  end

  def cancel_invoice_request(data) do
    valid?(
      data,
      schema(%{"version" => spec(is_integer())})
      |> selection(["version"])
    )
  end

  def v1_merchant_business_type(data) do
    valid?(data, spec(is_binary()))
  end

  def calculate_loyalty_points_request(data) do
    valid?(
      data,
      schema(%{
        "order_id" => spec(is_binary()),
        "transaction_amount_money" => spec(SquareUp.Schema.money())
      })
      |> selection([])
    )
  end

  def processing_fee(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "effective_at" => spec(is_binary()),
        "type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def create_customer_card_request(data) do
    valid?(
      data,
      schema(%{
        "billing_address" => spec(SquareUp.Schema.address()),
        "card_nonce" => spec(is_binary()),
        "cardholder_name" => spec(is_binary()),
        "verification_token" => spec(is_binary())
      })
      |> selection(["card_nonce"])
    )
  end

  def filter_value(data) do
    valid?(
      data,
      schema(%{
        "all" => spec(coll_of(spec(is_binary()))),
        "any" => spec(coll_of(spec(is_binary()))),
        "none" => spec(coll_of(spec(is_binary())))
      })
      |> selection([])
    )
  end

  def retrieve_inventory_count_response(data) do
    valid?(
      data,
      schema(%{
        "counts" => spec(coll_of(spec(SquareUp.Schema.inventory_count()))),
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def dispute_evidence_file(data) do
    valid?(
      data,
      schema(%{"filename" => spec(is_binary()), "filetype" => spec(is_binary())})
      |> selection([])
    )
  end

  def loyalty_event_create_reward(data) do
    valid?(
      data,
      schema(%{
        "loyalty_program_id" => spec(is_binary()),
        "points" => spec(is_integer()),
        "reward_id" => spec(is_binary())
      })
      |> selection(["loyalty_program_id", "points"])
    )
  end

  def inventory_alert_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_payment_surcharge(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.v1_money()),
        "applied_money" => spec(SquareUp.Schema.v1_money()),
        "name" => spec(is_binary()),
        "rate" => spec(is_binary()),
        "surcharge_id" => spec(is_binary()),
        "taxable" => spec(is_boolean()),
        "taxes" => spec(coll_of(spec(SquareUp.Schema.v1_payment_tax()))),
        "type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_discount_discount_type(data) do
    valid?(data, spec(is_binary()))
  end

  def loyalty_event_source(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_quick_amounts_settings(data) do
    valid?(
      data,
      schema(%{
        "amounts" => spec(coll_of(spec(SquareUp.Schema.catalog_quick_amount()))),
        "eligible_for_auto_amounts" => spec(is_boolean()),
        "option" => spec(is_binary())
      })
      |> selection(["option"])
    )
  end

  def get_terminal_checkout_response(data) do
    valid?(
      data,
      schema(%{
        "checkout" => spec(SquareUp.Schema.terminal_checkout()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def item_variation_location_overrides(data) do
    valid?(
      data,
      schema(%{
        "inventory_alert_threshold" => spec(is_integer()),
        "inventory_alert_type" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "price_money" => spec(SquareUp.Schema.money()),
        "pricing_type" => spec(is_binary()),
        "track_inventory" => spec(is_boolean())
      })
      |> selection([])
    )
  end

  def terminal_checkout(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "cancel_reason" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "deadline_duration" => spec(is_binary()),
        "device_options" => spec(SquareUp.Schema.device_checkout_options()),
        "id" => spec(is_binary()),
        "note" => spec(is_binary()),
        "payment_ids" => spec(coll_of(spec(is_binary()))),
        "reference_id" => spec(is_binary()),
        "status" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection(["amount_money", "device_options"])
    )
  end

  def bulk_update_team_members_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "team_members" => schema(%{})
      })
      |> selection([])
    )
  end

  def loyalty_program(data) do
    valid?(
      data,
      schema(%{
        "accrual_rules" => spec(coll_of(spec(SquareUp.Schema.loyalty_program_accrual_rule()))),
        "created_at" => spec(is_binary()),
        "expiration_policy" => spec(SquareUp.Schema.loyalty_program_expiration_policy()),
        "id" => spec(is_binary()),
        "location_ids" => spec(coll_of(spec(is_binary()))),
        "reward_tiers" => spec(coll_of(spec(SquareUp.Schema.loyalty_program_reward_tier()))),
        "status" => spec(is_binary()),
        "terminology" => spec(SquareUp.Schema.loyalty_program_terminology()),
        "updated_at" => spec(is_binary())
      })
      |> selection([
        "id",
        "status",
        "reward_tiers",
        "terminology",
        "location_ids",
        "created_at",
        "updated_at",
        "accrual_rules"
      ])
    )
  end

  def v1_list_orders_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_order())))})
      |> selection([])
    )
  end

  def loyalty_event_query(data) do
    valid?(
      data,
      schema(%{"filter" => spec(SquareUp.Schema.loyalty_event_filter())})
      |> selection([])
    )
  end

  def search_orders_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "order_entries" => spec(coll_of(spec(SquareUp.Schema.order_entry()))),
        "orders" => spec(coll_of(spec(SquareUp.Schema.order())))
      })
      |> selection([])
    )
  end

  def shift_wage(data) do
    valid?(
      data,
      schema(%{"hourly_rate" => spec(SquareUp.Schema.money()), "title" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_delete_modifier_list_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def cash_drawer_shift_summary(data) do
    valid?(
      data,
      schema(%{
        "closed_at" => spec(is_binary()),
        "closed_cash_money" => spec(SquareUp.Schema.money()),
        "description" => spec(is_binary()),
        "ended_at" => spec(is_binary()),
        "expected_cash_money" => spec(SquareUp.Schema.money()),
        "id" => spec(is_binary()),
        "opened_at" => spec(is_binary()),
        "opened_cash_money" => spec(SquareUp.Schema.money()),
        "state" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def catalog_query_text(data) do
    valid?(
      data,
      schema(%{"keywords" => spec(coll_of(spec(is_binary())))})
      |> selection(["keywords"])
    )
  end

  def search_orders_source_filter(data) do
    valid?(
      data,
      schema(%{"source_names" => spec(coll_of(spec(is_binary())))})
      |> selection([])
    )
  end

  def job_assignment_pay_type(data) do
    valid?(data, spec(is_binary()))
  end

  def loyalty_event_date_time_filter(data) do
    valid?(
      data,
      schema(%{"created_at" => spec(SquareUp.Schema.time_range())})
      |> selection(["created_at"])
    )
  end

  def order_fulfillment_shipment_details(data) do
    valid?(
      data,
      schema(%{
        "cancel_reason" => spec(is_binary()),
        "canceled_at" => spec(is_binary()),
        "carrier" => spec(is_binary()),
        "expected_shipped_at" => spec(is_binary()),
        "failed_at" => spec(is_binary()),
        "failure_reason" => spec(is_binary()),
        "in_progress_at" => spec(is_binary()),
        "packaged_at" => spec(is_binary()),
        "placed_at" => spec(is_binary()),
        "recipient" => spec(SquareUp.Schema.order_fulfillment_recipient()),
        "shipped_at" => spec(is_binary()),
        "shipping_note" => spec(is_binary()),
        "shipping_type" => spec(is_binary()),
        "tracking_number" => spec(is_binary()),
        "tracking_url" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def register_domain_request(data) do
    valid?(
      data,
      schema(%{"domain_name" => spec(is_binary())})
      |> selection(["domain_name"])
    )
  end

  def v1_variation_inventory_alert_type(data) do
    valid?(data, spec(is_binary()))
  end

  def order_created(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "state" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def catalog_tax(data) do
    valid?(
      data,
      schema(%{
        "applies_to_custom_amounts" => spec(is_boolean()),
        "calculation_phase" => spec(is_binary()),
        "enabled" => spec(is_boolean()),
        "inclusion_type" => spec(is_binary()),
        "name" => spec(is_binary()),
        "percentage" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def invoice_sort_field(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_order_history_entry_action(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_list_items_request(data) do
    valid?(
      data,
      schema(%{"batch_token" => spec(is_binary())})
      |> selection([])
    )
  end

  def order_quantity_unit(data) do
    valid?(
      data,
      schema(%{
        "measurement_unit" => spec(SquareUp.Schema.measurement_unit()),
        "precision" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def v1_update_modifier_list_request_selection_type(data) do
    valid?(data, spec(is_binary()))
  end

  def create_checkout_response(data) do
    valid?(
      data,
      schema(%{
        "checkout" => spec(SquareUp.Schema.checkout()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def disputed_payment(data) do
    valid?(
      data,
      schema(%{"payment_id" => spec(is_binary())})
      |> selection([])
    )
  end

  def catalog_item_modifier_list_info(data) do
    valid?(
      data,
      schema(%{
        "enabled" => spec(is_boolean()),
        "max_selected_modifiers" => spec(is_integer()),
        "min_selected_modifiers" => spec(is_integer()),
        "modifier_list_id" => spec(is_binary()),
        "modifier_overrides" => spec(coll_of(spec(SquareUp.Schema.catalog_modifier_override())))
      })
      |> selection(["modifier_list_id"])
    )
  end

  def catalog_custom_attribute_definition_type(data) do
    valid?(data, spec(is_binary()))
  end

  def retrieve_inventory_adjustment_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def device(data) do
    valid?(
      data,
      schema(%{"id" => spec(is_binary()), "name" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_merchant_account_type(data) do
    valid?(data, spec(is_binary()))
  end

  def measurement_unit_custom(data) do
    valid?(
      data,
      schema(%{"abbreviation" => spec(is_binary()), "name" => spec(is_binary())})
      |> selection(["name", "abbreviation"])
    )
  end

  def coordinates(data) do
    valid?(
      data,
      schema(%{"latitude" => spec(is_number()), "longitude" => spec(is_number())})
      |> selection([])
    )
  end

  def list_dispute_evidence_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def order_source(data) do
    valid?(
      data,
      schema(%{"name" => spec(is_binary())})
      |> selection([])
    )
  end

  def measurement_unit_area(data) do
    valid?(data, spec(is_binary()))
  end

  def list_merchants_request(data) do
    valid?(
      data,
      schema(%{"cursor" => spec(is_integer())})
      |> selection([])
    )
  end

  def dispute_evidence_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_tender(data) do
    valid?(
      data,
      schema(%{
        "card_brand" => spec(is_binary()),
        "change_back_money" => spec(SquareUp.Schema.v1_money()),
        "employee_id" => spec(is_binary()),
        "entry_method" => spec(is_binary()),
        "id" => spec(is_binary()),
        "is_exchange" => spec(is_boolean()),
        "name" => spec(is_binary()),
        "pan_suffix" => spec(is_binary()),
        "payment_note" => spec(is_binary()),
        "receipt_url" => spec(is_binary()),
        "refunded_money" => spec(SquareUp.Schema.v1_money()),
        "settled_at" => spec(is_binary()),
        "tendered_at" => spec(is_binary()),
        "tendered_money" => spec(SquareUp.Schema.v1_money()),
        "total_money" => spec(SquareUp.Schema.v1_money()),
        "type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def delete_customer_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def delete_invoice_request(data) do
    valid?(
      data,
      schema(%{"version" => spec(is_integer())})
      |> selection([])
    )
  end

  def v1_discount(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.v1_money()),
        "color" => spec(is_binary()),
        "discount_type" => spec(is_binary()),
        "id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "pin_required" => spec(is_boolean()),
        "rate" => spec(is_binary()),
        "v2_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_list_employees_request_status(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_list_cash_drawer_shifts_request(data) do
    valid?(
      data,
      schema(%{
        "begin_time" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def loyalty_program_status(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_list_settlements_request(data) do
    valid?(
      data,
      schema(%{
        "batch_token" => spec(is_binary()),
        "begin_time" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "order" => spec(is_binary()),
        "status" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_apply_fee_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def order_line_item(data) do
    valid?(
      data,
      schema(%{
        "applied_discounts" =>
          spec(coll_of(spec(SquareUp.Schema.order_line_item_applied_discount()))),
        "applied_taxes" => spec(coll_of(spec(SquareUp.Schema.order_line_item_applied_tax()))),
        "base_price_money" => spec(SquareUp.Schema.money()),
        "catalog_object_id" => spec(is_binary()),
        "gross_sales_money" => spec(SquareUp.Schema.money()),
        "metadata" => schema(%{}),
        "modifiers" => spec(coll_of(spec(SquareUp.Schema.order_line_item_modifier()))),
        "name" => spec(is_binary()),
        "note" => spec(is_binary()),
        "quantity" => spec(is_binary()),
        "quantity_unit" => spec(SquareUp.Schema.order_quantity_unit()),
        "total_discount_money" => spec(SquareUp.Schema.money()),
        "total_money" => spec(SquareUp.Schema.money()),
        "total_tax_money" => spec(SquareUp.Schema.money()),
        "uid" => spec(is_binary()),
        "variation_name" => spec(is_binary()),
        "variation_total_price_money" => spec(SquareUp.Schema.money())
      })
      |> selection(["quantity"])
    )
  end

  def catalog_info_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "limits" => spec(SquareUp.Schema.catalog_info_response_limits()),
        "standard_unit_description_group" =>
          spec(SquareUp.Schema.standard_unit_description_group())
      })
      |> selection([])
    )
  end

  def customer_inclusion_exclusion(data) do
    valid?(data, spec(is_binary()))
  end

  def update_item_taxes_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "updated_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_retrieve_timecard_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def charge_request(data) do
    valid?(
      data,
      schema(%{
        "additional_recipients" => spec(coll_of(spec(SquareUp.Schema.additional_recipient()))),
        "amount_money" => spec(SquareUp.Schema.money()),
        "billing_address" => spec(SquareUp.Schema.address()),
        "buyer_email_address" => spec(is_binary()),
        "card_nonce" => spec(is_binary()),
        "customer_card_id" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "delay_capture" => spec(is_boolean()),
        "idempotency_key" => spec(is_binary()),
        "note" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "shipping_address" => spec(SquareUp.Schema.address()),
        "verification_token" => spec(is_binary())
      })
      |> selection(["idempotency_key", "amount_money"])
    )
  end

  def customer_sort(data) do
    valid?(
      data,
      schema(%{"field" => spec(is_binary()), "order" => spec(is_binary())})
      |> selection([])
    )
  end

  def retrieve_customer_segment_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "segment" => spec(SquareUp.Schema.customer_segment())
      })
      |> selection([])
    )
  end

  def order_updated(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "state" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def loyalty_event(data) do
    valid?(
      data,
      schema(%{
        "accumulate_points" => spec(SquareUp.Schema.loyalty_event_accumulate_points()),
        "adjust_points" => spec(SquareUp.Schema.loyalty_event_adjust_points()),
        "create_reward" => spec(SquareUp.Schema.loyalty_event_create_reward()),
        "created_at" => spec(is_binary()),
        "delete_reward" => spec(SquareUp.Schema.loyalty_event_delete_reward()),
        "expire_points" => spec(SquareUp.Schema.loyalty_event_expire_points()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "loyalty_account_id" => spec(is_binary()),
        "other_event" => spec(SquareUp.Schema.loyalty_event_other()),
        "redeem_reward" => spec(SquareUp.Schema.loyalty_event_redeem_reward()),
        "source" => spec(is_binary()),
        "type" => spec(is_binary())
      })
      |> selection(["id", "type", "created_at", "loyalty_account_id", "source"])
    )
  end

  def v1_list_refunds_request(data) do
    valid?(
      data,
      schema(%{
        "batch_token" => spec(is_binary()),
        "begin_time" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def inventory_physical_count(data) do
    valid?(
      data,
      schema(%{
        "catalog_object_id" => spec(is_binary()),
        "catalog_object_type" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "employee_id" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "occurred_at" => spec(is_binary()),
        "quantity" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "source" => spec(SquareUp.Schema.source_application()),
        "state" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def search_subscriptions_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "subscriptions" => spec(coll_of(spec(SquareUp.Schema.subscription())))
      })
      |> selection([])
    )
  end

  def renew_token_request(data) do
    valid?(
      data,
      schema(%{"access_token" => spec(is_binary())})
      |> selection([])
    )
  end

  def cancel_subscription_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "subscription" => spec(SquareUp.Schema.subscription())
      })
      |> selection([])
    )
  end

  def list_customers_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "sort_field" => spec(is_binary()),
        "sort_order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_page_cell_object_type(data) do
    valid?(data, spec(is_binary()))
  end

  def get_bank_account_response(data) do
    valid?(
      data,
      schema(%{
        "bank_account" => spec(SquareUp.Schema.bank_account()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def loyalty_event_filter(data) do
    valid?(
      data,
      schema(%{
        "date_time_filter" => spec(SquareUp.Schema.loyalty_event_date_time_filter()),
        "location_filter" => spec(SquareUp.Schema.loyalty_event_location_filter()),
        "loyalty_account_filter" => spec(SquareUp.Schema.loyalty_event_loyalty_account_filter()),
        "order_filter" => spec(SquareUp.Schema.loyalty_event_order_filter()),
        "type_filter" => spec(SquareUp.Schema.loyalty_event_type_filter())
      })
      |> selection([])
    )
  end

  def v1_variation_pricing_type(data) do
    valid?(data, spec(is_binary()))
  end

  def create_customer_card_response(data) do
    valid?(
      data,
      schema(%{
        "card" => spec(SquareUp.Schema.card()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def revoke_token_response(data) do
    valid?(
      data,
      schema(%{"success" => spec(is_boolean())})
      |> selection([])
    )
  end

  def break(data) do
    valid?(
      data,
      schema(%{
        "break_type_id" => spec(is_binary()),
        "end_at" => spec(is_binary()),
        "expected_duration" => spec(is_binary()),
        "id" => spec(is_binary()),
        "is_paid" => spec(is_boolean()),
        "name" => spec(is_binary()),
        "start_at" => spec(is_binary())
      })
      |> selection(["start_at", "break_type_id", "name", "expected_duration", "is_paid"])
    )
  end

  def catalog_custom_attribute_definition_number_config(data) do
    valid?(
      data,
      schema(%{"precision" => spec(is_integer())})
      |> selection([])
    )
  end

  def workweek_config(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "start_of_day_local_time" => spec(is_binary()),
        "start_of_week" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection(["start_of_week", "start_of_day_local_time"])
    )
  end

  def error(data) do
    valid?(
      data,
      schema(%{
        "category" => spec(is_binary()),
        "code" => spec(is_binary()),
        "detail" => spec(is_binary()),
        "field" => spec(is_binary())
      })
      |> selection(["category", "code"])
    )
  end

  def bulk_create_team_members_request(data) do
    valid?(
      data,
      schema(%{"team_members" => schema(%{})})
      |> selection(["team_members"])
    )
  end

  def search_catalog_objects_request(data) do
    valid?(
      data,
      schema(%{
        "begin_time" => spec(is_binary()),
        "cursor" => spec(is_binary()),
        "include_deleted_objects" => spec(is_boolean()),
        "include_related_objects" => spec(is_boolean()),
        "limit" => spec(is_integer()),
        "object_types" => spec(coll_of(spec(is_binary()))),
        "query" => spec(SquareUp.Schema.catalog_query())
      })
      |> selection([])
    )
  end

  def v1_remove_fee_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_settlement_entry_type(data) do
    valid?(data, spec(is_binary()))
  end

  def accept_dispute_response(data) do
    valid?(
      data,
      schema(%{
        "dispute" => spec(SquareUp.Schema.dispute()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def order_fulfillment_pickup_details_schedule_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_delete_item_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def retrieve_merchant_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "merchant" => spec(SquareUp.Schema.merchant())
      })
      |> selection([])
    )
  end

  def v1_list_timecard_events_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_modifier_list(data) do
    valid?(
      data,
      schema(%{
        "id" => spec(is_binary()),
        "modifier_options" => spec(coll_of(spec(SquareUp.Schema.v1_modifier_option()))),
        "name" => spec(is_binary()),
        "selection_type" => spec(is_binary()),
        "v2_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def loyalty_program_reward_definition_scope(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_timecard(data) do
    valid?(
      data,
      schema(%{
        "clockin_location_id" => spec(is_binary()),
        "clockin_time" => spec(is_binary()),
        "clockout_location_id" => spec(is_binary()),
        "clockout_time" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "deleted" => spec(is_boolean()),
        "doubletime_seconds_worked" => spec(is_number()),
        "employee_id" => spec(is_binary()),
        "id" => spec(is_binary()),
        "overtime_seconds_worked" => spec(is_number()),
        "regular_seconds_worked" => spec(is_number()),
        "updated_at" => spec(is_binary())
      })
      |> selection(["employee_id"])
    )
  end

  def weekday(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_list_categories_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_category())))})
      |> selection([])
    )
  end

  def shift_sort(data) do
    valid?(
      data,
      schema(%{"field" => spec(is_binary()), "order" => spec(is_binary())})
      |> selection([])
    )
  end

  def terminal_checkout_query_sort(data) do
    valid?(
      data,
      schema(%{"sort_order" => spec(is_binary())})
      |> selection([])
    )
  end

  def order_fulfillment_updated_update(data) do
    valid?(
      data,
      schema(%{
        "fulfillment_uid" => spec(is_binary()),
        "new_state" => spec(is_binary()),
        "old_state" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_delete_page_cell_request(data) do
    valid?(
      data,
      schema(%{"column" => spec(is_binary()), "row" => spec(is_binary())})
      |> selection([])
    )
  end

  def update_customer_request(data) do
    valid?(
      data,
      schema(%{
        "address" => spec(SquareUp.Schema.address()),
        "birthday" => spec(is_binary()),
        "company_name" => spec(is_binary()),
        "email_address" => spec(is_binary()),
        "family_name" => spec(is_binary()),
        "given_name" => spec(is_binary()),
        "nickname" => spec(is_binary()),
        "note" => spec(is_binary()),
        "phone_number" => spec(is_binary()),
        "reference_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def catalog_object_batch(data) do
    valid?(
      data,
      schema(%{"objects" => spec(coll_of(spec(SquareUp.Schema.catalog_object())))})
      |> selection(["objects"])
    )
  end

  def v1_create_discount_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_discount())})
      |> selection([])
    )
  end

  def order_state(data) do
    valid?(data, spec(is_binary()))
  end

  def update_invoice_request(data) do
    valid?(
      data,
      schema(%{
        "fields_to_clear" => spec(coll_of(spec(is_binary()))),
        "idempotency_key" => spec(is_binary()),
        "invoice" => spec(SquareUp.Schema.invoice())
      })
      |> selection(["invoice"])
    )
  end

  def merchant(data) do
    valid?(
      data,
      schema(%{
        "business_name" => spec(is_binary()),
        "country" => spec(is_binary()),
        "currency" => spec(is_binary()),
        "id" => spec(is_binary()),
        "language_code" => spec(is_binary()),
        "main_location_id" => spec(is_binary()),
        "status" => spec(is_binary())
      })
      |> selection(["country"])
    )
  end

  def v1_create_variation_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_variation())})
      |> selection([])
    )
  end

  def product_type(data) do
    valid?(data, spec(is_binary()))
  end

  def submit_evidence_response(data) do
    valid?(
      data,
      schema(%{
        "dispute" => spec(SquareUp.Schema.dispute()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def tender_card_details_status(data) do
    valid?(data, spec(is_binary()))
  end

  def invoice_request_type(data) do
    valid?(data, spec(is_binary()))
  end

  def order_line_item_applied_tax(data) do
    valid?(
      data,
      schema(%{
        "applied_money" => spec(SquareUp.Schema.money()),
        "tax_uid" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection(["tax_uid"])
    )
  end

  def order_line_item_modifier(data) do
    valid?(
      data,
      schema(%{
        "base_price_money" => spec(SquareUp.Schema.money()),
        "catalog_object_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "total_price_money" => spec(SquareUp.Schema.money()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_payment_tax_inclusion_type(data) do
    valid?(data, spec(is_binary()))
  end

  def tender_bank_transfer_details(data) do
    valid?(
      data,
      schema(%{"status" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_item_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_update_category_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_category())})
      |> selection(["body"])
    )
  end

  def retrieve_merchant_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def create_team_member_request(data) do
    valid?(
      data,
      schema(%{
        "idempotency_key" => spec(is_binary()),
        "team_member" => spec(SquareUp.Schema.team_member())
      })
      |> selection([])
    )
  end

  def update_workweek_config_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "workweek_config" => spec(SquareUp.Schema.workweek_config())
      })
      |> selection([])
    )
  end

  def retrieve_loyalty_reward_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "reward" => spec(SquareUp.Schema.loyalty_reward())
      })
      |> selection([])
    )
  end

  def adjust_loyalty_points_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "event" => spec(SquareUp.Schema.loyalty_event())
      })
      |> selection([])
    )
  end

  def catalog_item(data) do
    valid?(
      data,
      schema(%{
        "abbreviation" => spec(is_binary()),
        "available_electronically" => spec(is_boolean()),
        "available_for_pickup" => spec(is_boolean()),
        "available_online" => spec(is_boolean()),
        "category_id" => spec(is_binary()),
        "description" => spec(is_binary()),
        "item_options" => spec(coll_of(spec(SquareUp.Schema.catalog_item_option_for_item()))),
        "label_color" => spec(is_binary()),
        "modifier_list_info" =>
          spec(coll_of(spec(SquareUp.Schema.catalog_item_modifier_list_info()))),
        "name" => spec(is_binary()),
        "product_type" => spec(is_binary()),
        "skip_modifier_screen" => spec(is_boolean()),
        "tax_ids" => spec(coll_of(spec(is_binary()))),
        "variations" => spec(coll_of(spec(SquareUp.Schema.catalog_object())))
      })
      |> selection([])
    )
  end

  def customer_filter(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(SquareUp.Schema.time_range()),
        "creation_source" => spec(SquareUp.Schema.customer_creation_source_filter()),
        "email_address" => spec(SquareUp.Schema.customer_text_filter()),
        "group_ids" => spec(SquareUp.Schema.filter_value()),
        "phone_number" => spec(SquareUp.Schema.customer_text_filter()),
        "reference_id" => spec(SquareUp.Schema.customer_text_filter()),
        "updated_at" => spec(SquareUp.Schema.time_range())
      })
      |> selection([])
    )
  end

  def batch_delete_catalog_objects_response(data) do
    valid?(
      data,
      schema(%{
        "deleted_at" => spec(is_binary()),
        "deleted_object_ids" => spec(coll_of(spec(is_binary()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def list_payment_refunds_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "refunds" => spec(coll_of(spec(SquareUp.Schema.payment_refund())))
      })
      |> selection([])
    )
  end

  def batch_retrieve_orders_request(data) do
    valid?(
      data,
      schema(%{
        "location_id" => spec(is_binary()),
        "order_ids" => spec(coll_of(spec(is_binary())))
      })
      |> selection(["order_ids"])
    )
  end

  def retrieve_location_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def dispute(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "brand_dispute_id" => spec(is_binary()),
        "card_brand" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "dispute_id" => spec(is_binary()),
        "disputed_payment" => spec(SquareUp.Schema.disputed_payment()),
        "due_at" => spec(is_binary()),
        "evidence_ids" => spec(coll_of(spec(is_binary()))),
        "location_id" => spec(is_binary()),
        "reason" => spec(is_binary()),
        "reported_date" => spec(is_binary()),
        "state" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def invoice_filter(data) do
    valid?(
      data,
      schema(%{
        "customer_ids" => spec(coll_of(spec(is_binary()))),
        "location_ids" => spec(coll_of(spec(is_binary())))
      })
      |> selection(["location_ids"])
    )
  end

  def v1_employee_role_permissions(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_create_page_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_page())})
      |> selection([])
    )
  end

  def order(data) do
    valid?(
      data,
      schema(%{
        "closed_at" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "discounts" => spec(coll_of(spec(SquareUp.Schema.order_line_item_discount()))),
        "fulfillments" => spec(coll_of(spec(SquareUp.Schema.order_fulfillment()))),
        "id" => spec(is_binary()),
        "line_items" => spec(coll_of(spec(SquareUp.Schema.order_line_item()))),
        "location_id" => spec(is_binary()),
        "metadata" => schema(%{}),
        "net_amounts" => spec(SquareUp.Schema.order_money_amounts()),
        "pricing_options" => spec(SquareUp.Schema.order_pricing_options()),
        "reference_id" => spec(is_binary()),
        "refunds" => spec(coll_of(spec(SquareUp.Schema.refund()))),
        "return_amounts" => spec(SquareUp.Schema.order_money_amounts()),
        "returns" => spec(coll_of(spec(SquareUp.Schema.order_return()))),
        "rewards" => spec(coll_of(spec(SquareUp.Schema.order_reward()))),
        "rounding_adjustment" => spec(SquareUp.Schema.order_rounding_adjustment()),
        "service_charges" => spec(coll_of(spec(SquareUp.Schema.order_service_charge()))),
        "source" => spec(SquareUp.Schema.order_source()),
        "state" => spec(is_binary()),
        "taxes" => spec(coll_of(spec(SquareUp.Schema.order_line_item_tax()))),
        "tenders" => spec(coll_of(spec(SquareUp.Schema.tender()))),
        "total_discount_money" => spec(SquareUp.Schema.money()),
        "total_money" => spec(SquareUp.Schema.money()),
        "total_service_charge_money" => spec(SquareUp.Schema.money()),
        "total_tax_money" => spec(SquareUp.Schema.money()),
        "total_tip_money" => spec(SquareUp.Schema.money()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection(["location_id"])
    )
  end

  def measurement_unit(data) do
    valid?(
      data,
      schema(%{
        "area_unit" => spec(is_binary()),
        "custom_unit" => spec(SquareUp.Schema.measurement_unit_custom()),
        "generic_unit" => spec(is_binary()),
        "length_unit" => spec(is_binary()),
        "time_unit" => spec(is_binary()),
        "type" => spec(is_binary()),
        "volume_unit" => spec(is_binary()),
        "weight_unit" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def loyalty_event_adjust_points(data) do
    valid?(
      data,
      schema(%{
        "loyalty_program_id" => spec(is_binary()),
        "points" => spec(is_integer()),
        "reason" => spec(is_binary())
      })
      |> selection(["points"])
    )
  end

  def catalog_discount_modify_tax_basis(data) do
    valid?(data, spec(is_binary()))
  end

  def search_team_members_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.search_team_members_query())
      })
      |> selection([])
    )
  end

  def catalog_custom_attribute_definition_app_visibility(data) do
    valid?(data, spec(is_binary()))
  end

  def list_loyalty_programs_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def loyalty_event_type(data) do
    valid?(data, spec(is_binary()))
  end

  def update_shift_request(data) do
    valid?(
      data,
      schema(%{"shift" => spec(SquareUp.Schema.shift())})
      |> selection(["shift"])
    )
  end

  def catalog_item_product_type(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_quick_amount_type(data) do
    valid?(data, spec(is_binary()))
  end

  def pay_order_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "order" => spec(SquareUp.Schema.order())
      })
      |> selection([])
    )
  end

  def team_member_assigned_locations_assignment_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_payment_item_detail(data) do
    valid?(
      data,
      schema(%{
        "category_name" => spec(is_binary()),
        "item_id" => spec(is_binary()),
        "item_variation_id" => spec(is_binary()),
        "sku" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_item(data) do
    valid?(
      data,
      schema(%{
        "abbreviation" => spec(is_binary()),
        "available_for_pickup" => spec(is_boolean()),
        "available_online" => spec(is_boolean()),
        "category" => spec(SquareUp.Schema.v1_category()),
        "category_id" => spec(is_binary()),
        "color" => spec(is_binary()),
        "description" => spec(is_binary()),
        "fees" => spec(coll_of(spec(SquareUp.Schema.v1_fee()))),
        "id" => spec(is_binary()),
        "master_image" => spec(SquareUp.Schema.v1_item_image()),
        "modifier_lists" => spec(coll_of(spec(SquareUp.Schema.v1_modifier_list()))),
        "name" => spec(is_binary()),
        "taxable" => spec(is_boolean()),
        "type" => spec(is_binary()),
        "v2_id" => spec(is_binary()),
        "variations" => spec(coll_of(spec(SquareUp.Schema.v1_variation()))),
        "visibility" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def update_break_type_request(data) do
    valid?(
      data,
      schema(%{"break_type" => spec(SquareUp.Schema.break_type())})
      |> selection(["break_type"])
    )
  end

  def create_order_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "order" => spec(SquareUp.Schema.order())
      })
      |> selection([])
    )
  end

  def v1_remove_modifier_list_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_settlement_status(data) do
    valid?(data, spec(is_binary()))
  end

  def search_orders_filter(data) do
    valid?(
      data,
      schema(%{
        "customer_filter" => spec(SquareUp.Schema.search_orders_customer_filter()),
        "date_time_filter" => spec(SquareUp.Schema.search_orders_date_time_filter()),
        "fulfillment_filter" => spec(SquareUp.Schema.search_orders_fulfillment_filter()),
        "source_filter" => spec(SquareUp.Schema.search_orders_source_filter()),
        "state_filter" => spec(SquareUp.Schema.search_orders_state_filter())
      })
      |> selection([])
    )
  end

  def delete_break_type_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def order_line_item_tax(data) do
    valid?(
      data,
      schema(%{
        "applied_money" => spec(SquareUp.Schema.money()),
        "catalog_object_id" => spec(is_binary()),
        "metadata" => schema(%{}),
        "name" => spec(is_binary()),
        "percentage" => spec(is_binary()),
        "scope" => spec(is_binary()),
        "type" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_delete_discount_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def get_break_type_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def customer_creation_source(data) do
    valid?(data, spec(is_binary()))
  end

  def checkout(data) do
    valid?(
      data,
      schema(%{
        "additional_recipients" => spec(coll_of(spec(SquareUp.Schema.additional_recipient()))),
        "ask_for_shipping_address" => spec(is_boolean()),
        "checkout_page_url" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "merchant_support_email" => spec(is_binary()),
        "order" => spec(SquareUp.Schema.order()),
        "pre_populate_buyer_email" => spec(is_binary()),
        "pre_populate_shipping_address" => spec(SquareUp.Schema.address()),
        "redirect_url" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def catalog_custom_attribute_definition_string_config(data) do
    valid?(
      data,
      schema(%{"enforce_uniqueness" => spec(is_boolean())})
      |> selection([])
    )
  end

  def cancel_payment_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_retrieve_order_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def remove_group_from_customer_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def retrieve_customer_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def update_order_request(data) do
    valid?(
      data,
      schema(%{
        "fields_to_clear" => spec(coll_of(spec(is_binary()))),
        "idempotency_key" => spec(is_binary()),
        "order" => spec(SquareUp.Schema.order())
      })
      |> selection([])
    )
  end

  def list_locations_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "locations" => spec(coll_of(spec(SquareUp.Schema.location())))
      })
      |> selection([])
    )
  end

  def catalog_query_item_variations_for_item_option_values(data) do
    valid?(
      data,
      schema(%{"item_option_value_ids" => spec(coll_of(spec(is_binary())))})
      |> selection([])
    )
  end

  def v1_page_cell_placeholder_type(data) do
    valid?(data, spec(is_binary()))
  end

  def complete_payment_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def cancel_subscription_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def batch_upsert_catalog_objects_request(data) do
    valid?(
      data,
      schema(%{
        "batches" => spec(coll_of(spec(SquareUp.Schema.catalog_object_batch()))),
        "idempotency_key" => spec(is_binary())
      })
      |> selection(["idempotency_key", "batches"])
    )
  end

  def location(data) do
    valid?(
      data,
      schema(%{
        "address" => spec(SquareUp.Schema.address()),
        "business_email" => spec(is_binary()),
        "business_hours" => spec(SquareUp.Schema.business_hours()),
        "business_name" => spec(is_binary()),
        "capabilities" => spec(coll_of(spec(is_binary()))),
        "coordinates" => spec(SquareUp.Schema.coordinates()),
        "country" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "currency" => spec(is_binary()),
        "description" => spec(is_binary()),
        "facebook_url" => spec(is_binary()),
        "id" => spec(is_binary()),
        "instagram_username" => spec(is_binary()),
        "language_code" => spec(is_binary()),
        "logo_url" => spec(is_binary()),
        "mcc" => spec(is_binary()),
        "merchant_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "phone_number" => spec(is_binary()),
        "pos_background_url" => spec(is_binary()),
        "status" => spec(is_binary()),
        "timezone" => spec(is_binary()),
        "twitter_username" => spec(is_binary()),
        "type" => spec(is_binary()),
        "website_url" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def inventory_change(data) do
    valid?(
      data,
      schema(%{
        "adjustment" => spec(SquareUp.Schema.inventory_adjustment()),
        "physical_count" => spec(SquareUp.Schema.inventory_physical_count()),
        "transfer" => spec(SquareUp.Schema.inventory_transfer()),
        "type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def ecom_visibility(data) do
    valid?(data, spec(is_binary()))
  end

  def loyalty_event_location_filter(data) do
    valid?(
      data,
      schema(%{"location_ids" => spec(coll_of(spec(is_binary())))})
      |> selection(["location_ids"])
    )
  end

  def invoice_request_method(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_update_order_request_action(data) do
    valid?(data, spec(is_binary()))
  end

  def publish_invoice_request(data) do
    valid?(
      data,
      schema(%{"idempotency_key" => spec(is_binary()), "version" => spec(is_integer())})
      |> selection(["version"])
    )
  end

  def cancel_payment_by_idempotency_key_request(data) do
    valid?(
      data,
      schema(%{"idempotency_key" => spec(is_binary())})
      |> selection(["idempotency_key"])
    )
  end

  def search_invoices_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.invoice_query())
      })
      |> selection(["query"])
    )
  end

  def catalog_item_option_for_item(data) do
    valid?(
      data,
      schema(%{"item_option_id" => spec(is_binary())})
      |> selection([])
    )
  end

  def invoice_query(data) do
    valid?(
      data,
      schema(%{
        "filter" => spec(SquareUp.Schema.invoice_filter()),
        "sort" => spec(SquareUp.Schema.invoice_sort())
      })
      |> selection(["filter"])
    )
  end

  def catalog_item_variation(data) do
    valid?(
      data,
      schema(%{
        "inventory_alert_threshold" => spec(is_integer()),
        "inventory_alert_type" => spec(is_binary()),
        "item_id" => spec(is_binary()),
        "item_option_values" =>
          spec(coll_of(spec(SquareUp.Schema.catalog_item_option_value_for_item_variation()))),
        "location_overrides" =>
          spec(coll_of(spec(SquareUp.Schema.item_variation_location_overrides()))),
        "measurement_unit_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "ordinal" => spec(is_integer()),
        "price_money" => spec(SquareUp.Schema.money()),
        "pricing_type" => spec(is_binary()),
        "service_duration" => spec(is_integer()),
        "sku" => spec(is_binary()),
        "track_inventory" => spec(is_boolean()),
        "upc" => spec(is_binary()),
        "user_data" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def upsert_catalog_object_request(data) do
    valid?(
      data,
      schema(%{
        "idempotency_key" => spec(is_binary()),
        "object" => spec(SquareUp.Schema.catalog_object())
      })
      |> selection(["idempotency_key", "object"])
    )
  end

  def break_type(data) do
    valid?(
      data,
      schema(%{
        "break_name" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "expected_duration" => spec(is_binary()),
        "id" => spec(is_binary()),
        "is_paid" => spec(is_boolean()),
        "location_id" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection(["location_id", "break_name", "expected_duration", "is_paid"])
    )
  end

  def v1_delete_fee_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def create_terminal_checkout_response(data) do
    valid?(
      data,
      schema(%{
        "checkout" => spec(SquareUp.Schema.terminal_checkout()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def capture_transaction_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def subscription_event(data) do
    valid?(
      data,
      schema(%{
        "effective_date" => spec(is_binary()),
        "id" => spec(is_binary()),
        "plan_id" => spec(is_binary()),
        "subscription_event_type" => spec(is_binary())
      })
      |> selection(["id", "subscription_event_type", "effective_date", "plan_id"])
    )
  end

  def v1_bank_account_type(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_info_response_limits(data) do
    valid?(
      data,
      schema(%{
        "batch_delete_max_object_ids" => spec(is_integer()),
        "batch_retrieve_max_object_ids" => spec(is_integer()),
        "batch_upsert_max_objects_per_batch" => spec(is_integer()),
        "batch_upsert_max_total_objects" => spec(is_integer()),
        "search_max_page_limit" => spec(is_integer()),
        "update_item_modifier_lists_max_item_ids" => spec(is_integer()),
        "update_item_modifier_lists_max_modifier_lists_to_disable" => spec(is_integer()),
        "update_item_modifier_lists_max_modifier_lists_to_enable" => spec(is_integer()),
        "update_item_taxes_max_item_ids" => spec(is_integer()),
        "update_item_taxes_max_taxes_to_disable" => spec(is_integer()),
        "update_item_taxes_max_taxes_to_enable" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def retrieve_dispute_evidence_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "evidence" => spec(SquareUp.Schema.dispute_evidence())
      })
      |> selection([])
    )
  end

  def loyalty_program_terminology(data) do
    valid?(
      data,
      schema(%{"one" => spec(is_binary()), "other" => spec(is_binary())})
      |> selection(["one", "other"])
    )
  end

  def catalog_measurement_unit(data) do
    valid?(
      data,
      schema(%{
        "measurement_unit" => spec(SquareUp.Schema.measurement_unit()),
        "precision" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def subscription_status(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_modifier_list_selection_type(data) do
    valid?(data, spec(is_binary()))
  end

  def order_return_line_item(data) do
    valid?(
      data,
      schema(%{
        "applied_discounts" =>
          spec(coll_of(spec(SquareUp.Schema.order_line_item_applied_discount()))),
        "applied_taxes" => spec(coll_of(spec(SquareUp.Schema.order_line_item_applied_tax()))),
        "base_price_money" => spec(SquareUp.Schema.money()),
        "catalog_object_id" => spec(is_binary()),
        "gross_return_money" => spec(SquareUp.Schema.money()),
        "name" => spec(is_binary()),
        "note" => spec(is_binary()),
        "quantity" => spec(is_binary()),
        "quantity_unit" => spec(SquareUp.Schema.order_quantity_unit()),
        "return_modifiers" =>
          spec(coll_of(spec(SquareUp.Schema.order_return_line_item_modifier()))),
        "source_line_item_uid" => spec(is_binary()),
        "total_discount_money" => spec(SquareUp.Schema.money()),
        "total_money" => spec(SquareUp.Schema.money()),
        "total_tax_money" => spec(SquareUp.Schema.money()),
        "uid" => spec(is_binary()),
        "variation_name" => spec(is_binary()),
        "variation_total_price_money" => spec(SquareUp.Schema.money())
      })
      |> selection(["quantity"])
    )
  end

  def cancel_terminal_checkout_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def loyalty_program_reward_definition(data) do
    valid?(
      data,
      schema(%{
        "catalog_object_ids" => spec(coll_of(spec(is_binary()))),
        "discount_type" => spec(is_binary()),
        "fixed_discount_money" => spec(SquareUp.Schema.money()),
        "max_discount_money" => spec(SquareUp.Schema.money()),
        "percentage_discount" => spec(is_binary()),
        "scope" => spec(is_binary())
      })
      |> selection(["scope", "discount_type"])
    )
  end

  def charge_request_additional_recipient(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "description" => spec(is_binary()),
        "location_id" => spec(is_binary())
      })
      |> selection(["location_id", "description", "amount_money"])
    )
  end

  def catalog_query_items_for_modifier_list(data) do
    valid?(
      data,
      schema(%{"modifier_list_ids" => spec(coll_of(spec(is_binary())))})
      |> selection(["modifier_list_ids"])
    )
  end

  def v1_list_timecard_events_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_timecard_event())))})
      |> selection([])
    )
  end

  def v1_retrieve_settlement_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_delete_timecard_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def list_catalog_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "objects" => spec(coll_of(spec(SquareUp.Schema.catalog_object())))
      })
      |> selection([])
    )
  end

  def list_customers_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "customers" => spec(coll_of(spec(SquareUp.Schema.customer()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def range(data) do
    valid?(
      data,
      schema(%{"max" => spec(is_binary()), "min" => spec(is_binary())})
      |> selection([])
    )
  end

  def shift_filter_status(data) do
    valid?(data, spec(is_binary()))
  end

  def list_transactions_request(data) do
    valid?(
      data,
      schema(%{
        "begin_time" => spec(is_binary()),
        "cursor" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "sort_order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def update_customer_response(data) do
    valid?(
      data,
      schema(%{
        "customer" => spec(SquareUp.Schema.customer()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def v1_list_fees_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def update_subscription_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "subscription" => spec(SquareUp.Schema.subscription())
      })
      |> selection([])
    )
  end

  def catalog_discount(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "discount_type" => spec(is_binary()),
        "label_color" => spec(is_binary()),
        "modify_tax_basis" => spec(is_binary()),
        "name" => spec(is_binary()),
        "percentage" => spec(is_binary()),
        "pin_required" => spec(is_boolean())
      })
      |> selection([])
    )
  end

  def v1_apply_modifier_list_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def retrieve_inventory_changes_response(data) do
    valid?(
      data,
      schema(%{
        "changes" => spec(coll_of(spec(SquareUp.Schema.inventory_change()))),
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def subscription(data) do
    valid?(
      data,
      schema(%{
        "canceled_date" => spec(is_binary()),
        "card_id" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "id" => spec(is_binary()),
        "invoice_ids" => spec(coll_of(spec(is_binary()))),
        "location_id" => spec(is_binary()),
        "paid_until_date" => spec(is_binary()),
        "plan_id" => spec(is_binary()),
        "price_override_money" => spec(SquareUp.Schema.money()),
        "start_date" => spec(is_binary()),
        "status" => spec(is_binary()),
        "tax_percentage" => spec(is_binary()),
        "timezone" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def get_invoice_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "invoice" => spec(SquareUp.Schema.invoice())
      })
      |> selection([])
    )
  end

  def loyalty_event_other(data) do
    valid?(
      data,
      schema(%{"loyalty_program_id" => spec(is_binary()), "points" => spec(is_integer())})
      |> selection(["loyalty_program_id", "points"])
    )
  end

  def inventory_count(data) do
    valid?(
      data,
      schema(%{
        "calculated_at" => spec(is_binary()),
        "catalog_object_id" => spec(is_binary()),
        "catalog_object_type" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "quantity" => spec(is_binary()),
        "state" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def pay_order_request(data) do
    valid?(
      data,
      schema(%{
        "idempotency_key" => spec(is_binary()),
        "order_version" => spec(is_integer()),
        "payment_ids" => spec(coll_of(spec(is_binary())))
      })
      |> selection(["idempotency_key"])
    )
  end

  def retrieve_loyalty_account_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def catalog_product_set(data) do
    valid?(
      data,
      schema(%{
        "all_products" => spec(is_boolean()),
        "name" => spec(is_binary()),
        "product_ids_all" => spec(coll_of(spec(is_binary()))),
        "product_ids_any" => spec(coll_of(spec(is_binary()))),
        "quantity_exact" => spec(is_integer()),
        "quantity_max" => spec(is_integer()),
        "quantity_min" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def list_device_codes_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "product_type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def shift_filter(data) do
    valid?(
      data,
      schema(%{
        "employee_ids" => spec(coll_of(spec(is_binary()))),
        "end" => spec(SquareUp.Schema.time_range()),
        "location_ids" => spec(coll_of(spec(is_binary()))),
        "start" => spec(SquareUp.Schema.time_range()),
        "status" => spec(is_binary()),
        "team_member_ids" => spec(coll_of(spec(is_binary()))),
        "workday" => spec(SquareUp.Schema.shift_workday())
      })
      |> selection(["location_ids", "team_member_ids"])
    )
  end

  def v1_create_item_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_item())})
      |> selection([])
    )
  end

  def list_cash_drawer_shift_events_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "location_id" => spec(is_binary())
      })
      |> selection(["location_id"])
    )
  end

  def inventory_state(data) do
    valid?(data, spec(is_binary()))
  end

  def update_wage_setting_request(data) do
    valid?(
      data,
      schema(%{"wage_setting" => spec(SquareUp.Schema.wage_setting())})
      |> selection(["wage_setting"])
    )
  end

  def order_fulfillment_pickup_details_curbside_pickup_details(data) do
    valid?(
      data,
      schema(%{"buyer_arrived_at" => spec(is_binary()), "curbside_details" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_list_cash_drawer_shifts_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_cash_drawer_shift())))})
      |> selection([])
    )
  end

  def batch_upsert_catalog_objects_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "id_mappings" => spec(coll_of(spec(SquareUp.Schema.catalog_id_mapping()))),
        "objects" => spec(coll_of(spec(SquareUp.Schema.catalog_object()))),
        "updated_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def create_terminal_checkout_request(data) do
    valid?(
      data,
      schema(%{
        "checkout" => spec(SquareUp.Schema.terminal_checkout()),
        "idempotency_key" => spec(is_binary())
      })
      |> selection(["idempotency_key", "checkout"])
    )
  end

  def v1_list_refunds_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_refund())))})
      |> selection([])
    )
  end

  def tax_calculation_phase(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_list_locations_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def shift_workday_matcher(data) do
    valid?(data, spec(is_binary()))
  end

  def order_updated_object(data) do
    valid?(
      data,
      schema(%{"order_updated" => spec(SquareUp.Schema.order_updated())})
      |> selection([])
    )
  end

  def v1_discount_color(data) do
    valid?(data, spec(is_binary()))
  end

  def device_details(data) do
    valid?(
      data,
      schema(%{"device_id" => spec(is_binary()), "device_name" => spec(is_binary())})
      |> selection([])
    )
  end

  def loyalty_account_mapping(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "type" => spec(is_binary()),
        "value" => spec(is_binary())
      })
      |> selection(["type", "value"])
    )
  end

  def list_merchants_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_integer()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "merchant" => spec(coll_of(spec(SquareUp.Schema.merchant())))
      })
      |> selection([])
    )
  end

  def device_code_status(data) do
    valid?(data, spec(is_binary()))
  end

  def order_fulfillment_type(data) do
    valid?(data, spec(is_binary()))
  end

  def create_break_type_request(data) do
    valid?(
      data,
      schema(%{
        "break_type" => spec(SquareUp.Schema.break_type()),
        "idempotency_key" => spec(is_binary())
      })
      |> selection(["break_type"])
    )
  end

  def update_break_type_response(data) do
    valid?(
      data,
      schema(%{
        "break_type" => spec(SquareUp.Schema.break_type()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def order_fulfillment_recipient(data) do
    valid?(
      data,
      schema(%{
        "address" => spec(SquareUp.Schema.address()),
        "customer_id" => spec(is_binary()),
        "display_name" => spec(is_binary()),
        "email_address" => spec(is_binary()),
        "phone_number" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def refund_status(data) do
    valid?(data, spec(is_binary()))
  end

  def delete_loyalty_reward_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def loyalty_program_reward_tier(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "definition" => spec(SquareUp.Schema.loyalty_program_reward_definition()),
        "id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "points" => spec(is_integer())
      })
      |> selection(["id", "points", "name", "definition", "created_at"])
    )
  end

  def order_line_item_tax_type(data) do
    valid?(data, spec(is_binary()))
  end

  def order_fulfillment_updated(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "fulfillment_update" =>
          spec(coll_of(spec(SquareUp.Schema.order_fulfillment_updated_update()))),
        "location_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "state" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def balance_payment_details(data) do
    valid?(
      data,
      schema(%{"account_id" => spec(is_binary()), "status" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_employee_status(data) do
    valid?(data, spec(is_binary()))
  end

  def create_customer_group_request(data) do
    valid?(
      data,
      schema(%{
        "group" => spec(SquareUp.Schema.customer_group()),
        "idempotency_key" => spec(is_binary())
      })
      |> selection(["group"])
    )
  end

  def catalog_query(data) do
    valid?(
      data,
      schema(%{
        "exact_query" => spec(SquareUp.Schema.catalog_query_exact()),
        "item_variations_for_item_option_values_query" =>
          spec(SquareUp.Schema.catalog_query_item_variations_for_item_option_values()),
        "items_for_item_options_query" =>
          spec(SquareUp.Schema.catalog_query_items_for_item_options()),
        "items_for_modifier_list_query" =>
          spec(SquareUp.Schema.catalog_query_items_for_modifier_list()),
        "items_for_tax_query" => spec(SquareUp.Schema.catalog_query_items_for_tax()),
        "prefix_query" => spec(SquareUp.Schema.catalog_query_prefix()),
        "range_query" => spec(SquareUp.Schema.catalog_query_range()),
        "sorted_attribute_query" => spec(SquareUp.Schema.catalog_query_sorted_attribute()),
        "text_query" => spec(SquareUp.Schema.catalog_query_text())
      })
      |> selection([])
    )
  end

  def v1_payment_modifier(data) do
    valid?(
      data,
      schema(%{
        "applied_money" => spec(SquareUp.Schema.v1_money()),
        "modifier_option_id" => spec(is_binary()),
        "name" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def payment_options(data) do
    valid?(
      data,
      schema(%{"autocomplete" => spec(is_boolean())})
      |> selection([])
    )
  end

  def v1_update_fee_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_fee())})
      |> selection(["body"])
    )
  end

  def catalog_pricing_rule(data) do
    valid?(
      data,
      schema(%{
        "apply_products_id" => spec(is_binary()),
        "discount_id" => spec(is_binary()),
        "exclude_products_id" => spec(is_binary()),
        "exclude_strategy" => spec(is_binary()),
        "match_products_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "time_period_ids" => spec(coll_of(spec(is_binary()))),
        "valid_from_date" => spec(is_binary()),
        "valid_from_local_time" => spec(is_binary()),
        "valid_until_date" => spec(is_binary()),
        "valid_until_local_time" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def search_catalog_objects_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "latest_time" => spec(is_binary()),
        "objects" => spec(coll_of(spec(SquareUp.Schema.catalog_object()))),
        "related_objects" => spec(coll_of(spec(SquareUp.Schema.catalog_object())))
      })
      |> selection([])
    )
  end

  def search_loyalty_accounts_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.search_loyalty_accounts_request_loyalty_account_query())
      })
      |> selection([])
    )
  end

  def batch_change_inventory_response(data) do
    valid?(
      data,
      schema(%{
        "counts" => spec(coll_of(spec(SquareUp.Schema.inventory_count()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def search_orders_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "location_ids" => spec(coll_of(spec(is_binary()))),
        "query" => spec(SquareUp.Schema.search_orders_query()),
        "return_entries" => spec(is_boolean())
      })
      |> selection([])
    )
  end

  def get_team_member_wage_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def product(data) do
    valid?(data, spec(is_binary()))
  end

  def retrieve_dispute_evidence_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def search_subscriptions_query(data) do
    valid?(
      data,
      schema(%{"filter" => spec(SquareUp.Schema.search_subscriptions_filter())})
      |> selection([])
    )
  end

  def merchant_status(data) do
    valid?(data, spec(is_binary()))
  end

  def country(data) do
    valid?(data, spec(is_binary()))
  end

  def team_member_status(data) do
    valid?(data, spec(is_binary()))
  end

  def create_refund_request(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "idempotency_key" => spec(is_binary()),
        "reason" => spec(is_binary()),
        "tender_id" => spec(is_binary())
      })
      |> selection(["idempotency_key", "tender_id", "amount_money"])
    )
  end

  def search_terminal_checkouts_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.terminal_checkout_query())
      })
      |> selection([])
    )
  end

  def inventory_change_type(data) do
    valid?(data, spec(is_binary()))
  end

  def date_range(data) do
    valid?(
      data,
      schema(%{"end_date" => spec(is_binary()), "start_date" => spec(is_binary())})
      |> selection([])
    )
  end

  def list_invoices_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "invoices" => spec(coll_of(spec(SquareUp.Schema.invoice())))
      })
      |> selection([])
    )
  end

  def create_loyalty_reward_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "reward" => spec(SquareUp.Schema.loyalty_reward())
      })
      |> selection([])
    )
  end

  def create_catalog_image_request(data) do
    valid?(
      data,
      schema(%{
        "idempotency_key" => spec(is_binary()),
        "image" => spec(SquareUp.Schema.catalog_object()),
        "object_id" => spec(is_binary())
      })
      |> selection(["idempotency_key"])
    )
  end

  def v1_list_payments_request(data) do
    valid?(
      data,
      schema(%{
        "batch_token" => spec(is_binary()),
        "begin_time" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "include_partial" => spec(is_boolean()),
        "limit" => spec(is_integer()),
        "order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def create_mobile_authorization_code_request(data) do
    valid?(
      data,
      schema(%{"location_id" => spec(is_binary())})
      |> selection([])
    )
  end

  def catalog_modifier(data) do
    valid?(
      data,
      schema(%{
        "modifier_list_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "ordinal" => spec(is_integer()),
        "price_money" => spec(SquareUp.Schema.money())
      })
      |> selection([])
    )
  end

  def order_return_discount(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "applied_money" => spec(SquareUp.Schema.money()),
        "catalog_object_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "percentage" => spec(is_binary()),
        "scope" => spec(is_binary()),
        "source_discount_uid" => spec(is_binary()),
        "type" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def retrieve_dispute_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def list_customer_groups_request(data) do
    valid?(
      data,
      schema(%{"cursor" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_order_history_entry(data) do
    valid?(
      data,
      schema(%{"action" => spec(is_binary()), "created_at" => spec(is_binary())})
      |> selection([])
    )
  end

  def search_orders_query(data) do
    valid?(
      data,
      schema(%{
        "filter" => spec(SquareUp.Schema.search_orders_filter()),
        "sort" => spec(SquareUp.Schema.search_orders_sort())
      })
      |> selection([])
    )
  end

  def void_transaction_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def bank_account_type(data) do
    valid?(data, spec(is_binary()))
  end

  def order_money_amounts(data) do
    valid?(
      data,
      schema(%{
        "discount_money" => spec(SquareUp.Schema.money()),
        "service_charge_money" => spec(SquareUp.Schema.money()),
        "tax_money" => spec(SquareUp.Schema.money()),
        "tip_money" => spec(SquareUp.Schema.money()),
        "total_money" => spec(SquareUp.Schema.money())
      })
      |> selection([])
    )
  end

  def list_customer_segments_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "segments" => spec(coll_of(spec(SquareUp.Schema.customer_segment())))
      })
      |> selection([])
    )
  end

  def bank_account_status(data) do
    valid?(data, spec(is_binary()))
  end

  def measurement_unit_weight(data) do
    valid?(data, spec(is_binary()))
  end

  def retrieve_team_member_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def retrieve_loyalty_reward_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def catalog_subscription_plan(data) do
    valid?(
      data,
      schema(%{
        "name" => spec(is_binary()),
        "phases" => spec(coll_of(spec(SquareUp.Schema.subscription_phase())))
      })
      |> selection([])
    )
  end

  def loyalty_program_accrual_rule(data) do
    valid?(
      data,
      schema(%{
        "accrual_type" => spec(is_binary()),
        "catalog_object_id" => spec(is_binary()),
        "points" => spec(is_integer()),
        "spend_amount_money" => spec(SquareUp.Schema.money()),
        "visit_minimum_amount_money" => spec(SquareUp.Schema.money())
      })
      |> selection(["accrual_type"])
    )
  end

  def v1_order(data) do
    valid?(
      data,
      schema(%{
        "btc_price_satoshi" => spec(is_number()),
        "btc_receive_address" => spec(is_binary()),
        "buyer_email" => spec(is_binary()),
        "buyer_note" => spec(is_binary()),
        "canceled_note" => spec(is_binary()),
        "completed_note" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "expires_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "order_history" => spec(coll_of(spec(SquareUp.Schema.v1_order_history_entry()))),
        "payment_id" => spec(is_binary()),
        "promo_code" => spec(is_binary()),
        "recipient_name" => spec(is_binary()),
        "recipient_phone_number" => spec(is_binary()),
        "refunded_note" => spec(is_binary()),
        "shipping_address" => spec(SquareUp.Schema.address()),
        "state" => spec(is_binary()),
        "subtotal_money" => spec(SquareUp.Schema.v1_money()),
        "tender" => spec(SquareUp.Schema.v1_tender()),
        "total_discount_money" => spec(SquareUp.Schema.v1_money()),
        "total_price_money" => spec(SquareUp.Schema.v1_money()),
        "total_shipping_money" => spec(SquareUp.Schema.v1_money()),
        "total_tax_money" => spec(SquareUp.Schema.v1_money()),
        "updated_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def loyalty_event_loyalty_account_filter(data) do
    valid?(
      data,
      schema(%{"loyalty_account_id" => spec(is_binary())})
      |> selection(["loyalty_account_id"])
    )
  end

  def v1_delete_page_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_page_cell(data) do
    valid?(
      data,
      schema(%{
        "column" => spec(is_integer()),
        "object_id" => spec(is_binary()),
        "object_type" => spec(is_binary()),
        "page_id" => spec(is_binary()),
        "placeholder_type" => spec(is_binary()),
        "row" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def catalog_item_option_value_for_item_variation(data) do
    valid?(
      data,
      schema(%{"item_option_id" => spec(is_binary()), "item_option_value_id" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_modifier_option(data) do
    valid?(
      data,
      schema(%{
        "id" => spec(is_binary()),
        "modifier_list_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "on_by_default" => spec(is_boolean()),
        "ordinal" => spec(is_integer()),
        "price_money" => spec(SquareUp.Schema.v1_money()),
        "v2_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def search_loyalty_events_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.loyalty_event_query())
      })
      |> selection([])
    )
  end

  def v1_list_pages_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def catalog_item_option_value(data) do
    valid?(
      data,
      schema(%{
        "color" => spec(is_binary()),
        "description" => spec(is_binary()),
        "item_option_id" => spec(is_binary()),
        "item_variation_count" => spec(is_integer()),
        "name" => spec(is_binary()),
        "ordinal" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def v1_list_inventory_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_inventory_entry())))})
      |> selection([])
    )
  end

  def create_subscription_request(data) do
    valid?(
      data,
      schema(%{
        "canceled_date" => spec(is_binary()),
        "card_id" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "idempotency_key" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "plan_id" => spec(is_binary()),
        "price_override_money" => spec(SquareUp.Schema.money()),
        "start_date" => spec(is_binary()),
        "tax_percentage" => spec(is_binary()),
        "timezone" => spec(is_binary())
      })
      |> selection(["idempotency_key", "location_id", "plan_id", "customer_id"])
    )
  end

  def catalog_modifier_list_selection_type(data) do
    valid?(data, spec(is_binary()))
  end

  def delete_loyalty_reward_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def delete_customer_group_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def create_dispute_evidence_file_request(data) do
    valid?(
      data,
      schema(%{
        "content_type" => spec(is_binary()),
        "evidence_type" => spec(is_binary()),
        "idempotency_key" => spec(is_binary())
      })
      |> selection(["idempotency_key"])
    )
  end

  def obtain_token_request(data) do
    valid?(
      data,
      schema(%{
        "client_id" => spec(is_binary()),
        "client_secret" => spec(is_binary()),
        "code" => spec(is_binary()),
        "grant_type" => spec(is_binary()),
        "migration_token" => spec(is_binary()),
        "redirect_uri" => spec(is_binary()),
        "refresh_token" => spec(is_binary())
      })
      |> selection(["client_id", "client_secret", "grant_type"])
    )
  end

  def customer_sort_field(data) do
    valid?(data, spec(is_binary()))
  end

  def loyalty_event_delete_reward(data) do
    valid?(
      data,
      schema(%{
        "loyalty_program_id" => spec(is_binary()),
        "points" => spec(is_integer()),
        "reward_id" => spec(is_binary())
      })
      |> selection(["loyalty_program_id", "points"])
    )
  end

  def submit_evidence_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def shift_workday(data) do
    valid?(
      data,
      schema(%{
        "date_range" => spec(SquareUp.Schema.date_range()),
        "default_timezone" => spec(is_binary()),
        "match_shifts_by" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def shift(data) do
    valid?(
      data,
      schema(%{
        "breaks" => spec(coll_of(spec(SquareUp.Schema.break()))),
        "created_at" => spec(is_binary()),
        "employee_id" => spec(is_binary()),
        "end_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "start_at" => spec(is_binary()),
        "status" => spec(is_binary()),
        "team_member_id" => spec(is_binary()),
        "timezone" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer()),
        "wage" => spec(SquareUp.Schema.shift_wage())
      })
      |> selection(["start_at"])
    )
  end

  def card_prepaid_type(data) do
    valid?(data, spec(is_binary()))
  end

  def list_cash_drawer_shifts_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "items" => spec(coll_of(spec(SquareUp.Schema.cash_drawer_shift_summary())))
      })
      |> selection([])
    )
  end

  def v1_fee_adjustment_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_list_modifier_lists_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_modifier_list())))})
      |> selection([])
    )
  end

  def retrieve_wage_setting_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def cancel_terminal_checkout_response(data) do
    valid?(
      data,
      schema(%{
        "checkout" => spec(SquareUp.Schema.terminal_checkout()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def list_refunds_request(data) do
    valid?(
      data,
      schema(%{
        "begin_time" => spec(is_binary()),
        "cursor" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "sort_order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def order_pricing_options(data) do
    valid?(
      data,
      schema(%{"auto_apply_discounts" => spec(is_boolean())})
      |> selection([])
    )
  end

  def v1_refund_type(data) do
    valid?(data, spec(is_binary()))
  end

  def tender_card_details(data) do
    valid?(
      data,
      schema(%{
        "card" => spec(SquareUp.Schema.card()),
        "entry_method" => spec(is_binary()),
        "status" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def get_employee_wage_response(data) do
    valid?(
      data,
      schema(%{
        "employee_wage" => spec(SquareUp.Schema.employee_wage()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def catalog_modifier_override(data) do
    valid?(
      data,
      schema(%{"modifier_id" => spec(is_binary()), "on_by_default" => spec(is_boolean())})
      |> selection(["modifier_id"])
    )
  end

  def v1_update_employee_role_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_employee_role())})
      |> selection(["body"])
    )
  end

  def delete_customer_card_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def address(data) do
    valid?(
      data,
      schema(%{
        "address_line_1" => spec(is_binary()),
        "address_line_2" => spec(is_binary()),
        "address_line_3" => spec(is_binary()),
        "administrative_district_level_1" => spec(is_binary()),
        "administrative_district_level_2" => spec(is_binary()),
        "administrative_district_level_3" => spec(is_binary()),
        "country" => spec(is_binary()),
        "first_name" => spec(is_binary()),
        "last_name" => spec(is_binary()),
        "locality" => spec(is_binary()),
        "organization" => spec(is_binary()),
        "postal_code" => spec(is_binary()),
        "sublocality" => spec(is_binary()),
        "sublocality_2" => spec(is_binary()),
        "sublocality_3" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def loyalty_event_order_filter(data) do
    valid?(
      data,
      schema(%{"order_id" => spec(is_binary())})
      |> selection(["order_id"])
    )
  end

  def order_service_charge(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "applied_money" => spec(SquareUp.Schema.money()),
        "applied_taxes" => spec(coll_of(spec(SquareUp.Schema.order_line_item_applied_tax()))),
        "calculation_phase" => spec(is_binary()),
        "catalog_object_id" => spec(is_binary()),
        "metadata" => schema(%{}),
        "name" => spec(is_binary()),
        "percentage" => spec(is_binary()),
        "taxable" => spec(is_boolean()),
        "total_money" => spec(SquareUp.Schema.money()),
        "total_tax_money" => spec(SquareUp.Schema.money()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def get_break_type_response(data) do
    valid?(
      data,
      schema(%{
        "break_type" => spec(SquareUp.Schema.break_type()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def search_loyalty_accounts_request_loyalty_account_query(data) do
    valid?(
      data,
      schema(%{"mappings" => spec(coll_of(spec(SquareUp.Schema.loyalty_account_mapping())))})
      |> selection([])
    )
  end

  def create_invoice_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "invoice" => spec(SquareUp.Schema.invoice())
      })
      |> selection([])
    )
  end

  def subscription_cadence(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_cash_drawer_event_event_type(data) do
    valid?(data, spec(is_binary()))
  end

  def create_dispute_evidence_text_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "evidence" => spec(SquareUp.Schema.dispute_evidence())
      })
      |> selection([])
    )
  end

  def cash_drawer_shift(data) do
    valid?(
      data,
      schema(%{
        "cash_paid_in_money" => spec(SquareUp.Schema.money()),
        "cash_paid_out_money" => spec(SquareUp.Schema.money()),
        "cash_payment_money" => spec(SquareUp.Schema.money()),
        "cash_refunds_money" => spec(SquareUp.Schema.money()),
        "closed_at" => spec(is_binary()),
        "closed_cash_money" => spec(SquareUp.Schema.money()),
        "closing_employee_id" => spec(is_binary()),
        "description" => spec(is_binary()),
        "device" => spec(SquareUp.Schema.cash_drawer_device()),
        "employee_ids" => spec(coll_of(spec(is_binary()))),
        "ended_at" => spec(is_binary()),
        "ending_employee_id" => spec(is_binary()),
        "expected_cash_money" => spec(SquareUp.Schema.money()),
        "id" => spec(is_binary()),
        "opened_at" => spec(is_binary()),
        "opened_cash_money" => spec(SquareUp.Schema.money()),
        "opening_employee_id" => spec(is_binary()),
        "state" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def error_code(data) do
    valid?(data, spec(is_binary()))
  end

  def retrieve_transaction_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_fee_calculation_phase(data) do
    valid?(data, spec(is_binary()))
  end

  def search_terminal_checkouts_response(data) do
    valid?(
      data,
      schema(%{
        "checkouts" => spec(coll_of(spec(SquareUp.Schema.terminal_checkout()))),
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def card_payment_details(data) do
    valid?(
      data,
      schema(%{
        "application_cryptogram" => spec(is_binary()),
        "application_identifier" => spec(is_binary()),
        "application_name" => spec(is_binary()),
        "auth_result_code" => spec(is_binary()),
        "avs_status" => spec(is_binary()),
        "card" => spec(SquareUp.Schema.card()),
        "cvv_status" => spec(is_binary()),
        "device_details" => spec(SquareUp.Schema.device_details()),
        "entry_method" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "refund_requires_card_presence" => spec(is_boolean()),
        "statement_description" => spec(is_binary()),
        "status" => spec(is_binary()),
        "verification_method" => spec(is_binary()),
        "verification_results" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def measurement_unit_time(data) do
    valid?(data, spec(is_binary()))
  end

  def get_terminal_checkout_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_tender_card_brand(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_object(data) do
    valid?(
      data,
      schema(%{
        "absent_at_location_ids" => spec(coll_of(spec(is_binary()))),
        "catalog_v1_ids" => spec(coll_of(spec(SquareUp.Schema.catalog_v1_id()))),
        "category_data" => spec(SquareUp.Schema.catalog_category()),
        "custom_attribute_definition_data" =>
          spec(SquareUp.Schema.catalog_custom_attribute_definition()),
        "custom_attribute_values" => schema(%{}),
        "discount_data" => spec(SquareUp.Schema.catalog_discount()),
        "id" => spec(is_binary()),
        "image_data" => spec(SquareUp.Schema.catalog_image()),
        "image_id" => spec(is_binary()),
        "is_deleted" => spec(is_boolean()),
        "item_data" => spec(SquareUp.Schema.catalog_item()),
        "item_option_data" => spec(SquareUp.Schema.catalog_item_option()),
        "item_option_value_data" => spec(SquareUp.Schema.catalog_item_option_value()),
        "item_variation_data" => spec(SquareUp.Schema.catalog_item_variation()),
        "measurement_unit_data" => spec(SquareUp.Schema.catalog_measurement_unit()),
        "modifier_data" => spec(SquareUp.Schema.catalog_modifier()),
        "modifier_list_data" => spec(SquareUp.Schema.catalog_modifier_list()),
        "present_at_all_locations" => spec(is_boolean()),
        "present_at_location_ids" => spec(coll_of(spec(is_binary()))),
        "pricing_rule_data" => spec(SquareUp.Schema.catalog_pricing_rule()),
        "product_set_data" => spec(SquareUp.Schema.catalog_product_set()),
        "quick_amounts_settings_data" => spec(SquareUp.Schema.catalog_quick_amounts_settings()),
        "subscription_plan_data" => spec(SquareUp.Schema.catalog_subscription_plan()),
        "tax_data" => spec(SquareUp.Schema.catalog_tax()),
        "time_period_data" => spec(SquareUp.Schema.catalog_time_period()),
        "type" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection(["type", "id"])
    )
  end

  def list_cash_drawer_shift_events_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "events" => spec(coll_of(spec(SquareUp.Schema.cash_drawer_shift_event())))
      })
      |> selection([])
    )
  end

  def subscription_phase(data) do
    valid?(
      data,
      schema(%{
        "cadence" => spec(is_binary()),
        "ordinal" => spec(is_integer()),
        "periods" => spec(is_integer()),
        "recurring_price_money" => spec(SquareUp.Schema.money()),
        "uid" => spec(is_binary())
      })
      |> selection(["cadence", "recurring_price_money"])
    )
  end

  def create_loyalty_account_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "loyalty_account" => spec(SquareUp.Schema.loyalty_account())
      })
      |> selection([])
    )
  end

  def create_invoice_request(data) do
    valid?(
      data,
      schema(%{
        "idempotency_key" => spec(is_binary()),
        "invoice" => spec(SquareUp.Schema.invoice())
      })
      |> selection(["invoice"])
    )
  end

  def v1_retrieve_business_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_cash_drawer_shift(data) do
    valid?(
      data,
      schema(%{
        "cash_paid_in_money" => spec(SquareUp.Schema.v1_money()),
        "cash_paid_out_money" => spec(SquareUp.Schema.v1_money()),
        "cash_payment_money" => spec(SquareUp.Schema.v1_money()),
        "cash_refunds_money" => spec(SquareUp.Schema.v1_money()),
        "closed_at" => spec(is_binary()),
        "closed_cash_money" => spec(SquareUp.Schema.v1_money()),
        "closing_employee_id" => spec(is_binary()),
        "description" => spec(is_binary()),
        "device" => spec(SquareUp.Schema.device()),
        "employee_ids" => spec(coll_of(spec(is_binary()))),
        "ended_at" => spec(is_binary()),
        "ending_employee_id" => spec(is_binary()),
        "event_type" => spec(is_binary()),
        "events" => spec(coll_of(spec(SquareUp.Schema.v1_cash_drawer_event()))),
        "expected_cash_money" => spec(SquareUp.Schema.v1_money()),
        "id" => spec(is_binary()),
        "opened_at" => spec(is_binary()),
        "opening_employee_id" => spec(is_binary()),
        "starting_cash_money" => spec(SquareUp.Schema.v1_money())
      })
      |> selection([])
    )
  end

  def retrieve_inventory_changes_request(data) do
    valid?(
      data,
      schema(%{"cursor" => spec(is_binary()), "location_ids" => spec(is_binary())})
      |> selection([])
    )
  end

  def invoice_payment_reminder(data) do
    valid?(
      data,
      schema(%{
        "message" => spec(is_binary()),
        "relative_scheduled_days" => spec(is_integer()),
        "sent_at" => spec(is_binary()),
        "status" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def invoice_payment_reminder_status(data) do
    valid?(data, spec(is_binary()))
  end

  def search_subscriptions_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.search_subscriptions_query())
      })
      |> selection([])
    )
  end

  def create_shift_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "shift" => spec(SquareUp.Schema.shift())
      })
      |> selection([])
    )
  end

  def invoice(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "description" => spec(is_binary()),
        "id" => spec(is_binary()),
        "invoice_number" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "next_payment_amount_money" => spec(SquareUp.Schema.money()),
        "order_id" => spec(is_binary()),
        "payment_requests" => spec(coll_of(spec(SquareUp.Schema.invoice_payment_request()))),
        "primary_recipient" => spec(SquareUp.Schema.invoice_recipient()),
        "public_url" => spec(is_binary()),
        "scheduled_at" => spec(is_binary()),
        "status" => spec(is_binary()),
        "timezone" => spec(is_binary()),
        "title" => spec(is_binary()),
        "updated_at" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def list_subscription_events_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "subscription_events" => spec(coll_of(spec(SquareUp.Schema.subscription_event())))
      })
      |> selection([])
    )
  end

  def catalog_query_items_for_tax(data) do
    valid?(
      data,
      schema(%{"tax_ids" => spec(coll_of(spec(is_binary())))})
      |> selection(["tax_ids"])
    )
  end

  def order_fulfillment_updated_object(data) do
    valid?(
      data,
      schema(%{"order_fulfillment_updated" => spec(SquareUp.Schema.order_fulfillment_updated())})
      |> selection([])
    )
  end

  def loyalty_program_accrual_rule_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_refund(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "is_exchange" => spec(is_boolean()),
        "merchant_id" => spec(is_binary()),
        "payment_id" => spec(is_binary()),
        "processed_at" => spec(is_binary()),
        "reason" => spec(is_binary()),
        "refunded_additive_tax" => spec(coll_of(spec(SquareUp.Schema.v1_payment_tax()))),
        "refunded_additive_tax_money" => spec(SquareUp.Schema.v1_money()),
        "refunded_discount_money" => spec(SquareUp.Schema.v1_money()),
        "refunded_inclusive_tax" => spec(coll_of(spec(SquareUp.Schema.v1_payment_tax()))),
        "refunded_inclusive_tax_money" => spec(SquareUp.Schema.v1_money()),
        "refunded_money" => spec(SquareUp.Schema.v1_money()),
        "refunded_processing_fee_money" => spec(SquareUp.Schema.v1_money()),
        "refunded_surcharge_money" => spec(SquareUp.Schema.v1_money()),
        "refunded_surcharges" => spec(coll_of(spec(SquareUp.Schema.v1_payment_surcharge()))),
        "refunded_tax_money" => spec(SquareUp.Schema.v1_money()),
        "refunded_tip_money" => spec(SquareUp.Schema.v1_money()),
        "type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def search_loyalty_rewards_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.search_loyalty_rewards_request_loyalty_reward_query())
      })
      |> selection([])
    )
  end

  def order_entry(data) do
    valid?(
      data,
      schema(%{
        "location_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "version" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def v1_merchant(data) do
    valid?(
      data,
      schema(%{
        "account_capabilities" => spec(coll_of(spec(is_binary()))),
        "account_type" => spec(is_binary()),
        "business_address" => spec(SquareUp.Schema.address()),
        "business_name" => spec(is_binary()),
        "business_phone" => spec(SquareUp.Schema.v1_phone_number()),
        "business_type" => spec(is_binary()),
        "country_code" => spec(is_binary()),
        "currency_code" => spec(is_binary()),
        "email" => spec(is_binary()),
        "id" => spec(is_binary()),
        "language_code" => spec(is_binary()),
        "location_details" => spec(SquareUp.Schema.v1_merchant_location_details()),
        "market_url" => spec(is_binary()),
        "name" => spec(is_binary()),
        "shipping_address" => spec(SquareUp.Schema.address())
      })
      |> selection([])
    )
  end

  def update_invoice_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "invoice" => spec(SquareUp.Schema.invoice())
      })
      |> selection([])
    )
  end

  def list_employees_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "location_id" => spec(is_binary()),
        "status" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def measurement_unit_unit_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_delete_timecard_response(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def list_workweek_configs_request(data) do
    valid?(
      data,
      schema(%{"cursor" => spec(is_binary()), "limit" => spec(is_integer())})
      |> selection([])
    )
  end

  def v1_payment_discount(data) do
    valid?(
      data,
      schema(%{
        "applied_money" => spec(SquareUp.Schema.v1_money()),
        "discount_id" => spec(is_binary()),
        "name" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_update_timecard_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_timecard())})
      |> selection(["body"])
    )
  end

  def list_payments_request(data) do
    valid?(
      data,
      schema(%{
        "begin_time" => spec(is_binary()),
        "card_brand" => spec(is_binary()),
        "cursor" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "last_4" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "sort_order" => spec(is_binary()),
        "total" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def order_fulfillment_state(data) do
    valid?(data, spec(is_binary()))
  end

  def order_fulfillment(data) do
    valid?(
      data,
      schema(%{
        "metadata" => schema(%{}),
        "pickup_details" => spec(SquareUp.Schema.order_fulfillment_pickup_details()),
        "shipment_details" => spec(SquareUp.Schema.order_fulfillment_shipment_details()),
        "state" => spec(is_binary()),
        "type" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def update_team_member_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "team_member" => spec(SquareUp.Schema.team_member())
      })
      |> selection([])
    )
  end

  def v1_list_employees_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_employee())))})
      |> selection([])
    )
  end

  def create_customer_request(data) do
    valid?(
      data,
      schema(%{
        "address" => spec(SquareUp.Schema.address()),
        "birthday" => spec(is_binary()),
        "company_name" => spec(is_binary()),
        "email_address" => spec(is_binary()),
        "family_name" => spec(is_binary()),
        "given_name" => spec(is_binary()),
        "idempotency_key" => spec(is_binary()),
        "nickname" => spec(is_binary()),
        "note" => spec(is_binary()),
        "phone_number" => spec(is_binary()),
        "reference_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def list_employee_wages_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "employee_id" => spec(is_binary()),
        "limit" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def order_line_item_tax_scope(data) do
    valid?(data, spec(is_binary()))
  end

  def update_workweek_config_request(data) do
    valid?(
      data,
      schema(%{"workweek_config" => spec(SquareUp.Schema.workweek_config())})
      |> selection(["workweek_config"])
    )
  end

  def cancel_payment_by_idempotency_key_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def update_wage_setting_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "wage_setting" => spec(SquareUp.Schema.wage_setting())
      })
      |> selection([])
    )
  end

  def v1_money(data) do
    valid?(
      data,
      schema(%{"amount" => spec(is_integer()), "currency_code" => spec(is_binary())})
      |> selection([])
    )
  end

  def catalog_discount_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_employee(data) do
    valid?(
      data,
      schema(%{
        "authorized_location_ids" => spec(coll_of(spec(is_binary()))),
        "created_at" => spec(is_binary()),
        "email" => spec(is_binary()),
        "external_id" => spec(is_binary()),
        "first_name" => spec(is_binary()),
        "id" => spec(is_binary()),
        "last_name" => spec(is_binary()),
        "role_ids" => spec(coll_of(spec(is_binary()))),
        "status" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection(["first_name", "last_name"])
    )
  end

  def catalog_time_period(data) do
    valid?(
      data,
      schema(%{"event" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_list_employee_roles_request(data) do
    valid?(
      data,
      schema(%{
        "batch_token" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def search_loyalty_accounts_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "loyalty_accounts" => spec(coll_of(spec(SquareUp.Schema.loyalty_account())))
      })
      |> selection([])
    )
  end

  def create_team_member_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "team_member" => spec(SquareUp.Schema.team_member())
      })
      |> selection([])
    )
  end

  def list_locations_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_update_discount_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_discount())})
      |> selection(["body"])
    )
  end

  def v1_cash_drawer_event(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "description" => spec(is_binary()),
        "employee_id" => spec(is_binary()),
        "event_money" => spec(SquareUp.Schema.v1_money()),
        "event_type" => spec(is_binary()),
        "id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def list_refunds_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "refunds" => spec(coll_of(spec(SquareUp.Schema.refund())))
      })
      |> selection([])
    )
  end

  def v1_list_bank_accounts_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def retrieve_transaction_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "transaction" => spec(SquareUp.Schema.transaction())
      })
      |> selection([])
    )
  end

  def search_orders_sort(data) do
    valid?(
      data,
      schema(%{"sort_field" => spec(is_binary()), "sort_order" => spec(is_binary())})
      |> selection(["sort_field"])
    )
  end

  def v1_timecard_event_event_type(data) do
    valid?(data, spec(is_binary()))
  end

  def search_team_members_filter(data) do
    valid?(
      data,
      schema(%{"location_ids" => spec(coll_of(spec(is_binary()))), "status" => spec(is_binary())})
      |> selection([])
    )
  end

  def catalog_custom_attribute_definition_selection_config_custom_attribute_selection(data) do
    valid?(
      data,
      schema(%{"name" => spec(is_binary()), "uid" => spec(is_binary())})
      |> selection(["name"])
    )
  end

  def v1_payment_tax(data) do
    valid?(
      data,
      schema(%{
        "applied_money" => spec(SquareUp.Schema.v1_money()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "fee_id" => spec(is_binary()),
        "inclusion_type" => spec(is_binary()),
        "name" => spec(is_binary()),
        "rate" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def get_payment_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "payment" => spec(SquareUp.Schema.payment())
      })
      |> selection([])
    )
  end

  def v1_retrieve_payment_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def employee_status(data) do
    valid?(data, spec(is_binary()))
  end

  def get_invoice_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def batch_retrieve_catalog_objects_request(data) do
    valid?(
      data,
      schema(%{
        "include_related_objects" => spec(is_boolean()),
        "object_ids" => spec(coll_of(spec(is_binary())))
      })
      |> selection(["object_ids"])
    )
  end

  def batch_retrieve_inventory_changes_response(data) do
    valid?(
      data,
      schema(%{
        "changes" => spec(coll_of(spec(SquareUp.Schema.inventory_change()))),
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def retrieve_catalog_object_request(data) do
    valid?(
      data,
      schema(%{"include_related_objects" => spec(is_boolean())})
      |> selection([])
    )
  end

  def v1_create_modifier_list_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_modifier_list())})
      |> selection([])
    )
  end

  def v1_employee_role(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "is_owner" => spec(is_boolean()),
        "name" => spec(is_binary()),
        "permissions" => spec(coll_of(spec(is_binary()))),
        "updated_at" => spec(is_binary())
      })
      |> selection(["name", "permissions"])
    )
  end

  def cash_drawer_shift_event(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "description" => spec(is_binary()),
        "employee_id" => spec(is_binary()),
        "event_money" => spec(SquareUp.Schema.money()),
        "event_type" => spec(is_binary()),
        "id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def cash_drawer_shift_state(data) do
    valid?(data, spec(is_binary()))
  end

  def obtain_token_response(data) do
    valid?(
      data,
      schema(%{
        "access_token" => spec(is_binary()),
        "expires_at" => spec(is_binary()),
        "id_token" => spec(is_binary()),
        "merchant_id" => spec(is_binary()),
        "plan_id" => spec(is_binary()),
        "refresh_token" => spec(is_binary()),
        "subscription_id" => spec(is_binary()),
        "token_type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def search_subscriptions_filter(data) do
    valid?(
      data,
      schema(%{
        "customer_ids" => spec(coll_of(spec(is_binary()))),
        "location_ids" => spec(coll_of(spec(is_binary())))
      })
      |> selection([])
    )
  end

  def catalog_custom_attribute_definition_seller_visibility(data) do
    valid?(data, spec(is_binary()))
  end

  def invoice_payment_request(data) do
    valid?(
      data,
      schema(%{
        "card_id" => spec(is_binary()),
        "computed_amount_money" => spec(SquareUp.Schema.money()),
        "due_date" => spec(is_binary()),
        "fixed_amount_requested_money" => spec(SquareUp.Schema.money()),
        "percentage_requested" => spec(is_binary()),
        "reminders" => spec(coll_of(spec(SquareUp.Schema.invoice_payment_reminder()))),
        "request_method" => spec(is_binary()),
        "request_type" => spec(is_binary()),
        "rounding_adjustment_included_money" => spec(SquareUp.Schema.money()),
        "tipping_enabled" => spec(is_boolean()),
        "total_completed_amount_money" => spec(SquareUp.Schema.money()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def update_location_request(data) do
    valid?(
      data,
      schema(%{"location" => spec(SquareUp.Schema.location())})
      |> selection([])
    )
  end

  def v1_order_state(data) do
    valid?(data, spec(is_binary()))
  end

  def list_bank_accounts_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "location_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def customer_group_info(data) do
    valid?(
      data,
      schema(%{"id" => spec(is_binary()), "name" => spec(is_binary())})
      |> selection(["id", "name"])
    )
  end

  def catalog_object_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_list_discounts_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def list_customer_groups_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "groups" => spec(coll_of(spec(SquareUp.Schema.customer_group())))
      })
      |> selection([])
    )
  end

  def payment_refund(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "app_fee_money" => spec(SquareUp.Schema.money()),
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "payment_id" => spec(is_binary()),
        "processing_fee" => spec(coll_of(spec(SquareUp.Schema.processing_fee()))),
        "reason" => spec(is_binary()),
        "status" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection(["id", "amount_money"])
    )
  end

  def search_customers_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "customers" => spec(coll_of(spec(SquareUp.Schema.customer()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def v1_list_timecards_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_timecard())))})
      |> selection([])
    )
  end

  def v1_payment(data) do
    valid?(
      data,
      schema(%{
        "additive_tax" => spec(coll_of(spec(SquareUp.Schema.v1_payment_tax()))),
        "additive_tax_money" => spec(SquareUp.Schema.v1_money()),
        "created_at" => spec(is_binary()),
        "creator_id" => spec(is_binary()),
        "device" => spec(SquareUp.Schema.device()),
        "discount_money" => spec(SquareUp.Schema.v1_money()),
        "gross_sales_money" => spec(SquareUp.Schema.v1_money()),
        "id" => spec(is_binary()),
        "inclusive_tax" => spec(coll_of(spec(SquareUp.Schema.v1_payment_tax()))),
        "inclusive_tax_money" => spec(SquareUp.Schema.v1_money()),
        "is_partial" => spec(is_boolean()),
        "itemizations" => spec(coll_of(spec(SquareUp.Schema.v1_payment_itemization()))),
        "merchant_id" => spec(is_binary()),
        "net_sales_money" => spec(SquareUp.Schema.v1_money()),
        "net_total_money" => spec(SquareUp.Schema.v1_money()),
        "payment_url" => spec(is_binary()),
        "processing_fee_money" => spec(SquareUp.Schema.v1_money()),
        "receipt_url" => spec(is_binary()),
        "refunded_money" => spec(SquareUp.Schema.v1_money()),
        "refunds" => spec(coll_of(spec(SquareUp.Schema.v1_refund()))),
        "surcharge_money" => spec(SquareUp.Schema.v1_money()),
        "surcharges" => spec(coll_of(spec(SquareUp.Schema.v1_payment_surcharge()))),
        "swedish_rounding_money" => spec(SquareUp.Schema.v1_money()),
        "tax_money" => spec(SquareUp.Schema.v1_money()),
        "tender" => spec(coll_of(spec(SquareUp.Schema.v1_tender()))),
        "tip_money" => spec(SquareUp.Schema.v1_money()),
        "total_collected_money" => spec(SquareUp.Schema.v1_money())
      })
      |> selection([])
    )
  end

  def card(data) do
    valid?(
      data,
      schema(%{
        "billing_address" => spec(SquareUp.Schema.address()),
        "bin" => spec(is_binary()),
        "card_brand" => spec(is_binary()),
        "card_type" => spec(is_binary()),
        "cardholder_name" => spec(is_binary()),
        "exp_month" => spec(is_integer()),
        "exp_year" => spec(is_integer()),
        "fingerprint" => spec(is_binary()),
        "id" => spec(is_binary()),
        "last_4" => spec(is_binary()),
        "prepaid_type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def retrieve_subscription_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "subscription" => spec(SquareUp.Schema.subscription())
      })
      |> selection([])
    )
  end

  def delete_break_type_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def retrieve_inventory_physical_count_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def batch_delete_catalog_objects_request(data) do
    valid?(
      data,
      schema(%{"object_ids" => spec(coll_of(spec(is_binary())))})
      |> selection([])
    )
  end

  def order_reward(data) do
    valid?(
      data,
      schema(%{"id" => spec(is_binary()), "reward_tier_id" => spec(is_binary())})
      |> selection(["id", "reward_tier_id"])
    )
  end

  def update_item_modifier_lists_request(data) do
    valid?(
      data,
      schema(%{
        "item_ids" => spec(coll_of(spec(is_binary()))),
        "modifier_lists_to_disable" => spec(coll_of(spec(is_binary()))),
        "modifier_lists_to_enable" => spec(coll_of(spec(is_binary())))
      })
      |> selection(["item_ids"])
    )
  end

  def v1_item_image(data) do
    valid?(
      data,
      schema(%{"id" => spec(is_binary()), "url" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_merchant_location_details(data) do
    valid?(
      data,
      schema(%{"nickname" => spec(is_binary())})
      |> selection([])
    )
  end

  def device_code(data) do
    valid?(
      data,
      schema(%{
        "code" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "device_id" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "pair_by" => spec(is_binary()),
        "paired_at" => spec(is_binary()),
        "product_type" => spec(is_binary()),
        "status" => spec(is_binary()),
        "status_changed_at" => spec(is_binary())
      })
      |> selection(["product_type"])
    )
  end

  def v1_update_modifier_list_request(data) do
    valid?(
      data,
      schema(%{"name" => spec(is_binary()), "selection_type" => spec(is_binary())})
      |> selection([])
    )
  end

  def invoice_status(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_page(data) do
    valid?(
      data,
      schema(%{
        "cells" => spec(coll_of(spec(SquareUp.Schema.v1_page_cell()))),
        "id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "page_index" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def customer(data) do
    valid?(
      data,
      schema(%{
        "address" => spec(SquareUp.Schema.address()),
        "birthday" => spec(is_binary()),
        "cards" => spec(coll_of(spec(SquareUp.Schema.card()))),
        "company_name" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "creation_source" => spec(is_binary()),
        "email_address" => spec(is_binary()),
        "family_name" => spec(is_binary()),
        "given_name" => spec(is_binary()),
        "group_ids" => spec(coll_of(spec(is_binary()))),
        "groups" => spec(coll_of(spec(SquareUp.Schema.customer_group_info()))),
        "id" => spec(is_binary()),
        "nickname" => spec(is_binary()),
        "note" => spec(is_binary()),
        "phone_number" => spec(is_binary()),
        "preferences" => spec(SquareUp.Schema.customer_preferences()),
        "reference_id" => spec(is_binary()),
        "segment_ids" => spec(coll_of(spec(is_binary()))),
        "updated_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def list_team_member_wages_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "team_member_wages" => spec(coll_of(spec(SquareUp.Schema.team_member_wage())))
      })
      |> selection([])
    )
  end

  def transaction(data) do
    valid?(
      data,
      schema(%{
        "client_id" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "product" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "refunds" => spec(coll_of(spec(SquareUp.Schema.refund()))),
        "shipping_address" => spec(SquareUp.Schema.address()),
        "tenders" => spec(coll_of(spec(SquareUp.Schema.tender())))
      })
      |> selection([])
    )
  end

  def catalog_custom_attribute_definition(data) do
    valid?(
      data,
      schema(%{
        "allowed_object_types" => spec(coll_of(spec(is_binary()))),
        "app_visibility" => spec(is_binary()),
        "custom_attribute_usage_count" => spec(is_integer()),
        "description" => spec(is_binary()),
        "key" => spec(is_binary()),
        "name" => spec(is_binary()),
        "number_config" =>
          spec(SquareUp.Schema.catalog_custom_attribute_definition_number_config()),
        "selection_config" =>
          spec(SquareUp.Schema.catalog_custom_attribute_definition_selection_config()),
        "seller_visibility" => spec(is_binary()),
        "source_application" => spec(SquareUp.Schema.source_application()),
        "string_config" =>
          spec(SquareUp.Schema.catalog_custom_attribute_definition_string_config()),
        "type" => spec(is_binary())
      })
      |> selection(["type", "name", "allowed_object_types"])
    )
  end

  def v1_list_pages_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_page())))})
      |> selection([])
    )
  end

  def retrieve_inventory_count_request(data) do
    valid?(
      data,
      schema(%{"cursor" => spec(is_binary()), "location_ids" => spec(is_binary())})
      |> selection([])
    )
  end

  def renew_token_response(data) do
    valid?(
      data,
      schema(%{
        "access_token" => spec(is_binary()),
        "expires_at" => spec(is_binary()),
        "merchant_id" => spec(is_binary()),
        "plan_id" => spec(is_binary()),
        "subscription_id" => spec(is_binary()),
        "token_type" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def standard_unit_description_group(data) do
    valid?(
      data,
      schema(%{
        "language_code" => spec(is_binary()),
        "standard_unit_descriptions" =>
          spec(coll_of(spec(SquareUp.Schema.standard_unit_description())))
      })
      |> selection([])
    )
  end

  def v1_fee_type(data) do
    valid?(data, spec(is_binary()))
  end

  def dispute_evidence(data) do
    valid?(
      data,
      schema(%{
        "dispute_id" => spec(is_binary()),
        "evidence_id" => spec(is_binary()),
        "evidence_type" => spec(is_binary()),
        "uploaded_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def terminal_checkout_query_filter(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(SquareUp.Schema.time_range()),
        "device_id" => spec(is_binary()),
        "status" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def get_payment_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def order_line_item_discount_type(data) do
    valid?(data, spec(is_binary()))
  end

  def list_bank_accounts_response(data) do
    valid?(
      data,
      schema(%{
        "bank_accounts" => spec(coll_of(spec(SquareUp.Schema.bank_account()))),
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def search_orders_sort_field(data) do
    valid?(data, spec(is_binary()))
  end

  def search_orders_fulfillment_filter(data) do
    valid?(
      data,
      schema(%{
        "fulfillment_states" => spec(coll_of(spec(is_binary()))),
        "fulfillment_types" => spec(coll_of(spec(is_binary())))
      })
      |> selection([])
    )
  end

  def order_return_service_charge(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "applied_money" => spec(SquareUp.Schema.money()),
        "applied_taxes" => spec(coll_of(spec(SquareUp.Schema.order_line_item_applied_tax()))),
        "calculation_phase" => spec(is_binary()),
        "catalog_object_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "percentage" => spec(is_binary()),
        "source_service_charge_uid" => spec(is_binary()),
        "taxable" => spec(is_boolean()),
        "total_money" => spec(SquareUp.Schema.money()),
        "total_tax_money" => spec(SquareUp.Schema.money()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def get_employee_wage_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def create_payment_request(data) do
    valid?(
      data,
      schema(%{
        "accept_partial_authorization" => spec(is_boolean()),
        "amount_money" => spec(SquareUp.Schema.money()),
        "app_fee_money" => spec(SquareUp.Schema.money()),
        "autocomplete" => spec(is_boolean()),
        "billing_address" => spec(SquareUp.Schema.address()),
        "buyer_email_address" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "delay_duration" => spec(is_binary()),
        "idempotency_key" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "note" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "shipping_address" => spec(SquareUp.Schema.address()),
        "source_id" => spec(is_binary()),
        "statement_description_identifier" => spec(is_binary()),
        "tip_money" => spec(SquareUp.Schema.money()),
        "verification_token" => spec(is_binary())
      })
      |> selection(["source_id", "idempotency_key", "amount_money"])
    )
  end

  def create_loyalty_account_request(data) do
    valid?(
      data,
      schema(%{
        "idempotency_key" => spec(is_binary()),
        "loyalty_account" => spec(SquareUp.Schema.loyalty_account())
      })
      |> selection(["loyalty_account", "idempotency_key"])
    )
  end

  def v1_item_color(data) do
    valid?(data, spec(is_binary()))
  end

  def retrieve_inventory_adjustment_response(data) do
    valid?(
      data,
      schema(%{
        "adjustment" => spec(SquareUp.Schema.inventory_adjustment()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def accept_dispute_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def team_member_assigned_locations(data) do
    valid?(
      data,
      schema(%{
        "assignment_type" => spec(is_binary()),
        "location_ids" => spec(coll_of(spec(is_binary())))
      })
      |> selection([])
    )
  end

  def catalog_info_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_retrieve_bank_account_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def create_location_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "location" => spec(SquareUp.Schema.location())
      })
      |> selection([])
    )
  end

  def catalog_quick_amounts_settings_option(data) do
    valid?(data, spec(is_binary()))
  end

  def team_member(data) do
    valid?(
      data,
      schema(%{
        "assigned_locations" => spec(SquareUp.Schema.team_member_assigned_locations()),
        "created_at" => spec(is_binary()),
        "email_address" => spec(is_binary()),
        "family_name" => spec(is_binary()),
        "given_name" => spec(is_binary()),
        "id" => spec(is_binary()),
        "is_owner" => spec(is_boolean()),
        "phone_number" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "status" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def sort_order(data) do
    valid?(data, spec(is_binary()))
  end

  def order_rounding_adjustment(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "name" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_list_discounts_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_discount())))})
      |> selection([])
    )
  end

  def customer_preferences(data) do
    valid?(
      data,
      schema(%{"email_unsubscribed" => spec(is_boolean())})
      |> selection([])
    )
  end

  def retrieve_customer_segment_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def create_break_type_response(data) do
    valid?(
      data,
      schema(%{
        "break_type" => spec(SquareUp.Schema.break_type()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def day_of_week(data) do
    valid?(data, spec(is_binary()))
  end

  def terminal_checkout_query(data) do
    valid?(
      data,
      schema(%{
        "filter" => spec(SquareUp.Schema.terminal_checkout_query_filter()),
        "sort" => spec(SquareUp.Schema.terminal_checkout_query_sort())
      })
      |> selection([])
    )
  end

  def refund_payment_request(data) do
    valid?(
      data,
      schema(%{
        "amount_money" => spec(SquareUp.Schema.money()),
        "app_fee_money" => spec(SquareUp.Schema.money()),
        "idempotency_key" => spec(is_binary()),
        "payment_id" => spec(is_binary()),
        "reason" => spec(is_binary())
      })
      |> selection(["idempotency_key", "amount_money", "payment_id"])
    )
  end

  def redeem_loyalty_reward_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "event" => spec(SquareUp.Schema.loyalty_event())
      })
      |> selection([])
    )
  end

  def v1_list_modifier_lists_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def card_square_product(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_query_sorted_attribute(data) do
    valid?(
      data,
      schema(%{
        "attribute_name" => spec(is_binary()),
        "initial_attribute_value" => spec(is_binary()),
        "sort_order" => spec(is_binary())
      })
      |> selection(["attribute_name"])
    )
  end

  def loyalty_event_accumulate_points(data) do
    valid?(
      data,
      schema(%{
        "loyalty_program_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "points" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def update_item_taxes_request(data) do
    valid?(
      data,
      schema(%{
        "item_ids" => spec(coll_of(spec(is_binary()))),
        "taxes_to_disable" => spec(coll_of(spec(is_binary()))),
        "taxes_to_enable" => spec(coll_of(spec(is_binary())))
      })
      |> selection(["item_ids"])
    )
  end

  def create_checkout_request(data) do
    valid?(
      data,
      schema(%{
        "additional_recipients" =>
          spec(coll_of(spec(SquareUp.Schema.charge_request_additional_recipient()))),
        "ask_for_shipping_address" => spec(is_boolean()),
        "idempotency_key" => spec(is_binary()),
        "merchant_support_email" => spec(is_binary()),
        "note" => spec(is_binary()),
        "order" => spec(SquareUp.Schema.create_order_request()),
        "pre_populate_buyer_email" => spec(is_binary()),
        "pre_populate_shipping_address" => spec(SquareUp.Schema.address()),
        "redirect_url" => spec(is_binary())
      })
      |> selection(["idempotency_key", "order"])
    )
  end

  def search_catalog_items_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "items" => spec(coll_of(spec(SquareUp.Schema.catalog_object()))),
        "matched_variation_ids" => spec(coll_of(spec(is_binary())))
      })
      |> selection([])
    )
  end

  def create_device_code_response(data) do
    valid?(
      data,
      schema(%{
        "device_code" => spec(SquareUp.Schema.device_code()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def location_capability(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_settlement(data) do
    valid?(
      data,
      schema(%{
        "bank_account_id" => spec(is_binary()),
        "entries" => spec(coll_of(spec(SquareUp.Schema.v1_settlement_entry()))),
        "id" => spec(is_binary()),
        "initiated_at" => spec(is_binary()),
        "status" => spec(is_binary()),
        "total_money" => spec(SquareUp.Schema.v1_money())
      })
      |> selection([])
    )
  end

  def v1_list_settlements_request_status(data) do
    valid?(data, spec(is_binary()))
  end

  def list_workweek_configs_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "workweek_configs" => spec(coll_of(spec(SquareUp.Schema.workweek_config())))
      })
      |> selection([])
    )
  end

  def business_hours_period(data) do
    valid?(
      data,
      schema(%{
        "day_of_week" => spec(is_binary()),
        "end_local_time" => spec(is_binary()),
        "start_local_time" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def retrieve_loyalty_account_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "loyalty_account" => spec(SquareUp.Schema.loyalty_account())
      })
      |> selection([])
    )
  end

  def v1_timecard_event(data) do
    valid?(
      data,
      schema(%{
        "clockin_time" => spec(is_binary()),
        "clockout_time" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "event_type" => spec(is_binary()),
        "id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def create_subscription_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "subscription" => spec(SquareUp.Schema.subscription())
      })
      |> selection([])
    )
  end

  def v1_adjust_inventory_request_adjustment_type(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_query_prefix(data) do
    valid?(
      data,
      schema(%{"attribute_name" => spec(is_binary()), "attribute_prefix" => spec(is_binary())})
      |> selection(["attribute_name", "attribute_prefix"])
    )
  end

  def shift_query(data) do
    valid?(
      data,
      schema(%{
        "filter" => spec(SquareUp.Schema.shift_filter()),
        "sort" => spec(SquareUp.Schema.shift_sort())
      })
      |> selection([])
    )
  end

  def catalog_category(data) do
    valid?(
      data,
      schema(%{"name" => spec(is_binary())})
      |> selection([])
    )
  end

  def list_dispute_evidence_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "evidence" => spec(coll_of(spec(SquareUp.Schema.dispute_evidence())))
      })
      |> selection([])
    )
  end

  def retrieve_cash_drawer_shift_request(data) do
    valid?(
      data,
      schema(%{"location_id" => spec(is_binary())})
      |> selection(["location_id"])
    )
  end

  def retrieve_catalog_object_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "object" => spec(SquareUp.Schema.catalog_object()),
        "related_objects" => spec(coll_of(spec(SquareUp.Schema.catalog_object())))
      })
      |> selection([])
    )
  end

  def time_range(data) do
    valid?(
      data,
      schema(%{"end_at" => spec(is_binary()), "start_at" => spec(is_binary())})
      |> selection([])
    )
  end

  def retrieve_customer_group_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "group" => spec(SquareUp.Schema.customer_group())
      })
      |> selection([])
    )
  end

  def search_loyalty_events_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "events" => spec(coll_of(spec(SquareUp.Schema.loyalty_event())))
      })
      |> selection([])
    )
  end

  def measurement_unit_volume(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_query_items_for_item_options(data) do
    valid?(
      data,
      schema(%{"item_option_ids" => spec(coll_of(spec(is_binary())))})
      |> selection([])
    )
  end

  def v1_list_inventory_request(data) do
    valid?(
      data,
      schema(%{"batch_token" => spec(is_binary()), "limit" => spec(is_integer())})
      |> selection([])
    )
  end

  def batch_retrieve_inventory_changes_request(data) do
    valid?(
      data,
      schema(%{
        "catalog_object_ids" => spec(coll_of(spec(is_binary()))),
        "cursor" => spec(is_binary()),
        "location_ids" => spec(coll_of(spec(is_binary()))),
        "states" => spec(coll_of(spec(is_binary()))),
        "types" => spec(coll_of(spec(is_binary()))),
        "updated_after" => spec(is_binary()),
        "updated_before" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def customer_creation_source_filter(data) do
    valid?(
      data,
      schema(%{"rule" => spec(is_binary()), "values" => spec(coll_of(spec(is_binary())))})
      |> selection([])
    )
  end

  def tender_card_details_entry_method(data) do
    valid?(data, spec(is_binary()))
  end

  def create_loyalty_reward_request(data) do
    valid?(
      data,
      schema(%{
        "idempotency_key" => spec(is_binary()),
        "reward" => spec(SquareUp.Schema.loyalty_reward())
      })
      |> selection(["reward", "idempotency_key"])
    )
  end

  def search_invoices_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "invoices" => spec(coll_of(spec(SquareUp.Schema.invoice())))
      })
      |> selection([])
    )
  end

  def create_catalog_image_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "image" => spec(SquareUp.Schema.catalog_object())
      })
      |> selection([])
    )
  end

  def v1_list_timecards_request(data) do
    valid?(
      data,
      schema(%{
        "batch_token" => spec(is_binary()),
        "begin_clockin_time" => spec(is_binary()),
        "begin_clockout_time" => spec(is_binary()),
        "begin_updated_at" => spec(is_binary()),
        "deleted" => spec(is_boolean()),
        "employee_id" => spec(is_binary()),
        "end_clockin_time" => spec(is_binary()),
        "end_clockout_time" => spec(is_binary()),
        "end_updated_at" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "order" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def create_dispute_evidence_file_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "evidence" => spec(SquareUp.Schema.dispute_evidence())
      })
      |> selection([])
    )
  end

  def order_line_item_discount_scope(data) do
    valid?(data, spec(is_binary()))
  end

  def get_shift_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "shift" => spec(SquareUp.Schema.shift())
      })
      |> selection([])
    )
  end

  def order_created_object(data) do
    valid?(
      data,
      schema(%{"order_created" => spec(SquareUp.Schema.order_created())})
      |> selection([])
    )
  end

  def catalog_v1_id(data) do
    valid?(
      data,
      schema(%{"catalog_v1_id" => spec(is_binary()), "location_id" => spec(is_binary())})
      |> selection([])
    )
  end

  def delete_invoice_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def v1_phone_number(data) do
    valid?(
      data,
      schema(%{"calling_code" => spec(is_binary()), "number" => spec(is_binary())})
      |> selection(["calling_code", "number"])
    )
  end

  def v1_update_page_cell_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_page_cell())})
      |> selection(["body"])
    )
  end

  def register_domain_response_status(data) do
    valid?(data, spec(is_binary()))
  end

  def loyalty_account_mapping_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_delete_variation_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def charge_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "transaction" => spec(SquareUp.Schema.transaction())
      })
      |> selection([])
    )
  end

  def get_device_code_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_list_employee_roles_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_employee_role())))})
      |> selection([])
    )
  end

  def list_invoices_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "location_id" => spec(is_binary())
      })
      |> selection(["location_id"])
    )
  end

  def v1_create_modifier_option_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_modifier_option())})
      |> selection([])
    )
  end

  def get_device_code_response(data) do
    valid?(
      data,
      schema(%{
        "device_code" => spec(SquareUp.Schema.device_code()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def inventory_adjustment(data) do
    valid?(
      data,
      schema(%{
        "catalog_object_id" => spec(is_binary()),
        "catalog_object_type" => spec(is_binary()),
        "created_at" => spec(is_binary()),
        "employee_id" => spec(is_binary()),
        "from_state" => spec(is_binary()),
        "goods_receipt_id" => spec(is_binary()),
        "id" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "occurred_at" => spec(is_binary()),
        "purchase_order_id" => spec(is_binary()),
        "quantity" => spec(is_binary()),
        "reference_id" => spec(is_binary()),
        "refund_id" => spec(is_binary()),
        "source" => spec(SquareUp.Schema.source_application()),
        "to_state" => spec(is_binary()),
        "total_price_money" => spec(SquareUp.Schema.money()),
        "transaction_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def get_bank_account_by_v1_id_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def create_device_code_request(data) do
    valid?(
      data,
      schema(%{
        "device_code" => spec(SquareUp.Schema.device_code()),
        "idempotency_key" => spec(is_binary())
      })
      |> selection(["idempotency_key", "device_code"])
    )
  end

  def shift_sort_field(data) do
    valid?(data, spec(is_binary()))
  end

  def delete_customer_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_list_bank_accounts_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_bank_account())))})
      |> selection([])
    )
  end

  def v1_update_variation_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_variation())})
      |> selection(["body"])
    )
  end

  def cash_drawer_event_type(data) do
    valid?(data, spec(is_binary()))
  end

  def tender_bank_transfer_details_status(data) do
    valid?(data, spec(is_binary()))
  end

  def measurement_unit_length(data) do
    valid?(data, spec(is_binary()))
  end

  def customer_segment(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection(["name"])
    )
  end

  def update_team_member_request(data) do
    valid?(
      data,
      schema(%{"team_member" => spec(SquareUp.Schema.team_member())})
      |> selection([])
    )
  end

  def search_customers_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "query" => spec(SquareUp.Schema.customer_query())
      })
      |> selection([])
    )
  end

  def currency(data) do
    valid?(data, spec(is_binary()))
  end

  def source_application(data) do
    valid?(
      data,
      schema(%{
        "application_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "product" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_create_fee_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_fee())})
      |> selection([])
    )
  end

  def retrieve_customer_group_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def device_checkout_options(data) do
    valid?(
      data,
      schema(%{
        "device_id" => spec(is_binary()),
        "skip_receipt_screen" => spec(is_boolean()),
        "tip_settings" => spec(SquareUp.Schema.tip_settings())
      })
      |> selection(["device_id"])
    )
  end

  def employee(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "email" => spec(is_binary()),
        "first_name" => spec(is_binary()),
        "id" => spec(is_binary()),
        "is_owner" => spec(is_boolean()),
        "last_name" => spec(is_binary()),
        "location_ids" => spec(coll_of(spec(is_binary()))),
        "phone_number" => spec(is_binary()),
        "status" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def retrieve_team_member_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "team_member" => spec(SquareUp.Schema.team_member())
      })
      |> selection([])
    )
  end

  def v1_variation(data) do
    valid?(
      data,
      schema(%{
        "id" => spec(is_binary()),
        "inventory_alert_threshold" => spec(is_integer()),
        "inventory_alert_type" => spec(is_binary()),
        "item_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "ordinal" => spec(is_integer()),
        "price_money" => spec(SquareUp.Schema.v1_money()),
        "pricing_type" => spec(is_binary()),
        "sku" => spec(is_binary()),
        "track_inventory" => spec(is_boolean()),
        "user_data" => spec(is_binary()),
        "v2_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def list_disputes_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "disputes" => spec(coll_of(spec(SquareUp.Schema.dispute()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def tax_inclusion_type(data) do
    valid?(data, spec(is_binary()))
  end

  def tender_type(data) do
    valid?(data, spec(is_binary()))
  end

  def customer_group(data) do
    valid?(
      data,
      schema(%{
        "created_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection(["name"])
    )
  end

  def calculate_order_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "order" => spec(SquareUp.Schema.order())
      })
      |> selection([])
    )
  end

  def get_bank_account_by_v1_id_response(data) do
    valid?(
      data,
      schema(%{
        "bank_account" => spec(SquareUp.Schema.bank_account()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def v1_retrieve_modifier_list_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def get_payment_refund_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "refund" => spec(SquareUp.Schema.payment_refund())
      })
      |> selection([])
    )
  end

  def delete_customer_group_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def delete_shift_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_list_fees_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_fee())))})
      |> selection([])
    )
  end

  def search_team_members_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "team_members" => spec(coll_of(spec(SquareUp.Schema.team_member())))
      })
      |> selection([])
    )
  end

  def create_mobile_authorization_code_response(data) do
    valid?(
      data,
      schema(%{
        "authorization_code" => spec(is_binary()),
        "error" => spec(SquareUp.Schema.error()),
        "expires_at" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def retrieve_employee_response(data) do
    valid?(
      data,
      schema(%{
        "employee" => spec(SquareUp.Schema.employee()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def catalog_custom_attribute_definition_selection_config(data) do
    valid?(
      data,
      schema(%{
        "allowed_selections" =>
          spec(
            coll_of(
              spec(
                SquareUp.Schema.catalog_custom_attribute_definition_selection_config_custom_attribute_selection()
              )
            )
          ),
        "max_allowed_selections" => spec(is_integer())
      })
      |> selection([])
    )
  end

  def dispute_reason(data) do
    valid?(data, spec(is_binary()))
  end

  def transaction_type(data) do
    valid?(data, spec(is_binary()))
  end

  def search_team_members_query(data) do
    valid?(
      data,
      schema(%{"filter" => spec(SquareUp.Schema.search_team_members_filter())})
      |> selection([])
    )
  end

  def loyalty_event_expire_points(data) do
    valid?(
      data,
      schema(%{"loyalty_program_id" => spec(is_binary()), "points" => spec(is_integer())})
      |> selection(["loyalty_program_id", "points"])
    )
  end

  def loyalty_account(data) do
    valid?(
      data,
      schema(%{
        "balance" => spec(is_integer()),
        "created_at" => spec(is_binary()),
        "customer_id" => spec(is_binary()),
        "enrolled_at" => spec(is_binary()),
        "id" => spec(is_binary()),
        "lifetime_points" => spec(is_integer()),
        "mappings" => spec(coll_of(spec(SquareUp.Schema.loyalty_account_mapping()))),
        "program_id" => spec(is_binary()),
        "updated_at" => spec(is_binary())
      })
      |> selection(["mappings", "program_id"])
    )
  end

  def list_team_member_wages_request(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "team_member_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def retrieve_inventory_physical_count_response(data) do
    valid?(
      data,
      schema(%{
        "count" => spec(SquareUp.Schema.inventory_physical_count()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def v1_payment_surcharge_type(data) do
    valid?(data, spec(is_binary()))
  end

  def custom_attribute_filter(data) do
    valid?(
      data,
      schema(%{
        "bool_filter" => spec(is_boolean()),
        "custom_attribute_definition_id" => spec(is_binary()),
        "key" => spec(is_binary()),
        "number_filter" => spec(SquareUp.Schema.range()),
        "selection_uids_filter" => spec(coll_of(spec(is_binary()))),
        "string_filter" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def card_brand(data) do
    valid?(data, spec(is_binary()))
  end

  def order_return_tax(data) do
    valid?(
      data,
      schema(%{
        "applied_money" => spec(SquareUp.Schema.money()),
        "catalog_object_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "percentage" => spec(is_binary()),
        "scope" => spec(is_binary()),
        "source_tax_uid" => spec(is_binary()),
        "type" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def catalog_image(data) do
    valid?(
      data,
      schema(%{
        "caption" => spec(is_binary()),
        "name" => spec(is_binary()),
        "url" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_category(data) do
    valid?(
      data,
      schema(%{
        "id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "v2_id" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def action_cancel_reason(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_list_locations_response(data) do
    valid?(
      data,
      schema(%{"items" => spec(coll_of(spec(SquareUp.Schema.v1_merchant())))})
      |> selection([])
    )
  end

  def search_catalog_items_request_stock_level(data) do
    valid?(data, spec(is_binary()))
  end

  def order_service_charge_calculation_phase(data) do
    valid?(data, spec(is_binary()))
  end

  def remove_group_from_customer_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def upsert_catalog_object_response(data) do
    valid?(
      data,
      schema(%{
        "catalog_object" => spec(SquareUp.Schema.catalog_object()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "id_mappings" => spec(coll_of(spec(SquareUp.Schema.catalog_id_mapping())))
      })
      |> selection([])
    )
  end

  def list_device_codes_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "device_codes" => spec(coll_of(spec(SquareUp.Schema.device_code()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def business_hours(data) do
    valid?(
      data,
      schema(%{"periods" => spec(coll_of(spec(SquareUp.Schema.business_hours_period())))})
      |> selection([])
    )
  end

  def capture_transaction_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def v1_create_refund_request(data) do
    valid?(
      data,
      schema(%{
        "payment_id" => spec(is_binary()),
        "reason" => spec(is_binary()),
        "refunded_money" => spec(SquareUp.Schema.v1_money()),
        "request_idempotence_key" => spec(is_binary()),
        "type" => spec(is_binary())
      })
      |> selection(["payment_id", "type", "reason"])
    )
  end

  def v1_adjust_inventory_request(data) do
    valid?(
      data,
      schema(%{
        "adjustment_type" => spec(is_binary()),
        "memo" => spec(is_binary()),
        "quantity_delta" => spec(is_number())
      })
      |> selection([])
    )
  end

  def catalog_quick_amount(data) do
    valid?(
      data,
      schema(%{
        "amount" => spec(SquareUp.Schema.money()),
        "ordinal" => spec(is_integer()),
        "score" => spec(is_integer()),
        "type" => spec(is_binary())
      })
      |> selection(["type", "amount"])
    )
  end

  def loyalty_program_expiration_policy(data) do
    valid?(
      data,
      schema(%{"expiration_duration" => spec(is_binary())})
      |> selection(["expiration_duration"])
    )
  end

  def team_member_wage(data) do
    valid?(
      data,
      schema(%{
        "hourly_rate" => spec(SquareUp.Schema.money()),
        "id" => spec(is_binary()),
        "team_member_id" => spec(is_binary()),
        "title" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def create_dispute_evidence_text_request(data) do
    valid?(
      data,
      schema(%{
        "evidence_text" => spec(is_binary()),
        "evidence_type" => spec(is_binary()),
        "idempotency_key" => spec(is_binary())
      })
      |> selection(["idempotency_key", "evidence_text"])
    )
  end

  def delete_catalog_object_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def calculate_order_request(data) do
    valid?(
      data,
      schema(%{
        "order" => spec(SquareUp.Schema.order()),
        "proposed_rewards" => spec(coll_of(spec(SquareUp.Schema.order_reward())))
      })
      |> selection(["order"])
    )
  end

  def get_payment_refund_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def update_location_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "location" => spec(SquareUp.Schema.location())
      })
      |> selection([])
    )
  end

  def search_orders_customer_filter(data) do
    valid?(
      data,
      schema(%{"customer_ids" => spec(coll_of(spec(is_binary())))})
      |> selection([])
    )
  end

  def customer_text_filter(data) do
    valid?(
      data,
      schema(%{"exact" => spec(is_binary()), "fuzzy" => spec(is_binary())})
      |> selection([])
    )
  end

  def v1_update_employee_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_employee())})
      |> selection(["body"])
    )
  end

  def v1_create_employee_role_request(data) do
    valid?(
      data,
      schema(%{"employee_role" => spec(SquareUp.Schema.v1_employee_role())})
      |> selection([])
    )
  end

  def card_type(data) do
    valid?(data, spec(is_binary()))
  end

  def create_refund_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "refund" => spec(SquareUp.Schema.refund())
      })
      |> selection([])
    )
  end

  def search_shifts_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "shifts" => spec(coll_of(spec(SquareUp.Schema.shift())))
      })
      |> selection([])
    )
  end

  def update_subscription_request(data) do
    valid?(
      data,
      schema(%{"subscription" => spec(SquareUp.Schema.subscription())})
      |> selection([])
    )
  end

  def v1_update_item_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_item())})
      |> selection(["body"])
    )
  end

  def standard_unit_description(data) do
    valid?(
      data,
      schema(%{
        "abbreviation" => spec(is_binary()),
        "name" => spec(is_binary()),
        "unit" => spec(SquareUp.Schema.measurement_unit())
      })
      |> selection([])
    )
  end

  def v1_fee_inclusion_type(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_update_modifier_option_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_modifier_option())})
      |> selection(["body"])
    )
  end

  def list_employees_response(data) do
    valid?(
      data,
      schema(%{
        "cursor" => spec(is_binary()),
        "employees" => spec(coll_of(spec(SquareUp.Schema.employee()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def catalog_query_exact(data) do
    valid?(
      data,
      schema(%{"attribute_name" => spec(is_binary()), "attribute_value" => spec(is_binary())})
      |> selection(["attribute_name", "attribute_value"])
    )
  end

  def remove_dispute_evidence_response(data) do
    valid?(
      data,
      schema(%{"errors" => spec(coll_of(spec(SquareUp.Schema.error())))})
      |> selection([])
    )
  end

  def complete_payment_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "payment" => spec(SquareUp.Schema.payment())
      })
      |> selection([])
    )
  end

  def search_loyalty_rewards_request_loyalty_reward_query(data) do
    valid?(
      data,
      schema(%{"loyalty_account_id" => spec(is_binary()), "status" => spec(is_binary())})
      |> selection(["loyalty_account_id"])
    )
  end

  def batch_retrieve_inventory_counts_request(data) do
    valid?(
      data,
      schema(%{
        "catalog_object_ids" => spec(coll_of(spec(is_binary()))),
        "cursor" => spec(is_binary()),
        "location_ids" => spec(coll_of(spec(is_binary()))),
        "states" => spec(coll_of(spec(is_binary()))),
        "updated_after" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def delete_catalog_object_response(data) do
    valid?(
      data,
      schema(%{
        "deleted_at" => spec(is_binary()),
        "deleted_object_ids" => spec(coll_of(spec(is_binary()))),
        "errors" => spec(coll_of(spec(SquareUp.Schema.error())))
      })
      |> selection([])
    )
  end

  def list_payment_refunds_request(data) do
    valid?(
      data,
      schema(%{
        "begin_time" => spec(is_binary()),
        "cursor" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "location_id" => spec(is_binary()),
        "sort_order" => spec(is_binary()),
        "source_type" => spec(is_binary()),
        "status" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def dispute_state(data) do
    valid?(data, spec(is_binary()))
  end

  def search_catalog_items_request(data) do
    valid?(
      data,
      schema(%{
        "category_ids" => spec(coll_of(spec(is_binary()))),
        "cursor" => spec(is_binary()),
        "custom_attribute_filters" =>
          spec(coll_of(spec(SquareUp.Schema.custom_attribute_filter()))),
        "enabled_location_ids" => spec(coll_of(spec(is_binary()))),
        "limit" => spec(is_integer()),
        "product_types" => spec(coll_of(spec(is_binary()))),
        "sort_order" => spec(is_binary()),
        "stock_levels" => spec(coll_of(spec(is_binary()))),
        "text_filter" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_item_visibility(data) do
    valid?(data, spec(is_binary()))
  end

  def list_customer_segments_request(data) do
    valid?(
      data,
      schema(%{"cursor" => spec(is_binary())})
      |> selection([])
    )
  end

  def job_assignment(data) do
    valid?(
      data,
      schema(%{
        "annual_rate" => spec(SquareUp.Schema.money()),
        "hourly_rate" => spec(SquareUp.Schema.money()),
        "job_title" => spec(is_binary()),
        "pay_type" => spec(is_binary()),
        "weekly_hours" => spec(is_integer())
      })
      |> selection(["job_title", "pay_type"])
    )
  end

  def loyalty_program_reward_definition_type(data) do
    valid?(data, spec(is_binary()))
  end

  def location_status(data) do
    valid?(data, spec(is_binary()))
  end

  def catalog_id_mapping(data) do
    valid?(
      data,
      schema(%{"client_object_id" => spec(is_binary()), "object_id" => spec(is_binary())})
      |> selection([])
    )
  end

  def loyalty_reward_status(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_create_category_request(data) do
    valid?(
      data,
      schema(%{"body" => spec(SquareUp.Schema.v1_category())})
      |> selection([])
    )
  end

  def catalog_item_option(data) do
    valid?(
      data,
      schema(%{
        "description" => spec(is_binary()),
        "display_name" => spec(is_binary()),
        "item_count" => spec(is_integer()),
        "name" => spec(is_binary()),
        "show_colors" => spec(is_boolean()),
        "values" => spec(coll_of(spec(SquareUp.Schema.catalog_object())))
      })
      |> selection([])
    )
  end

  def order_return(data) do
    valid?(
      data,
      schema(%{
        "return_amounts" => spec(SquareUp.Schema.order_money_amounts()),
        "return_discounts" => spec(coll_of(spec(SquareUp.Schema.order_return_discount()))),
        "return_line_items" => spec(coll_of(spec(SquareUp.Schema.order_return_line_item()))),
        "return_service_charges" =>
          spec(coll_of(spec(SquareUp.Schema.order_return_service_charge()))),
        "return_taxes" => spec(coll_of(spec(SquareUp.Schema.order_return_tax()))),
        "rounding_adjustment" => spec(SquareUp.Schema.order_rounding_adjustment()),
        "source_order_id" => spec(is_binary()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def transaction_product(data) do
    valid?(data, spec(is_binary()))
  end

  def v1_delete_category_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def v1_retrieve_item_request(data) do
    valid?(
      data,
      schema(%{})
      |> selection([])
    )
  end

  def bulk_create_team_members_response(data) do
    valid?(
      data,
      schema(%{
        "errors" => spec(coll_of(spec(SquareUp.Schema.error()))),
        "team_members" => schema(%{})
      })
      |> selection([])
    )
  end

  def order_return_line_item_modifier(data) do
    valid?(
      data,
      schema(%{
        "base_price_money" => spec(SquareUp.Schema.money()),
        "catalog_object_id" => spec(is_binary()),
        "name" => spec(is_binary()),
        "source_modifier_uid" => spec(is_binary()),
        "total_price_money" => spec(SquareUp.Schema.money()),
        "uid" => spec(is_binary())
      })
      |> selection([])
    )
  end

  def v1_tender_type(data) do
    valid?(data, spec(is_binary()))
  end
end
