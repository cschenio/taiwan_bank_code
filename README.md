# Taiwan Bank Code
The gem provide a Rails engine for easily integrating (Taiwanese) banks and their codes as a dropdown select.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'taiwan_bank_code'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install taiwan_bank_code
```

## Usage

### Basic
The foundamental way.
``` ruby
form_with(sth) do |f|
  f.bank_select(:bank, {}, {})
end
# => <select name="sth[bank]"><option value=""></option>
# <option value="004 臺灣銀行">004 臺灣銀行</option>
# <option value="005 臺灣土地銀行">005 臺灣土地銀行</option>
# ...

### Customized
One is able to customize the name-value pair in the options by a following block.
For example:
``` ruby
form_with(sth) do |f|
  f.bank_select(:bank, {}, {}) {|bank| [bank["name"], bank["code"]]}
end
# => <select name="sth[bank]"><option value=""></option>
# <option value="004">臺灣銀行</option>
# <option value="005">臺灣土地銀行</option>
# ...
```
where the data structure is:
``` json
[
  {"name": xxx, "code": 999},
  ...
]
```

## Contributing
Right now the gem is hardly completed, but the author(s) has no plan to develop this in the near future. Any contribution is welcomed. The most urgent feature is to patch the main function to `select_tag(ActionView::Helpers::FormTagHelper)` and re-realize the current function `select` by calling the preceding method.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
