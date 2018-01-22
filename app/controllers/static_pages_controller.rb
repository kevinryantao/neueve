class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def faq
    @sections = FaqHelper::ALL_FAQ_SECTIONS
  end

  def bv_testimonials
    @nurse_reviews = ["As a Nurse Practitioner, I can say I am so impressed with this product. I have recommended it to patients who did not want a prescription for their BV, and have used it myself. The trick is that it must be a true diagnosed BV, like Gardnerella, to work.",
                      "I suffered from mild dryness and BV ever since I turned 50 now I'm 52. Estrogen patches and pills did not work for me but I was determined to find something since I am in a loving relationship with a 34 year old man! (need I say anymore...) I found this product 2 months ago and started with the silver since I was not having painful sex. I immediately noticed feeling lubricated from the inside out and I stayed that way for 5 days. Sex is beyond amazing and we make love twice a day sometimes more! So I decided to order the gold formula and had trouble receiving my package in fact I didn't receive it. I called NeuEve customer service and who answers the phone? Dr. Chang herself the founder of this amazing product! She helped me track my product and when I still didn't receive it she shipped me more free of charge. She also sent me a personal Email to check on me a few days ago to make sure I received it! Change your life and try this product as a nurse of 28 years, I have never experienced such a transformation ever!,",
                      "SO happy to have found this! As an RN, I've always been reluctant to use antibiotics unless absolutely necessary. Since BV is actually not an 'infection', but an imbalance in normal flora, this product has been such a relief to find. I had recently fought an episode of BV for well over a month, miserable and mortified by the odor that would quickly return, despite showering twice a day. (SO embarrassing!) I desperately tried other brands of suppositories, folic acid and Vitamin C tablets by mouth, douching with vinegar and water, etc., with no success. The NeuEve product worked almost immediately to finally eliminate the odor and start the 'rebalancing' process. Then the first of the 3 NeuEve suppositories afterward. 3 (and then 6) nights later I used one of the other 2 suppositories. This combination finally allowed me to see a return to 'normal' life. I would recommend using panty liners each day as needed after the suppositories are used, since there may be some light discharge, but this is usually only needed on the first day. I'm going to keep NeuEve on hand from now on so I can start treatment myself right away if I have any future issues, without having to resort to harsh, expensive medications or waiting for doctor appointments."]
    @long_reviews = [
        "I'd just like to say thank you!!! I've suffered for several years with BV and vaginal dryness. I've been prescribed everything under the sun from my physician and have tried many home remedies. Nothing has worked!!! Also, my physician failed to tell me that BV can be caused by perimenopause and vaginal dryness. When I stumbled upon your website while looking for yet another home remedy, I read your home page and thought wow, my symptoms are right there!!! So I took a chance and ordered the BV Clear Kit and the Silver. From the time, I used the first suppository, I felt relief!!!! and the odor and itchiness are gone!!! I have never written a review or emailed anyone about a product but I just had to do this because I am eternally grateful to your company for making such an amazing product!!! My struggles are over!!!! Again, thank you so very much for taking this problem seriously and making a product that truly works!!!!!  There are a lot of women out there suffering the way I have and I will without a doubt recommend your product to any woman!!!!!!  This has really changed my life!!!",
        "It worked for me. I was skeptical.. given the range of reviews here. I think it's expensive (only if it doesn't work).. lol. I considered it somewhat of a bargain- since I didn't have to go to the Dr's office (waste of 1/4 -1/2 of my work day & that would have been a $15 copay) & then go to the pharmacy for antibiotics. This happened once before to me & I did get antibiotics & it took a few days for the itching & odor/discharge to go away. This stuff worked the next day. It didn't all get absorbed - so some came out for the next 24h or so after the suppository ... but it was really only when I urinated (but I wore a pantiliner 'just in case'. Now, it's a week later & no return of itching or smell or discharge... so, I'm hoping I'm all good. I'm trying to keep up my diet with the yogurt with the live cultures... don't know if that helps for this... but seemed like a reasonable hedging of bets.",
        "I have had itching and resulting burning from the constant itching, which are symptoms of BV and vaginal atrophy, I also had a horrible darkening of my vagina and painful intercourse. I also have symptoms and signs of Lichen Sclerosus. I ordered the product to see whether I could get rid of this horrible nightmare of a year and half of itching. I waited until I completed the 3 suppositories before writing a review so that I could give an honest assessment of how this product worked for me. I completed the full BV kit, using one suppository every 3-5 days (with a break between for my menses). On the first night, due to the damage from scratching it burn and was irritated for about a minute or so. On the outside areas that burned I wiped with an unscented, lint free wipe. After the sensation subsided I was so overjoyed! The itching minimized and the product felt like it was “working” and I was able to fall asleep without scratching myself raw, my vagina also felt different, as if blood was circulating around the area and plumping it up. After my menses, I used the 2nd suppository. There was no burning and the itching was still progressively getting less and less (this was far better results than the medications that I was prescribed that didn't do anything but burned constantly with no relief from the burning or itching). I used the last suppository and there was no burning except in areas where I had irritated (and areas where the LS bumps were). But even in those areas the bumps were not as pronounced or itchy or painful as before. After using the 2nd suppository, I realized that my prayers for relief were answered and I immediately ordered another BV kit AND the NeuEve Assorted Suppository Kit and the NeuEve cream. My only regret (in my haste to try anything that may have worked for me), I didn't order the NeuEve vulvar itching Cream in my first order, since I still had itching around my vulvar and believed that may have helped me also to completely stop the constant itching whiles using the suppositories.",
        "My results are very good and I would definitely use and recommend this product. I can report that my vagina began lubricating itself after the 3rd and final suppository, my vagina’s color is lightening somewhat and most importantly…THE ITCHING IS ALMOST GONE!! I believe the vulvar cream is the only thing that was missing in my first try of the product, so I recommend that you get the cream along with the formula.",
        "If you are suffering and the prescribed BV meds are not working…please, please give the NeuEve formulas a try. I am not a doctor, but if you have LS, you should also try these products, as they seem to be helping with this issue also. I will be ordering NeuEve to keep on hand. Thank you for such a wonderful product that is working beautifully for me.",
        "I am a young cancer survivor that was forced into menopause early from my cancer treatments. This is the only product that has worked long term for me. I struggled with BV issues for some time and obviously vaginal atrophy from pelvic radiation, since using this product I have not had one single reoccurrence of BV. I have since recommended this product to a few of my friends all of who are either pre or post-menopausal with similar issues (odd odor, less natural lubrication) and they all seem to love it and also recommend it. I will say initially I was skeptical, I have been using this for about 6 months and my honest opinion is that this product is exactly what the packaging states. Please keep in mind I produce no natural hormones and have been in hormone replacement therapy for 5 years, nothing has worked as well as this product. It's safe, effective, and works quickly."
    ]

    @short_reviews = ["
        These have helped break my cycle of BV and Yeast! Along with Balance Complex for women, the cycle is broken and
        I am back to normal. Hallelujah!
    ",
                      "
        Great product worked immediately literally lol. I was only experiencing the foul smell and it cleared it up
        right away.
    ",
                      "
        So happy I purchased this. This worked immediately. I was experiencing some girly discomfort and after reading
        the reviews I decided to purchase this product. By the second day I noticed a big difference. The bacteria smell
        immediately disappeared and I'm even thinking about using this every other month as a routine after my period.
    ",
                      "
        Product works really good, had no side effects and does start to work immediately. Great product so far!
    ",
                      "
        This stuff is awesome. Since the birth of my second child, BV is almost constant. I've used two different
        prescriptions in pill, gel, and ovule form. Nothing worked for long. One pack of these cured it and I use one
        dose a month to keep it gone.
    ",
                      "
        This product works very well. It takes away all my symptoms. It is the only thing that has worked for me.
    ",
                      "
        No longer a skeptic. This product WORKS ! Worked as promised. Avoided an expensive drs visit. No recurrence!
        Would recommend highly.
    ",
                      "
        I was a little skeptical but this stuff works!
    ",
                      "
        This product works way better than what my gynecologist prescribed me!!!!
    ",
                      "
        NeuEve is legitimate! It works, and fast. I've tried lots of home remedies and even prescription drugs, but none
        handled the issue faster and more effectively than NeuEve. Don't suffer in silence or wrestle with a doctor who
        keeps prescribing the same old antibiotics and hormone treatments that simply don't work. Get NeuEve today!!!
    ",
                      "
        This product really worked for me...I was having an unpleasant odor and it helped after one suppository use and
        it was completely gone after two suppository...I found it easy to use and easy to insert...it has a pleasant
        smell as well... Definitely will buy it again if I ever need.
    ",
                      "
        I love this product! It totally worked for me. I tried lots of other products & remedies, with little luck.
        Including 3 different prescriptions. This cleared up my bv just as promised. I've purchased again in case it's
        needed again. Would definitely recommend! Much cheaper than visiting the dr, less embarrassing too.
    ",
                      "
        Awesome Product!!! I have been fighting BV for a little over a month from long term antibiotics. My Dr. kept
        subscribing more antibiotics to treat BV and it never went away. After some research, I found NeuEve and will
        definetely tell my Dr. about this. My BV has cleared and I will continue with the NeuEve Gold for maintenance. I
        am SO happy I found this product!
    ",
                      "
        My daughter was cured by using this product! Godsend!!!
    ",
                      "
        Worked wonderfully for me. It got rid of the smell and slight irritation (feels like a yeast infection) I
        usually get whenever I get BV right after the first one. It is messy once it melts, but I rather deal with the
        mess than deal with BV. Totally will buy again if needed.
    ",
                      "
        This product is the most effective one of all I've tried. Fast and easy. Highly recommended.
    ",
                      "
        Love this and this will be my go to solution ...I'm on my second insert and let me say that after just the first
        one the discharge stopped and no more odor or any signs of Bv! Love this and this will be my go to solution if
        it should ever return! Awesome product esp after trying tons of home remedies and antibiotics that didn't work.
    ",
                      "
        Great product! Was cleared just after one suppository. First time getting a bv ..only sign I had was the
        unpleasant smell.
    ",
                      "
        My BV causes UTI. this is the only thing that breaks the cycle for me.
    ",
                      "
        I am so happy to have found NeuEve. I have been suffering from BV after some long-term antibiotic use. I ordered
        silver after some research on vaginal atrophy. I also found that NeuEve has a product BV Clear. These products
        are a life saver!!! After just one use the BV has cleared! My Dr. kept prescribing more antibiotics to treat BV
        and they never worked. I am so happy to have found NeuEve! I will continue with the silver and gold!
    "]

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
    # if it's a subscription, send a subscription Email
    # if it's ala carte, send an ala carte email

    if @pdt_data["txn_type"] == 'cart'
      TransactionalMailer.alacarte_email(@pdt_data).deliver_now
    elsif @pdt_data["txn_type"] == 'subscr_payment'
      TransactionalMailer.subscription_email(@pdt_data).deliver_now
    end

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
      key, value = line.split('=')
      if value.present?
        value = value.gsub('+', ' ')
        result_hash[key] = URI.unescape(value)
      end
    end
    result_hash
  end

end
