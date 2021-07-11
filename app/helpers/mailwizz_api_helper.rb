module MailwizzApiHelper

  def initialize_mailwizz_data
    mailwizz_data = {}
    mailwizz_data['FIRST_PURCHASE_DATE']=Date.today.to_s
    mailwizz_data['LAST_PURCHASE_DATE']=Date.today.to_s
    mailwizz_data['CHECKOUT_COUNT']=0

    mailwizz_data['CART_ITEM_COUNT']=0
    mailwizz_data['IS_SUBSCRIBER']=0

    mailwizz_data['SILK_COUNT'] = 0
    mailwizz_data['SILVER_COUNT'] = 0
    mailwizz_data['GOLD_COUNT'] = 0
    mailwizz_data['BV_COUNT'] = 0
    mailwizz_data['CREAM_COUNT'] = 0
    mailwizz_data['APPLICATOR_COUNT'] = 0
    mailwizz_data['ASSORTED_COUNT'] = 0
    mailwizz_data['SEA_BUCKTHORN_60_COUNT'] = 0
    mailwizz_data
  end

  def create_or_update_mailwizz_data(pdt_data, mailwizz_data = initialize_mailwizz_data)
    mailwizz_data['EMAIL']=pdt_data['payer_email']
    mailwizz_data['FNAME']=pdt_data['first_name']
    mailwizz_data['LNAME']=pdt_data['last_name']
    mailwizz_data['LAST_TXN_ID']=pdt_data['txn_id']
    mailwizz_data['PHONE']=pdt_data['contact_phone']


    mailwizz_data['LAST_PURCHASE_DATE']=Date.today.to_s

    mailwizz_data['CHECKOUT_COUNT'] = mailwizz_data['CHECKOUT_COUNT'].to_i + 1

    mailwizz_data['SUBSCRIBE_START_DATE']=Date.today.to_s

    mailwizz_data['STREET'] = pdt_data['address_street']
    mailwizz_data['ZIP'] = pdt_data['address_zip']
    mailwizz_data['CITY'] = pdt_data['address_city']
    mailwizz_data['STATE'] = pdt_data['address_state']
    mailwizz_data['COUNTRY'] = pdt_data['address_country']

    if pdt_data['num_cart_items'].to_i > 0 #ala carte
      for i in 1..pdt_data['num_cart_items'].to_i
        quantity = pdt_data["quantity#{i}"].to_i

        if pdt_data["item_number#{i}"].include?('x 4')
          mailwizz_data['CART_ITEM_COUNT'] = mailwizz_data['CART_ITEM_COUNT'].to_i + 4 * quantity
        elsif pdt_data["item_number#{i}"].include?('x 3')
          mailwizz_data['CART_ITEM_COUNT'] = mailwizz_data['CART_ITEM_COUNT'].to_i + 3 * quantity
        elsif pdt_data["item_number#{i}"].include?('x 2')
          mailwizz_data['CART_ITEM_COUNT'] = mailwizz_data['CART_ITEM_COUNT'].to_i + 2 * quantity
        else
          mailwizz_data['CART_ITEM_COUNT'] = mailwizz_data['CART_ITEM_COUNT'].to_i + quantity
        end

        case pdt_data["item_number#{i}"]
          when 'silk'
            mailwizz_data['SILK_COUNT'] = mailwizz_data['SILK_COUNT'].to_i + quantity
          when 'silver'
            mailwizz_data['SILVER_COUNT'] = mailwizz_data['SILVER_COUNT'].to_i + quantity
          when 'gold'
            mailwizz_data['GOLD_COUNT'] = mailwizz_data['GOLD_COUNT'].to_i + quantity
          when 'bv-clearing-kit'
            mailwizz_data['BV_COUNT'] = mailwizz_data['BV_COUNT'].to_i + quantity
          when 'cream'
            mailwizz_data['CREAM_COUNT'] = mailwizz_data['CREAM_COUNT'].to_i + quantity
          when 'applicator'
            mailwizz_data['APPLICATOR_COUNT'] = mailwizz_data['APPLICATOR_COUNT'].to_i + quantity
          when 'assorted'
            mailwizz_data['ASSORTED_COUNT'] = mailwizz_data['ASSORTED_COUNT'].to_i + quantity
          when 'sea_buckthorn_60'
            mailwizz_data['SEA_BUCKTHORN_60_COUNT'] = mailwizz_data['SEA_BUCKTHORN_60_COUNT'].to_i + quantity
          when 'sea_buckthorn_60 x 2'
            mailwizz_data['SEA_BUCKTHORN_60_COUNT'] = mailwizz_data['SEA_BUCKTHORN_60_COUNT'].to_i + 2 * quantity
          when 'sea_buckthorn_60 x 3'
            mailwizz_data['SEA_BUCKTHORN_60_COUNT'] = mailwizz_data['SEA_BUCKTHORN_60_COUNT'].to_i + 3 * quantity
          when 'sea_buckthorn_60 x 4'
            mailwizz_data['SEA_BUCKTHORN_60_COUNT'] = mailwizz_data['SEA_BUCKTHORN_60_COUNT'].to_i + 4 * quantity
          when 'silk x 4'
            mailwizz_data['SILK_COUNT'] = mailwizz_data['SILK_COUNT'].to_i + 4 * quantity
          when 'silver x 4'
            mailwizz_data['SILVER_COUNT'] = mailwizz_data['SILVER_COUNT'].to_i + 4 * quantity
          when 'gold x 4'
            mailwizz_data['GOLD_COUNT'] = mailwizz_data['GOLD_COUNT'].to_i + 4 * quantity
          when 'bv-clearing-kit x 2'
            mailwizz_data['BV_COUNT'] = mailwizz_data['BV_COUNT'].to_i + 2 * quantity
          when 'bv-clearing-kit x 3'
            mailwizz_data['BV_COUNT'] = mailwizz_data['BV_COUNT'].to_i + 3 * quantity
          when 'bv-clearing-kit x 4'
            mailwizz_data['BV_COUNT'] = mailwizz_data['BV_COUNT'].to_i + 4 * quantity
          when 'cream x 4'
            mailwizz_data['CREAM_COUNT'] = mailwizz_data['CREAM_COUNT'].to_i + 4 * quantity
          else
        end
      end
    elsif pdt_data["txn_type"] == 'subscr_payment'
      mailwizz_data['IS_SUBSCRIBER'] = 1
      mailwizz_data['SUBSCRIBE_START_DATE'] = Date.today.to_s
      case pdt_data['item_number']
        when 'silk' || 'silk-ca'
          mailwizz_data['SILK_COUNT'] = mailwizz_data['SILK_COUNT'].to_i + 1
        when 'silver' || 'silver-ca'
          mailwizz_data['SILVER_COUNT'] = mailwizz_data['SILVER_COUNT'].to_i + 1
        when 'gold' || 'gold-ca'
          mailwizz_data['GOLD_COUNT'] = mailwizz_data['GOLD_COUNT'].to_i + 1
        when 'bv-clearing-kit'
          mailwizz_data['BV_COUNT'] = mailwizz_data['BV_COUNT'].to_i + 1
        when 'cream'
          mailwizz_data['CREAM_COUNT'] = mailwizz_data['CREAM_COUNT'].to_i + 1
        when 'sea_buckthorn_60'
          mailwizz_data['SEA_BUCKTHORN_60_COUNT'] = mailwizz_data['SEA_BUCKTHORN_60_COUNT'].to_i + 1
        else
      end
      mailwizz_data['CART_ITEM_COUNT'] = mailwizz_data['CART_ITEM_COUNT'].to_i + 1
    end

    mailwizz_data
  end

  def ajax_mailwizz_add_subscriber(data)
    # case segment
    #   when :bv
    #     list = 'co284xlkzpd15'
    #   when :subscriber
    #     list = 'vn950gce653f0'
    #   when :purchase
    #     list = 'gk6598t9f5aff'
    #   else
    #    list = 'rk386syp21bf2' # test
    # end

    list = 'dv927wz51ca58' # All Customers

    request = Typhoeus::Request.new(
        "http://mailserver.neueve.com/api/lists/#{list}/subscribers/",
        method: :post,
        body: data.to_query,
        headers: { 'Content-Type' => 'application/x-www-form-urlencoded',
                   'x-mw-public-key' => ENV['MAILWIZZ_PUBLIC_KEY'],
                   'x-mw-timestamp' => Time.now.to_i
        },
        ssl_verifypeer: false,
        ssl_verifyhost: 0,
        verbose: true,
        timeout: 10
    )
    request.on_complete do |response|
      if response.success?
        Rails.logger.info(response.response_body)
        return response.response_body
      else
        error_response = response.body
        Rails.logger.error("Mailwizz Add Subscriber Failed with Error: #{error_response}, payload: #{data.to_query}")
        return nil
      end
    end
    request.run
  end


  def ajax_mailwizz_update_subscriber(subscriber_uid, data, list = 'dv927wz51ca58')

    request = Typhoeus::Request.new(
        "http://mailserver.neueve.com/api/lists/#{list}/subscribers/#{subscriber_uid}",
        method: :put,
        body: data.to_query,
        headers: { 'Content-Type' => 'application/x-www-form-urlencoded',
                   'x-mw-public-key' => ENV['MAILWIZZ_PUBLIC_KEY'],
                   'x-mw-timestamp' => Time.now.to_i
        },
        ssl_verifypeer: false,
        ssl_verifyhost: 0,
        verbose: true,
        timeout: 10
    )
    request.on_complete do |response|
      if response.success?
        Rails.logger.info(response.response_body)
        return response.response_body
      else
        error_response = response.body
        Rails.logger.error("Mailwizz Update Subscriber Failed with Error: #{error_response}, payload: #{data.to_query}")
        return nil
      end
    end
    request.run
  end


  #
  # {
  # "status": "success",
  #     "data": {
  #     "record": {
  #         "subscriber_uid": "jx3072dnm4c8f",
  #         "status": "confirmed",
  #         "source": "api",
  #         "ip_address": "64.208.130.35",
  #         "EMAIL": "kevin.toaster@gmail.com",
  #         "FNAME": "Kevin",
  #         "LNAME": "Test",
  #         "STREET1": "",
  #         "STREET2": "",
  #         "ZIPCODE": "",
  #         "LTV": "",
  #         "DATELPURCHASE": "",
  #         "COUNTRY": "",
  #         "STATE": "",
  #         "CITY": "",
  #         "COUNTRY2": "",
  #         "STATE2": "",
  #         "LAST_PURCHASE_DATE": "",
  #         "PRODUCT_NAMES": "",
  #         "CHECKOUT_COUNT": "",
  #         "CART_ITEM_COUNT": ""
  #     }
  #   }
  # }
  #
  def ajax_mailwizz_get_subscriber(subscriber_uid, list = 'dv927wz51ca58')
    request = Typhoeus::Request.new(
        "http://mailserver.neueve.com/api/lists/#{list}/subscribers/#{subscriber_uid}",
        method: :get,
        body: nil,
        headers: { 'Content-Type' => 'application/json',
                   'x-mw-public-key' => ENV['MAILWIZZ_PUBLIC_KEY'],
                   'x-mw-timestamp' => Time.now.to_i
        },
        ssl_verifypeer: false,
        ssl_verifyhost: 0,
        verbose: true,
        timeout: 10
    )
    request.on_complete do |response|
      if response.success?
        Rails.logger.info(response.response_body)
        json_response = JSON.parse(response.response_body)
        if json_response['data'] != nil
          if json_response['data']['record'] != nil
            return json_response['data']['record']
          end
        end
        return nil
      else
        error_response = response.body
        Rails.logger.error("Mailwizz Get Subscriber Failed with Error: #{error_response}, subscriber_uid: #{subscriber_uid}")
        return nil
      end
    end
    request.run
  end


  # Response Format
  # Success:
  # {
  # "status": "success",
  #     "data": {
  #     "subscriber_uid": "jx3072dnm4c8f",
  #     "status": "confirmed",
  #     "date_added": "2018-01-17 20:53:37"
  #   }
  # }
  # Error:
  #
  def mailwizz_get_uuid_by_email(email)
    list = 'dv927wz51ca58' # all subscribers
    payload = "EMAIL=#{email}"
    request = Typhoeus::Request.new(
        "http://mailserver.neueve.com/api/lists/#{list}/subscribers/search-by-email?#{payload}",
        method: :get,
        body: nil,
        headers: { 'Content-Type' => 'application/x-www-form-urlencoded',
                   'x-mw-public-key' => ENV['MAILWIZZ_PUBLIC_KEY'],
                   'x-mw-timestamp' => Time.now.to_i
        },
        ssl_verifypeer: false,
        ssl_verifyhost: 0,
        verbose: true,
        timeout: 10
    )
    request.on_complete do |response|
      if response.success?
        Rails.logger.info(response.response_body)
        json_response = JSON.parse(response.response_body)
        if json_response['data'] != nil
          if json_response['data']['subscriber_uid'] != nil
            return json_response['data']['subscriber_uid']
          end
        end
        return nil
      else
        error_response = response.body
        Rails.logger.error("Mailwizz Get UUID Failed with Error: #{error_response}, payload: #{payload}")
        return nil
      end
    end
    request.run
  end

end
