require 'warden-always-authenticate'

describe 'forcing authentication via warden' do

  let(:app)    { double 'rack stack', :call => result }
  let(:env)    { { 'warden' => warden } }
  let(:result) { double 'result' }
  let(:warden) { double 'warden', :authenticate! => true }

  subject { Warden::AlwaysAuthenticate.new(app).call env }

  context 'when succesful' do

    it 'forces warden to authenticate' do
      expect(warden).to receive(:authenticate!)
      subject
    end
    it 'calls down the stack' do
      expect(app).to receive(:call).with(env)
      subject
    end
    it 'returns the result of the stack call' do
      expect(subject).to eq(result)
    end
  end

  context 'during failure' do
    before do
      allow(warden).to receive(:authenticate!).and_throw(:warden)
    end

    it 'forces warden to authenticate' do
      expect(warden).to receive(:authenticate!)
      catch(:warden) { subject }
    end
    it 'lets the throw bubble up to warden' do
      catch(:warden) do
        subject
        fail 'no warden thrown'
      end
    end
  end

end
