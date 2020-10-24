class InstrumentPost < ApplicationRecord
  belongs_to :post
  belongs_to :instrument
end
