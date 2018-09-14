module TaiwanBankCode
  module BankCodeHelpers
    module FormBuilder
      def bank_select(method, options = {}, html_options = {}, &block)
        json = self.bank_code_atm
        if block.nil?
          block = Proc.new do |bank|
            str = bank["code"] + " " + bank["name"]
            [str, str]
          end
        end
        choices = json.map(&block)
        select(method, choices, options, html_options)
      end

      protected
      # bank_code_tt, bank_code_atm
      ['tt', 'atm'].each do |s|
        define_method :"bank_code_#{s}" do
          JSON.parse(File.read "#{Engine.root}/db/bank_code_#{s}.json")
            .sort_by{ |b| b["code"] }
        end
      end
    end
  end
end
