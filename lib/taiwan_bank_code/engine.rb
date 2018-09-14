module TaiwanBankCode
  class Engine < ::Rails::Engine
    isolate_namespace TaiwanBankCode
    initializer "taiwan_bank_code.engine" do |app|
      ActionView::Helpers::FormBuilder.send :include, TaiwanBankCode::BankCodeHelpers::FormBuilder
    end
  end
end
