guard :rspec, cmd: 'rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/lessonly/api/(.+)\.rb$})     { |m| "spec/lib/lessonly/api/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end
