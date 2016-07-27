require 'spec_helper'

require 'dredd_hooks/methods'

module DreddHooks

  class DummyHooksFile
    include DreddHooks::Methods
  end

  describe Methods do

    let(:hooks_file) { DummyHooksFile.new }

    it 'defines #before', public: true do
      expect(hooks_file).to respond_to :before
    end

    it 'defines #before_validation', public: true do
      expect(hooks_file).to respond_to :before_validation
    end

    it 'defines #after', public: true do
      expect(hooks_file).to respond_to :after
    end

    it 'defines #before_each', public: true do
      expect(hooks_file).to respond_to :before_each
    end

    it 'defines #before_each_validation', public: true do
      expect(hooks_file).to respond_to :before_each_validation
    end

    it 'defines #after_each', public: true do
      expect(hooks_file).to respond_to :after_each
    end

    it 'defines #before_all', public: true do
      expect(hooks_file).to respond_to :before_all
    end

    it 'defines #after_all', public: true do
      expect(hooks_file).to respond_to :after_all
    end

    it 'does not expose its #runner', private: true do
      expect(hooks_file).not_to respond_to :runner
    end
  end
end
