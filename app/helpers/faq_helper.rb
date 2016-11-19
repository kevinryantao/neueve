require 'objects/faq_question'
require 'objects/faq_section'


module FaqHelper

  INGREDIENTS_SECTION = FaqSection.new('NeuEve Ingredients: ',[
      FaqQuestion.new('proprietaryBlend', "I asked my doctor whether he could recommend me to use NeuEve, but he wants to know what secret ingredients in your proprietary blend are before he can give recommendation. So, could you tell me what ingredients are in your proprietary blend?"),
      FaqQuestion.new('silkSilverGoldDifferences', "What are the <strong>differences</strong> among the Silk, Silver and Gold formulas?"),
      FaqQuestion.new('silkSilverGoldIngredientDifferences', "The ingredients listed are all the same among the Silk, Silver and Gold. <strong>Are there
        different ingredients in each formula</strong> or is it the quantity of each ingredient that makes
        the difference?"),
      FaqQuestion.new('activeIngredient', "What is the <strong>active ingredient</strong> in NeuEve that works?"),
      FaqQuestion.new('suppositoryForm', "Why is NeuEve produced in <strong>suppository form</strong>?"),
      FaqQuestion.new('oilBased', "Why are NeuEve suppositories <strong>oil-based</strong>?"),
      FaqQuestion.new('tropicalTraditions', "The palm oil industry is destroying rainforests. For the sake of the environment and wildlife, please stop using palm oil.")
  ])

  APPLICATION_SECTION = FaqSection.new('NeuEve Application: ',[
      FaqQuestion.new('supplements', "Can I take some <strong>supplements</strong> to help NeuEve work better?"),
      FaqQuestion.new('whySupplements', "Why would I need to supplement with other things if NeuEve works?"),
      FaqQuestion.new('dryEyeMouth', "I have tried NeuEve suppositories, but I still feel dry. Also, <strong>my eyes and mouth also
        feel terribly dry</strong>. Is there anything that I can do to help improve this dryness?"),
      FaqQuestion.new('drynessGone', "With only 3 NeuEve suppositories my <strong>dryness is gone</strong>. Should I stop using NeuEve?"),
      FaqQuestion.new('selectingFormula', "How do I select the right NeuEve suppository <strong>formula</strong>?"),
      FaqQuestion.new('reallyAtrophied', "If I am really <strong>atrophied</strong> should I use the cream instead of the suppository or both?"),
      FaqQuestion.new('extremeDryness', "I was wondering why I was directed to the mildest formula when I suffer from <strong>extreme
        dryness. Should I use the strongest formula</strong> instead?"),
      FaqQuestion.new('howToUse', "<strong>How do I use</strong> NeuEve vaginal suppositories?"),
      FaqQuestion.new('chunkLeakedOut', "In the second morning, I noticed that <strong>a chunk of suppository leaked out</strong>. Should I be worried
        about it?"),
      FaqQuestion.new('whenBeforeSex', "<strong>When should I use NeuEve suppository</strong> before I can have sex? The day before
        or an hour before? Could you give me a more detailed instruction on when I should use
        it?"),
      FaqQuestion.new('oralSex', "Can my partner do <strong>oral sex</strong> while using this product? Will it be unsafe and hurt my partner?"),
      FaqQuestion.new('estrace', "My gynecologist also has me on Estrace cream twice a week. How many days should I space out the Silk
        suppositories with my prescription Estrace?")
  ])

  BV_SECTION = FaqSection.new('BV/Infection: ',[
      FaqQuestion.new('otherInfections', "Since NeuEve can eliminate odor caused by <strong>BV</strong>, can it take care of other <strong>vaginal
        infections</strong>?"),
      FaqQuestion.new('newInfection', "I have a long distance new boyfriend and we had intimacy lately after using
        NeuEve. Now, I have an infection and have to go to my gynecologist to get treatment. <strong>Could
        your suppository cause my infection?</strong>"),
      FaqQuestion.new('bv', "I tried your BV Clear Starter Kit but did not receive the desired outcome.  My BV
        symptoms did not diminish.  Could you tell me what to do next?"),
      FaqQuestion.new('clindamycin', "I was just diagnosed with BV by my gynecologist.  He prescribed me
clindamycin vaginal cream for seven days.  When can I start using your product and
which product would be best to use after a seven day round of antibiotic cream?"),
      FaqQuestion.new('bv_clear_kit', "Why does the BV Clear Kit works for other women but not for me?"),
      FaqQuestion.new('bv_antibiotics', "I was interested in purchasing your BV Clear Kit. Does it clear odor only or does it get rid of BV completely? <strong>Antibiotics</strong> have not been working for me."),
      FaqQuestion.new('bv_how_to_use', "How to use the BV Clear Kit?"),

  ])

  COMMON_KNOWLEDGE_SECTION = FaqSection.new('Common Knowledge: ',[
      FaqQuestion.new('vaginalDrynessAndOdor', "Why do women suffer from <strong>vaginal dryness and odor</strong>?"),
      FaqQuestion.new('contraceptive', "Do NeuEve vaginal suppositories provide <strong>contraceptive protection</strong>?"),
      FaqQuestion.new('condoms', "Does the use of NeuEve vaginal suppositories influence the effect of <strong>condoms</strong>?"),
      FaqQuestion.new('relieveAtrophyWithoutHormones', "How does NeuEve work in <strong>relieving vaginal atrophy without hormones</strong>?"),
      FaqQuestion.new('lichenSclerosus', "I have <strong>lichen sclerosus</strong> with itching and painful sex. Can NeuEve help me?"),
      FaqQuestion.new('pregnant', "Is there something in the suppositories that is harmful to unborn babies? I noticed you advise not using the
        suppositories if <strong>pregnant.</strong> My concern is if <strong>I were to conceive and not know yet I was
        pregnant</strong> and be using the suppositories I would not want to endanger my child."),
      FaqQuestion.new('herpes', "After using NeuEve for a day, my old <strong>herpes</strong> flares up. Does NeuEve contain L-arginine that could trigger herpes to flare up?")

  ])

  COST_SECTION = FaqSection.new('Cost: ',[
      FaqQuestion.new('whyExpensive', "NeuEve works great, but why is it so expensive?"),
      FaqQuestion.new('jelly', "<strong>Lubricant</strong> is cheap. How is NeuEve better than <strong>Jelly</strong>?"),
      FaqQuestion.new('vitamin_e', "The <strong>vitamin E</strong> suppository is cheap and it can make me feel comfortable. NeuEve is more expensive. Could you explain why it is better than the vitamin E suppository?")

  ])

  OTHER_SECTION = FaqSection.new('Other: ',[
      FaqQuestion.new('changeSubscription', "How can I change my subscription from Silver to Gold formula?"),
      FaqQuestion.new('hotClimate', "I live in a very hot climate. Will the effectiveness of the product be
        compromised if the whole package is stored in the refrigerator? Or, would
        it better to place the next suppository I will use in the fridge and hour or
        two before insertion? Please advise."),
      FaqQuestion.new('cream_sealed', "I have just received the NeuEve cream, but it is not sealed. I think it is not safe. Please explain."),

  ])

  ALL_FAQ_SECTIONS = [
      INGREDIENTS_SECTION,
      APPLICATION_SECTION,
      BV_SECTION,
      COMMON_KNOWLEDGE_SECTION,
      COST_SECTION,
      OTHER_SECTION
  ]

end