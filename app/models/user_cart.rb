class UserCart < ApplicationRecord
  STATUS = ['pending', 'approved', 'denied']
  belongs_to :user
  belongs_to :service
  # after_create :set_status
  # Definindo a variavel global 'STATUS' para o metodo 'set_status'
  # O metodo 'set_status' defini todos pagamentos quando criados para 'pending' por default

  def set_status
    self.status = STATUS.first
  end
end
