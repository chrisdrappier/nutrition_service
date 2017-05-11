class CreateAbbrevs < ActiveRecord::Migration[5.0]
  def change
    create_table :abbrevs do |t|
      t.string :ndb_no
      t.string :shrt_desc
      t.decimal :water
      t.decimal :energ_kcal
      t.decimal :protein
      t.decimal :lipid_tot
      t.decimal :ash
      t.decimal :carbohydrt
      t.decimal :fiber_td
      t.decimal :sugar_tot
      t.decimal :calcium
      t.decimal :iron
      t.decimal :magnesium
      t.decimal :phosphorus
      t.decimal :potassium
      t.decimal :sodium
      t.decimal :zinc
      t.decimal :copper
      t.decimal :manganese
      t.decimal :selenium
      t.decimal :vit_c
      t.decimal :thiamin
      t.decimal :riboflavin
      t.decimal :niacin
      t.decimal :panto_acid
      t.decimal :vit_b6
      t.string :folate_tot
      t.string :folic_acid
      t.string :food_folate
      t.string :folate_dfe
      t.string :choline_tot
      t.string :vit_b12
      t.string :vit_a_iu
      t.string :vit_a_rae
      t.string :retinol
      t.string :alpha_carot
      t.string :beta_carot
      t.string :beta_crypt
      t.string :lycopene
      t.string :lut_zea
      t.string :vit_e
      t.string :vit_d_mcg
      t.string :vit_d_iu
      t.string :vit_k
      t.string :fa_sat
      t.string :fa_mono
      t.string :fa_poly
      t.string :cholestrl
      t.decimal :gm_wt_1
      t.string :gm_wt_desc1
      t.decimal :gm_wt_2
      t.string :gm_wt_desc2
      t.string :refuse_pct

      t.timestamps
    end
  end
end
