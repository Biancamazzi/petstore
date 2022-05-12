class UserCart < ApplicationRecord
  belongs_to :service
  belongs_to :user
  # after_create :set_status
  # Definindo a variavel global 'STATUS' para o metodo 'set_status'

  # O metodo 'set_status' define todos pagamentos quando criados para 'pending' por default

  def set_status
    self.status = STATUS.first
  end
end
