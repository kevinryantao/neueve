class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def faq
    @sections = FaqHelper::ALL_FAQ_SECTIONS
  end

  def libido
    @reviews = ["I am a young sixty year old woman and breast cancer survivor. My kids call me sixty and sexy, but I was not feeling sexy. I was extremely sensitive and tender to the point that my clothes chafed me, sitting was uncomfortable, bicycling painful and it was making me miserable although I am a happy individual. I had used estriol cream with little effect. My woman's health doctors dismayed that the gynecological world was focused on the reproductive years and woman beyond that were ignored. After being told I should use zinc oxide to heal the chafing, I desperately and thankfully sought help on the internet and discovered NeuEve and Dr. Chang. I am only using less than a week and I am the most comfortable I have been in years. I just subscribed and am thrilled to have regained my sexual health.",
                "I am so thrilled with this product! I am 54 and post-menopausal. I am healthy, active and feel great except for the dryness and painful sex I have been experiencing for a couple of years. I did not want to have to use chemicals and/or hormones to deal with these problems, but was starting to feel desperate. Thank goodness I came across this product! After reading all the advice/instructions and reviews I started with the Silk Formula Starter Kit. I have used if for a month along with the cream. I can't believe the difference it has made! It literally has alleviated all my problems! I am ready to start using the Silver formula next. NeuEve is amazing! I am going to spread the word to all my friends.",
                "I cannot believe the results of trying this!! I've been on many HRTs. They never helped me like the NeuEve has. I had a hysterectomy and unfortunately now have vaginal atrophy. I would tear, bleed. It was like papercuts on my vulva area. I was dry on the inside. For me it was embarrassing trying to explain what I had to my bf. I was NEVER like this until my hysterectomy. I use the Silk once a week and it's amazzzing. It's made all the difference in the world.",
                "I am 35 and am healing from an Auto immune disorder. Along with Autoimmune came fertility issues. Vaginal Atrophy and low estrogen being one of them. I cannot use hormone related products to help with the Atrophy, the hormones make my Thyroid levels drop immediately. So I researched and researched, until I found this amazing product!!!! yay!!! My husband and I can have sex again. We are seeing significant success after just 2 applications of the silk line. I plan on going through the whole line up to GOLD!!! Can’t thank this amazing company enough!!!! I love y'all!",
                "Vaginal dryness my partner experienced in the last couple of years finally became a major impediment to enjoying intimacy as it was unbearable for her to engage altogether. She tried multiple products her MD prescribed but the side effects, as in heightened and more frequent hot flashes, discouraged her continued use; nothing she tried seem to work. So several months ago, in complete frustration, I went online and stumbled on Dr. Chang's NewEve product. My fiancée and I reviewed the product and that same day I placed the order. After these several months of using NeuEve, major progress has been achieved as we have now re-engaged all the way! Intimacy is very important to me in a relationship and I feel this product has given that back to both or us. Major THANK YOU Dr. Chang!",
                "This really works!! First thing I have found that actually helps, life is great again.",
                "This works very well and I noticed a more pleasant sexual experience after using this product a couple of times.",
                "I have been using the silver along with the cream...I love it! This has helped me more than anything that I have ever tried. I am switching to the gold in hopes that I will only have to use once per week. I will switch back to silver if it doesn't work for me.....I had a hysterectomy nearly 20 years ago and have suffered from atrophy, BV, burning and itching associated with dryness. This all went away after one use!...I have tried vaginal estrogen, lubricants, vitamin E and nothing has helped until now. NeuEve is amazing...I cannot thank you enough!",
                "I am a woman 57 years old and have had problems with dryness and pain for many years during intimacy with my spouse. My doctor prescribed premarin cream and I used it but it never worked very well and the cancer scare made me want to see if there was another possibility. I heard about NeuEve and ordered it. What a difference in the very first dose! I too am feeling younger, I am not afraid of the pain because it is gone! And no cancer risk. I highly recommend this product. It is reasonably priced and worth every penny! It has made such a difference. Easy to use, no side effects and great results!",
                "Yes Do Not pass up this opportunity to feel better! It is a little expensive for me but my self-esteem and sexual health are worth it, and so is yours! I have tried many things like many woman do. You name it, I've tried it. This product by far has been amazing. It takes a minute to get used to it but I tried other suppositories and they just leaked all over my panties. This, well for me it was absorbed , I inserted another one a day later, it melted and I do not have that achy feeling, smell or dryness. Yippy. Plus, I had a great night with my man! Woke up in the morning and was able to do it again, no problem. It had been over nine months since that happened. I stopped sleeping with him for fear he would want to be intimate. It was so painful, like sand paper! UGH!! I know men make jokes but let me tell you it is NO joke to feel like you are all chapped inside!", "Thank you so much and I am sure you've heard it before but this is such an answer to prayer!!!! Thank you. I am just turning 50 this year but very healthy, young and live very organic and holistically so I was devastated to start having painful sex issues thinking there was nothing all natural to help. To find your product was a little miracle for me! Also I think it took care of the other little issue I had with small tiny but growing white bumps on the outside of Urethra and the Urologist said it was an Estrogen problem. THANK YOU!!",
                "I am a 53 year old woman who had not had sex in two years and was experiencing pain when trying to have sex. I first tried coconut oil without success. I wanted something non-toxic so I then bought a 3-pack of NeuEve at my local health food store upon their recommendation. The first suppository lubricated me but I still had pain. The second was better but penetration was still painful. What do they say, third time is a charm? I love this product and the woman who developed it. Thank you for helping so many of us.",
                "Just returned from a mini-vacation with my boyfriend, had to write! After over a year of post-menopausal dryness, painful sex, and bleeding after intercourse, I was desperate for a solution. I'm uninsured, so I can't use prescription estrogen because it's too expensive. Nothing I tried over the counter worked well, especially for the pain and bleeding. I used one Silver suppository the night before our trip. When I got up to go to the bathroom during the night, I could literally feel it working! It's hard to describe, but it felt tingly, like my tissue was plumping and coming back to life. Well, the next night when we were on vacation was the first time in over a year I has sex that was pain-free! We used a glycerin based lubricant and had a wonderful night together. We were amazed! But I did experience bleeding afterward, as usual. My boyfriend was being a good sport about the bleeding, so I used a second suppository the next morning before we started our tour. Well, that night there was no pain OR bleeding….. Nothing! I felt so liberated. No more towels or sanitary pads, I have my dignity and my sexuality back! I'm spreading the word to all my friends. Those who are great cancer survivors will be especially excited to try NeuEve! It was truly life changing for me, and I can't thank you enough for this wonderful product!",
                "I am a women in my late forties and have noted changes in my sexual desire lately. It was also becoming more uncomfortable to engage in activities with my spouse. I found this item while searching for something to increase my desire and decrease the discomfort. Saw this, bought this and tried this. I feel like a women in my twenties again..... Highly recommended.",
                "Thank you, Dr. Chang. And thank you for the greatest product ever. I had uterine cancer and underwent radiation therapy. NeuEve has been a life changer.",
                "The stuff really works! I had a lot of pain and even some bleeding at the time of intimacy and decided to use the product and give it a try ...with the second suppository I started feeling much better ... now I have used it for two months and I am so very happy ...I am ordering again and again :-)",
                "You never know what you will get ordering something online, especially one that treats feminine issues. The reviews I had read earlier prompted me to try. The price was reasonable. I had no idea I would see results after the first application! I continued for the full week of recommended dosage and I am still happy with the results. I'm not big on going to the gynecologist, so this was worth it, no meds or pills to take. This is a product I would definitely order again. :)",
                "The suppository are wonderful. I use them with the cream and the vaginal dilator. My husband and I are now able to have pleasurable intercourse. Thank you for this product.",
                "Excellent, Excellent product. It actually does what it has been described to do. I have been using this product for about four months and it works great.",
                "I am 52 year old that had dryness and pain during sex. After a month on the silver plan our love life is back!!!!!",
                "I've used vaginal HT with satisfactory results. This is much better. It feels like putting lotion on very dry hands. Very soothing. My husband even mentioned how he noticed the difference.",
                "What I thought was a loss of interest in my husband, was just me trying to avoid pain because or dryness. This product gave me a new chance to get back into the game. The all natural ingredients made me very confident to try it and the results made me buy more. If you have dryness and irritation or pain, please give it a try. It has changed my life. Believe it or not, my husband found this product for me and he is quite pleased with himself.",
                "I LOVE this Fabulous women’s product! I have been using the NeuEve Silk, My Husband and I are falling in Love all over again, now I enjoy our intimacy again. It was painful and then awkward applying and reapplying cold gooey gels and we will only use all natural products so was very difficult to find anything natural and enjoyable that helped, now that I found NeuEve it is the solution to all those problems. NeuEve has Renewed our Marriage, THANK YOU!!! You can't go wrong with this Silk Starter Kit!",
                "I bought this product because it addresses all my feminine issues: vaginal dryness, painful sex, and vaginal atrophy. We stopped having intercourse because it was just too painful, but after using the Silk starter kit(s) for about 6 weeks, we just started having sex again. There is still a little discomfort, but no more dryness or extreme pain trying to have sex. I am hoping any mild discomfort will subside if I continue with the silver program. I am amazed this product works as well as it does. For background info: I'm 54 years old; post-menopausal; my gyno recommended bioidentical hormones (which had some side effects for me) or other goopy products that didn't sound like it would address my atrophy or pain, so I went online to find an alternative. I am writing a review, because one of the reasons why I tried it, was because of all the positive reviews, so I also wanted to contribute. I'm so glad I came across NeuEve.",
                "I'm 51 years old and post-menopausal. I have been suffering with vaginal pain/dryness since I was 40 years old due to starting menopause in my mid thirties. I have tried other products but nothing has worked until now that I have been using the Silk formula along with the cream for about six months. Now I'm ready to try the Silver product. This product is truly amazing! because my husband and I are truly blessed with this product. We have been married for 33 years and we didn't think our sex life would ever be the same after menopause but this product gave us our sex life back. Thank you Dr. Chang for this wonderful product without chemicals.",
                "I'm a happy old goat. I thought the days of me and the misses joining giblets where long over. But thanks to use of NeuEve, we can do the mattress jig like we used to. Hot dang - I look forward to Saturday nights again!",
                "Simply Amazing! This product is amazing! I'm 40 years old and had a partial hysterectomy about 10 years ago. I haven't been sexually active in a few years, but recently attempted to give it a go. I don't know if it was the hysterectomy or the lack of activity, but let's just say it was as dry as a desert down there...and painful! So I did some research online and ran across Neueve. The good reviews far outweighed the bad and I decided to give it a try. All I can say is WOW, WOW, WOW! I only used it twice and let's just say splash! The desert has turned into a river. I stopped using it to see if it was something I'd have to keep taking. Nope! It completely corrected the problem. Now that's satisfaction! I'd recommend this to all my family, friends, loved ones, and even those I don't know that could benefit from using it. This product is magic! Thanks Neueve!",
                "Trust Me! This Really Works! I suffered from mild dryness and BV ever since I turned 50 now I'm 52. Estrogen patches and pills did not work for me but I was determined to find something since I am in a loving relationship with a 34 year old man! (need I say anymore...) I found this product 2 months ago and started with the silver since I was not having painful sex. I immediately noticed feeling lubricated from the inside out and I stayed that way for 5 days. Sex is beyond amazing and we make love twice a day sometimes more! So I decided to order the gold formula and had trouble receiving my package in fact I didn't receive it. I called NeuEve customer service and who answers the phone? Dr. Chang herself the founder of this amazing product! She helped me track my product and when I still didn't receive it she shipped me more free of charge. She also sent me a personal Email to check on me a few days ago to make sure I received it! Change your life and try this product as a nurse of 28 years, I have never experienced such a transformation ever!"]
  end

  def success
    paypal_transaction_id = params[:tx]
    @pdt_data = ajax_paypal_pdt(paypal_transaction_id)
    @estimated_delivery_date = 7.days.from_now.strftime("%Y-%m-%d")
  end

  def ajax_paypal_pdt(transaction_id)
    payload = "cmd=_notify-synch&tx=#{transaction_id}&at=#{ENV['PAYPAL_PDT_TOKEN']}"
    request = Typhoeus::Request.new(
        'https://www.paypal.com/cgi-bin/webscr',
        method: :post,
        body: payload,
        headers: { 'Content-Type' => 'application/x-www-form-urlencoded' },
        ssl_verifypeer: false,
        ssl_verifyhost: 0,
        verbose: true,
        timeout: 10
    )
    request.on_complete do |response|
      if response.success?
        body = parse_paypal_pdt(response.response_body)
        Rails.logger.info(body)
        return body
      else
        error_response = response.body
        Rails.logger.error("Paypal PDT Failed with Error: #{error_response}, payload: #{payload}")
        return nil
      end
    end
    request.run
  end

  def parse_paypal_pdt(body)
    result_hash = {}
    lines = body.split("\n")
    lines.each do |line|
      key,value = line.split('=')
      if value.present?
        value = value.gsub('+', ' ')
        result_hash[key] = URI.unescape(value)
      end
    end
    result_hash
  end

end
